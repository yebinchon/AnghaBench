
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_string; int b_bool; int f_float; void* i_int; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;






 int config_GetType (char*) ;
 int config_IsSafe (char*) ;
 int free (char*) ;
 int memmove (char*,char*,scalar_t__) ;
 int msg_Err (int *,char*,char*) ;
 int strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char*) ;
 int strncmp (char*,char*,int) ;
 void* strtoll (char*,char**,int ) ;
 int us_atof (char*) ;
 int var_Create (int *,char*,int) ;
 int var_Set (int *,char*,TYPE_1__) ;

void var_OptionParse( vlc_object_t *p_obj, const char *psz_option,
                      bool trusted )
{
    char *psz_name, *psz_value;
    int i_type;
    bool b_isno = 0;
    vlc_value_t val;

    val.psz_string = ((void*)0);



    if( psz_option[0] == ':' )
        psz_option++;

    if( !psz_option[0] )
        return;

    psz_name = strdup( psz_option );
    if( psz_name == ((void*)0) )
        return;

    psz_value = strchr( psz_name, '=' );
    if( psz_value != ((void*)0) )
        *psz_value++ = '\0';

    i_type = config_GetType( psz_name );
    if( !i_type && !psz_value )
    {

        if( !strncmp( psz_name, "no-", 3 ) )
        {
            memmove( psz_name, psz_name + 3, strlen(psz_name) + 1 - 3 );
        }
        else if( !strncmp( psz_name, "no", 2 ) )
        {
            memmove( psz_name, psz_name + 2, strlen(psz_name) + 1 - 2 );
        }
        else goto cleanup;

        b_isno = 1;
        i_type = config_GetType( psz_name );
    }
    if( !i_type ) goto cleanup;

    if( ( i_type != 131 ) &&
        ( !psz_value || !*psz_value ) ) goto cleanup;


    if( !trusted && !config_IsSafe( psz_name ) )
    {
        msg_Err( p_obj, "unsafe option \"%s\" has been ignored for "
                        "security reasons", psz_name );
        free( psz_name );
        return;
    }




    var_Create( p_obj, psz_name, i_type );

    switch( i_type )
    {
    case 131:
        if( psz_value )
        {
            char *endptr;
            long long int value = strtoll( psz_value, &endptr, 0 );
            if( endptr == psz_value )
                val.b_bool = strcasecmp( psz_value, "true" ) == 0
                          || strcasecmp( psz_value, "yes" ) == 0;
            else
                val.b_bool = value != 0;
        }
        else
            val.b_bool = !b_isno;
        break;

    case 129:
        val.i_int = strtoll( psz_value, ((void*)0), 0 );
        break;

    case 130:
        val.f_float = us_atof( psz_value );
        break;

    case 128:
        val.psz_string = psz_value;
        break;

    default:
        goto cleanup;
    }

    var_Set( p_obj, psz_name, val );

cleanup:
    free( psz_name );
}
