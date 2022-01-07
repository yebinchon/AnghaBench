
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonDispatchFlags ;


 int JSON_DEBUG ;
 int JSON_LOG ;
 int JSON_PERMISSIVE ;
 int JSON_WARNING ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_WARNING ;

__attribute__((used)) static inline int json_dispatch_level(JsonDispatchFlags flags) {




        if (!(flags & JSON_LOG) ||
            (flags & JSON_DEBUG))
                return LOG_DEBUG;



        if (flags & (JSON_PERMISSIVE|JSON_WARNING))
                return LOG_WARNING;


        return LOG_ERR;
}
