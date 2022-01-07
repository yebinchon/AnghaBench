
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job_info {int name; } ;


 int FNM_NOESCAPE ;
 int strv_fnmatch_or_empty (char**,int ,int ) ;

__attribute__((used)) static bool output_show_job(struct job_info *job, char **patterns) {
        return strv_fnmatch_or_empty(patterns, job->name, FNM_NOESCAPE);
}
