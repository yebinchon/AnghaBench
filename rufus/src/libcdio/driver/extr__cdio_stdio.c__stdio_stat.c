
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_2__ {int st_size; } ;
typedef TYPE_1__ _UserData ;



__attribute__((used)) static off_t
_stdio_stat(void *p_user_data)
{
  const _UserData *const ud = p_user_data;

  return ud->st_size;
}
