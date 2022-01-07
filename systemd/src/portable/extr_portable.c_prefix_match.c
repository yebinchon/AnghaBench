
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_SET (char const,char,char,char,int ) ;
 char* startswith (char const*,char const*) ;

__attribute__((used)) static bool prefix_match(const char *unit, const char *prefix) {
        const char *p;

        p = startswith(unit, prefix);
        if (!p)
                return 0;


        return IN_SET(*p, '-', '.', '@', 0);
}
