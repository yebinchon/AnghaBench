
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_answer {int b_dismiss; char const* psz_username; int i_action; } ;



__attribute__((used)) static inline void
set_answer(struct cb_answer *p_ans, bool b_dismiss, const char *psz_username,
           int i_action)
{
    if (p_ans != ((void*)0))
    {
        p_ans->b_dismiss = b_dismiss;
        p_ans->psz_username = psz_username;
        p_ans->i_action = i_action;
    }
}
