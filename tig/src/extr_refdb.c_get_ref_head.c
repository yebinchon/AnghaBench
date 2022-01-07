
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int dummy; } ;


 struct ref const* refs_head ;

const struct ref *
get_ref_head()
{
 return refs_head;
}
