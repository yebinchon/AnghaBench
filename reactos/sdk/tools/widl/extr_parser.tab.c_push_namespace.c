
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namespace {int type_hash; int children; int entry; struct namespace* parent; int name; } ;


 struct namespace* current_namespace ;
 struct namespace* find_sub_namespace (struct namespace*,char const*) ;
 int list_add_tail (int *,int *) ;
 int list_init (int *) ;
 int memset (int ,int ,int) ;
 struct namespace* xmalloc (int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static void push_namespace(const char *name)
{
  struct namespace *namespace;

  namespace = find_sub_namespace(current_namespace, name);
  if(!namespace) {
    namespace = xmalloc(sizeof(*namespace));
    namespace->name = xstrdup(name);
    namespace->parent = current_namespace;
    list_add_tail(&current_namespace->children, &namespace->entry);
    list_init(&namespace->children);
    memset(namespace->type_hash, 0, sizeof(namespace->type_hash));
  }

  current_namespace = namespace;
}
