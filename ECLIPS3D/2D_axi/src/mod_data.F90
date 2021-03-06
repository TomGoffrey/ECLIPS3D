MODULE mod_data

  IMPLICIT NONE

  !Parameters
  DOUBLE PRECISION,PUBLIC, PARAMETER :: pi=3.141592654 ! Well ... pi
  ! Resolution  
  INTEGER, PUBLIC :: nlat
  INTEGER, PUBLIC :: nz
  INTEGER, PUBLIC :: ntot
  INTEGER, PUBLIC :: nb
  ! data folder
  CHARACTER(LEN=100), PUBLIC :: DIRDATA
  
  !Planet inputs
  LOGICAL, PUBLIC :: deep ! true if deep atmosphere
  LOGICAL, PUBLIC :: g_var ! True if g varies in atmosphere
  LOGICAL, PUBLIC :: eq_sym ! True if symmetric about equator
  CHARACTER(LEN=7), PUBLIC :: trad_type  
  CHARACTER(LEN=7), PUBLIC :: tdrag_type  


  INTEGER, PUBLIC :: m ! zonal wavenumber
  DOUBLE PRECISION, PUBLIC :: ymax ! Maximum latitude
  DOUBLE PRECISION, PUBLIC :: height_min ! Minimium height
  DOUBLE PRECISION, PUBLIC :: height_max ! Max height
  DOUBLE PRECISION, PUBLIC :: g  !Gravity acceleration 
  DOUBLE PRECISION, PUBLIC :: omega !Rotation rate 
  DOUBLE PRECISION, PUBLIC :: gascons ! gas constant
  DOUBLE PRECISION, PUBLIC :: cp !specific heat capacity of air
  DOUBLE PRECISION, PUBLIC :: kappa ! gascons/cp
  DOUBLE PRECISION, PUBLIC :: rtot! planet radius
  DOUBLE PRECISION, PUBLIC :: p0 ! Reference pressure

  ! Drag and radiative timescales
  DOUBLE PRECISION, PUBLIC :: trad_invert
  DOUBLE PRECISION, PUBLIC :: tdrag_invert


  NAMELIST /resolution/ nlat,nz,nb
  NAMELIST /folder/ DIRDATA
  NAMELIST /planet/ deep,g_var,eq_sym,trad_type,tdrag_type,m,ymax,height_min,height_max,&
                    g, omega, gascons, cp, rtot, p0
  NAMELIST /timescales/ trad_invert, tdrag_invert

END MODULE
