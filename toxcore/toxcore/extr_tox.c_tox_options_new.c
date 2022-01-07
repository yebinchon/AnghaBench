
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Tox_Options {int dummy; } ;
typedef int TOX_ERR_OPTIONS_NEW ;


 int SET_ERROR_PARAMETER (int *,int ) ;
 int TOX_ERR_OPTIONS_NEW_MALLOC ;
 int TOX_ERR_OPTIONS_NEW_OK ;
 struct Tox_Options* calloc (int,int) ;
 int tox_options_default (struct Tox_Options*) ;

struct Tox_Options *tox_options_new(TOX_ERR_OPTIONS_NEW *error)
{
    struct Tox_Options *options = calloc(sizeof(struct Tox_Options), 1);

    if (options) {
        tox_options_default(options);
        SET_ERROR_PARAMETER(error, TOX_ERR_OPTIONS_NEW_OK);
        return options;
    }

    SET_ERROR_PARAMETER(error, TOX_ERR_OPTIONS_NEW_MALLOC);
    return ((void*)0);
}
