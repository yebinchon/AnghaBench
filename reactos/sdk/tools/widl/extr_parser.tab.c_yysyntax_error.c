
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t yytype_int16 ;
typedef scalar_t__ YYSIZE_T ;


 int YYCASE_ (int,int ) ;
 int YYEMPTY ;
 int YYLAST ;
 int YYNTOKENS ;
 scalar_t__ YYSTACK_ALLOC_MAXIMUM ;
 int YYTERROR ;
 int YY_ (char*) ;
 char* YY_NULL ;
 int* yycheck ;
 int* yypact ;
 int yypact_value_is_default (int) ;
 scalar_t__ yystrlen (char const*) ;
 int * yytable ;
 int yytable_value_is_error (int ) ;
 char const** yytname ;
 scalar_t__ yytnamerr (char*,char const*) ;

__attribute__((used)) static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULL, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };

  const char *yyformat = YY_NULL;

  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];


  int yycount = 0;
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {



          int yyxbegin = yyn < 0 ? -yyn : 0;

          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULL, yytname[yyx]);
                  if (! (yysize <= yysize1
                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
                    return 2;
                  yysize = yysize1;
                }
              }
        }
    }

  switch (yycount)
    {




      case 0: yyformat = YY_("syntax error"); break;
      case 1: yyformat = YY_("syntax error, unexpected %s"); break;
      case 2: yyformat = YY_("syntax error, unexpected %s, expecting %s"); break;
      case 3: yyformat = YY_("syntax error, unexpected %s, expecting %s or %s"); break;
      case 4: yyformat = YY_("syntax error, unexpected %s, expecting %s or %s or %s"); break;
      case 5: yyformat = YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"); break;

    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
      return 2;
    yysize = yysize1;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }




  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
