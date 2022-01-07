
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ len; int str; } ;
typedef TYPE_2__ substr_t ;
struct TYPE_6__ {scalar_t__ len; int str; } ;
struct TYPE_8__ {TYPE_1__ path; } ;
typedef TYPE_3__ cookie_container_t ;
typedef int BOOL ;


 int strncmpiW (int ,int ,scalar_t__) ;

__attribute__((used)) static BOOL cookie_match_path(cookie_container_t *container, substr_t path)
{
    return path.len >= container->path.len && !strncmpiW(container->path.str, path.str, container->path.len);
}
