
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef scalar_t__ VCCompareResult ;


 scalar_t__ VC_FAST_FORWARD ;
 scalar_t__ vc_compare_commits (char const*,int,char const*,char const*) ;

gboolean
is_fast_forward (const char *repo_id, int version,
                 const char *src_head, const char *dst_head)
{
    VCCompareResult res;

    res = vc_compare_commits (repo_id, version, src_head, dst_head);

    return (res == VC_FAST_FORWARD);
}
