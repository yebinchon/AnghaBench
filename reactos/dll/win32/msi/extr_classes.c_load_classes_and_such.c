
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int progids; int extensions; int mimes; int classes; } ;
typedef TYPE_1__ MSIPACKAGE ;


 scalar_t__ ERROR_SUCCESS ;
 int TRACE (char*) ;
 int list_empty (int *) ;
 scalar_t__ load_all_classes (TYPE_1__*) ;
 scalar_t__ load_all_extensions (TYPE_1__*) ;
 scalar_t__ load_all_mimes (TYPE_1__*) ;
 scalar_t__ load_all_progids (TYPE_1__*) ;
 scalar_t__ load_all_verbs (TYPE_1__*) ;

__attribute__((used)) static UINT load_classes_and_such( MSIPACKAGE *package )
{
    UINT r;

    TRACE("Loading all the class info and related tables\n");


    if (!list_empty( &package->classes ) ||
        !list_empty( &package->mimes ) ||
        !list_empty( &package->extensions ) ||
        !list_empty( &package->progids )) return ERROR_SUCCESS;

    r = load_all_classes( package );
    if (r != ERROR_SUCCESS) return r;

    r = load_all_extensions( package );
    if (r != ERROR_SUCCESS) return r;

    r = load_all_progids( package );
    if (r != ERROR_SUCCESS) return r;


    r = load_all_verbs( package );
    if (r != ERROR_SUCCESS) return r;

    return load_all_mimes( package );
}
