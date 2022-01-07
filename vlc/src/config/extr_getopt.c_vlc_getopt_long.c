
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* arg; int ind; int first_nonopt; int last_nonopt; char* nextchar; char opt; } ;
typedef TYPE_1__ vlc_getopt_t ;
struct vlc_option {char* name; char val; char* flag; scalar_t__ has_arg; } ;


 scalar_t__ NONOPTION_P ;
 int exchange (char**,TYPE_1__*) ;
 char* strchr (char const*,char) ;
 int strcmp (char* const,char*) ;
 unsigned int strlen (char*) ;
 int strncmp (char*,char*,int) ;

int vlc_getopt_long(int argc, char *const *argv,
                    const char *optstring,
                    const struct vlc_option *restrict longopts, int *longind,
                    vlc_getopt_t *restrict state)
{
    state->arg = ((void*)0);

    if (state->ind == 0)
    {




        state->first_nonopt = state->last_nonopt = state->ind = 1;
        state->nextchar = ((void*)0);
    }



    if (state->nextchar == ((void*)0) || *state->nextchar == '\0')
    {




        if (state->last_nonopt > state->ind)
            state->last_nonopt = state->ind;
        if (state->first_nonopt > state->ind)
            state->first_nonopt = state->ind;




        if (state->first_nonopt != state->last_nonopt
            && state->last_nonopt != state->ind)
            exchange((char **) argv, state);
        else if (state->last_nonopt != state->ind)
            state->first_nonopt = state->ind;




        while (state->ind < argc && (argv[state->ind][0] != '-' || argv[state->ind][1] == '\0'))
            state->ind++;
        state->last_nonopt = state->ind;






        if (state->ind != argc && !strcmp(argv[state->ind], "--"))
        {
            state->ind++;

            if (state->first_nonopt != state->last_nonopt
                && state->last_nonopt != state->ind)
                exchange((char **) argv, state);
            else if (state->first_nonopt == state->last_nonopt)
                state->first_nonopt = state->ind;
            state->last_nonopt = argc;

            state->ind = argc;
        }




        if (state->ind == argc)
        {


            if (state->first_nonopt != state->last_nonopt)
                state->ind = state->first_nonopt;
            return -1;
        }




        if ((argv[state->ind][0] != '-' || argv[state->ind][1] == '\0'))
        {
            state->arg = argv[state->ind++];
            return 1;
        }




        state->nextchar = (argv[state->ind] + 1
                        + (argv[state->ind][1] == '-'));
    }





    if (argv[state->ind][1] == '-')
    {
        char *nameend;
        const struct vlc_option *p;
        const struct vlc_option *pfound = ((void*)0);
        int exact = 0;
        int ambig = 0;
        int indfound = -1;
        int option_index;

        for (nameend = state->nextchar; *nameend && *nameend != '='; nameend++)
                               ;



        for (p = longopts, option_index = 0; p->name; p++, option_index++)
            if (!strncmp(p->name, state->nextchar, nameend - state->nextchar))
            {
                if ((unsigned int) (nameend - state->nextchar)
                    == (unsigned int) strlen(p->name))
                {

                    pfound = p;
                    indfound = option_index;
                    exact = 1;
                    break;
                }
                else if (pfound == ((void*)0))
                {

                    pfound = p;
                    indfound = option_index;
                }
                else

                    ambig = 1;
            }

        if (ambig && !exact)
        {
            state->nextchar += strlen(state->nextchar);
            state->ind++;
            state->opt = 0;
            return '?';
        }

        if (pfound != ((void*)0))
        {
            option_index = indfound;
            state->ind++;
            if (*nameend)
            {
                if (pfound->has_arg)
                    state->arg = nameend + 1;
                else
                {
                    state->nextchar += strlen(state->nextchar);

                    state->opt = pfound->val;
                    return '?';
                }
            }
            else if (pfound->has_arg)
            {
                if (state->ind < argc)
                    state->arg = argv[state->ind++];
                else
                {
                    state->nextchar += strlen(state->nextchar);
                    state->opt = pfound->val;
                    return optstring[0] == ':' ? ':' : '?';
                }
            }
            state->nextchar += strlen(state->nextchar);
            if (longind != ((void*)0))
                *longind = option_index;
            if (pfound->flag)
            {
                *(pfound->flag) = pfound->val;
                return 0;
            }
            return pfound->val;
        }

        state->nextchar = (char *) "";
        state->ind++;
        state->opt = 0;
        return '?';
    }



    {
        char c = *(state->nextchar)++;
        char *temp = strchr(optstring, c);


        if (*state->nextchar == '\0')
            ++state->ind;

        if (temp == ((void*)0) || c == ':')
        {
            state->opt = c;
            return '?';
        }

        if (temp[0] == 'W' && temp[1] == ';')
        {
            char *nameend;
            const struct vlc_option *p;
            const struct vlc_option *pfound = ((void*)0);
            int exact = 0;
            int ambig = 0;
            int indfound = 0;
            int option_index;


            if (*state->nextchar != '\0')
            {
                state->arg = state->nextchar;


                state->ind++;
            }
            else if (state->ind == argc)
            {
                state->opt = c;
                if (optstring[0] == ':')
                    c = ':';
                else
                    c = '?';
                return c;
            }
            else


                state->arg = argv[state->ind++];




            for (state->nextchar = nameend = state->arg; *nameend && *nameend != '='; nameend++)
                                   ;



            for (p = longopts, option_index = 0; p->name; p++, option_index++)
                if (!strncmp(p->name, state->nextchar, nameend - state->nextchar))
                {
                    if ((unsigned int) (nameend - state->nextchar)
                        == strlen(p->name))
                    {

                        pfound = p;
                        indfound = option_index;
                        exact = 1;
                        break;
                    }
                    else if (pfound == ((void*)0))
                    {

                        pfound = p;
                        indfound = option_index;
                    }
                    else

                        ambig = 1;
                }
            if (ambig && !exact)
            {
                state->nextchar += strlen(state->nextchar);
                state->ind++;
                return '?';
            }
            if (pfound != ((void*)0))
            {
                option_index = indfound;
                if (*nameend)
                {
                    if (pfound->has_arg)
                        state->arg = nameend + 1;
                    else
                    {
                        state->nextchar += strlen(state->nextchar);
                        return '?';
                    }
                }
                else if (pfound->has_arg)
                {
                    if (state->ind < argc)
                        state->arg = argv[state->ind++];
                    else
                    {
                        state->nextchar += strlen(state->nextchar);
                        return optstring[0] == ':' ? ':' : '?';
                    }
                }
                state->nextchar += strlen(state->nextchar);
                if (longind != ((void*)0))
                    *longind = option_index;
                if (pfound->flag)
                {
                    *(pfound->flag) = pfound->val;
                    return 0;
                }
                return pfound->val;
            }
            state->nextchar = ((void*)0);
            return 'W';
        }
        if (temp[1] == ':')
        {

            if (*state->nextchar != '\0')
            {
                state->arg = state->nextchar;


                state->ind++;
            }
            else if (state->ind == argc)
            {
                state->opt = c;
                if (optstring[0] == ':')
                    c = ':';
                else
                    c = '?';
            }
            else


                state->arg = argv[state->ind++];
            state->nextchar = ((void*)0);
        }
        return c;
    }
}
