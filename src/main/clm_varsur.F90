module clm_instur

  !-----------------------------------------------------------------------
  ! Module containing 2-d surface boundary data information
  ! surface boundary data, these are all "gdc" local 
  ! Note that some of these need to be pointers (as opposed to just allocatable arrays) to
  ! match the ncd_io interface; for consistency, we make them all pointers
  !
  ! !USES:
  use shr_kind_mod, only : r8 => shr_kind_r8
  !
  ! !PUBLIC TYPES:
  implicit none
  save
  !
  ! weight of each landunit on the grid cell
  real(r8), pointer :: wt_lunit(:,:)     

  ! whether we have valid urban data in each grid cell
  logical , pointer :: urban_valid(:)

  ! for natural veg landunit, weight of each patch on the landunit (adds to 1.0 on the
  ! landunit for all grid cells, even those without any natural pft)
  ! (second dimension goes natpft_lb:natpft_ub)
  real(r8), pointer :: wt_nat_patch(:,:)   

  ! for crop landunit, weight of each cft on the landunit (adds to 1.0 on the
  ! landunit for all all grid cells, even  those without any crop)
  ! (second dimension goes cft_lb:cft_ub)
  real(r8), pointer :: wt_cft(:,:)       

  ! for each cft on the crop landunit prescribe annual fertilizer
  ! landunit for all all grid cells, even  those without any crop)
  ! (second dimension goes cft_lb:cft_ub)
  real(r8), pointer :: fert_cft(:,:)       

  ! for each cft on the crop landunit, specify irrigation application
  ! method (even non-irrigated)
  ! (second dimension goes cft_lb:cft_ub)
  integer,  pointer :: irrig_method(:,:)       

  ! for glc_mec landunits, weight of glacier in each elevation class (adds to 1.0 on the
  ! landunit for all grid cells, even those without any glacier)
  real(r8), pointer :: wt_glc_mec(:,:)   

  ! subgrid glacier_mec sfc elevation
  real(r8), pointer :: topo_glc_mec(:,:) 

  ! whether we have lake to initialise in each grid cell
  real(r8), pointer :: pct_lake_max(:)

  ! whether we have urban to initialize in each grid cell
  ! (second dimension goes 1:numurbl)
  real(r8), pointer :: pct_urban_max(:,:)

  ! subgrid hillslope hydrology constituents
  integer, pointer :: ncolumns_hillslope(:)
  
  !-----------------------------------------------------------------------

end module clm_instur
