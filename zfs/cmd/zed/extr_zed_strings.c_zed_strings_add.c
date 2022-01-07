
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tree; } ;
typedef TYPE_1__ zed_strings_t ;
typedef int zed_strings_node_t ;


 int EINVAL ;
 int * _zed_strings_node_create (char const*,char const*) ;
 int _zed_strings_node_destroy (int *) ;
 int avl_add (int *,int *) ;
 int * avl_find (int *,int *,int *) ;
 int avl_remove (int *,int *) ;
 int errno ;

int
zed_strings_add(zed_strings_t *zsp, const char *key, const char *s)
{
 zed_strings_node_t *newp, *oldp;

 if (!zsp || !s) {
  errno = EINVAL;
  return (-1);
 }
 if (key == s)
  key = ((void*)0);

 newp = _zed_strings_node_create(key, s);
 if (!newp)
  return (-1);

 oldp = avl_find(&zsp->tree, newp, ((void*)0));
 if (oldp) {
  avl_remove(&zsp->tree, oldp);
  _zed_strings_node_destroy(oldp);
 }
 avl_add(&zsp->tree, newp);
 return (0);
}
