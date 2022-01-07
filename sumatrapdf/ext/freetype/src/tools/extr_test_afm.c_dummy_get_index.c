
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ FT_Offset ;



int
  dummy_get_index( const char* name,
                   FT_Offset len,
                   void* user_data )
  {
    if ( len )
      return name[0];
    else
      return 0;
  }
