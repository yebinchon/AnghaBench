
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int funcid; } ;
typedef TYPE_1__ FuncExpr ;


 int GAPFILL_INTERPOLATE_FUNCTION ;
 int GAPFILL_LOCF_FUNCTION ;
 int NAMEDATALEN ;
 char* get_func_name (int ) ;
 scalar_t__ strncmp (char*,int ,int ) ;

__attribute__((used)) static inline bool
is_marker_function_call(FuncExpr *call)
{
 char *func_name = get_func_name(call->funcid);
 return strncmp(func_name, GAPFILL_LOCF_FUNCTION, NAMEDATALEN) == 0 ||
     strncmp(func_name, GAPFILL_INTERPOLATE_FUNCTION, NAMEDATALEN) == 0;
}
