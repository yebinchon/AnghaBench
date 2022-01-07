
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int MCIERR_OUT_OF_MEMORY ;
 int MCIERR_SEQ_PORT_INUSE ;
 int MCIERR_SEQ_PORT_MAPNODEVICE ;
 int MCIERR_SEQ_PORT_NONEXISTENT ;





__attribute__((used)) static DWORD mmr2mci(DWORD ret)
{
    switch (ret) {
    case 130:
 return MCIERR_SEQ_PORT_INUSE;
    case 128:
 return MCIERR_OUT_OF_MEMORY;
    case 129:
      return MCIERR_SEQ_PORT_NONEXISTENT;
    case 131:
 return MCIERR_SEQ_PORT_MAPNODEVICE;
    default:
 return ret;
    }
}
