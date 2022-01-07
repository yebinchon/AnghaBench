
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef int gsize ;
typedef int SeafCommit ;


 int * commit_to_json_object (int *) ;
 int free (char*) ;
 char* g_strdup (char*) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int strlen (char*) ;

char *
seaf_commit_to_data (SeafCommit *commit, gsize *len)
{
    json_t *object;
    char *json_data;
    char *ret;

    object = commit_to_json_object (commit);

    json_data = json_dumps (object, 0);
    *len = strlen (json_data);
    json_decref (object);

    ret = g_strdup (json_data);
    free (json_data);
    return ret;
}
