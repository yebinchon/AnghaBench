
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_tree {int flags; } ;


 int FORMAT_VERBOSE ;
 scalar_t__ log_get_level () ;

__attribute__((used)) static inline int
format_logging(struct format_tree *ft)
{
 return (log_get_level() != 0 || (ft->flags & FORMAT_VERBOSE));
}
