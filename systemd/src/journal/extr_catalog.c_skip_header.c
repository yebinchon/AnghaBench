
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ next_header (char const**) ;

__attribute__((used)) static const char *skip_header(const char *s) {
        while (next_header(&s))
                ;
        return s;
}
