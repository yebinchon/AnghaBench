
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sa_share_impl {int dummy; } ;
typedef TYPE_1__* sa_share_impl_t ;
typedef int sa_share_fsinfo_t ;
struct TYPE_5__ {struct TYPE_5__* sharepath; int * fsinfo; } ;


 void* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int fstypes_count ;
 TYPE_1__* strdup (char const*) ;

__attribute__((used)) static sa_share_impl_t
alloc_share(const char *sharepath)
{
 sa_share_impl_t impl_share;

 impl_share = calloc(1, sizeof (struct sa_share_impl));

 if (impl_share == ((void*)0))
  return (((void*)0));

 impl_share->sharepath = strdup(sharepath);

 if (impl_share->sharepath == ((void*)0)) {
  free(impl_share);
  return (((void*)0));
 }

 impl_share->fsinfo = calloc(fstypes_count, sizeof (sa_share_fsinfo_t));

 if (impl_share->fsinfo == ((void*)0)) {
  free(impl_share->sharepath);
  free(impl_share);
  return (((void*)0));
 }

 return (impl_share);
}
