
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_array_t ;
struct TYPE_3__ {char* payload; char* extra; char const** results; scalar_t__ success; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 size_t MAX_RESULT ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int free (char*) ;
 int mrl_EscapeFragmentIdentifier (char**,char*) ;
 int mrl_FragmentSplit (int *,char const**,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,scalar_t__) ;
 TYPE_1__* testcase ;
 int vlc_array_clear (int *) ;
 size_t vlc_array_count (int *) ;
 char* vlc_array_item_at_index (int *,size_t) ;

int main (void)
{
    for (size_t i = 0; i < ARRAY_SIZE(testcase); ++i)
    {
        vlc_array_t out;
        const char *extra = ((void*)0);
        int ret = mrl_FragmentSplit(&out, &extra, testcase[i].payload);
        if (testcase[i].success)
        {
            assert(ret == VLC_SUCCESS);
            if (extra != ((void*)0))
                assert(strcmp(extra, testcase[i].extra) == 0);
            else
                assert(testcase[i].extra == ((void*)0));

            const char *p = testcase[i].payload + 2;
            for (size_t j = 0; testcase[i].results[j] != ((void*)0); ++j)
            {
                assert(j < vlc_array_count(&out) && j < MAX_RESULT);
                char *res = vlc_array_item_at_index(&out, j);

                assert(strcmp(testcase[i].results[j], res) == 0);

                char *res_escaped = ((void*)0);
                ret = mrl_EscapeFragmentIdentifier(&res_escaped, res);
                assert(ret == VLC_SUCCESS && res_escaped != ((void*)0));
                assert(strncmp(p, res_escaped, strlen(res_escaped)) == 0);
                p += strlen(res_escaped) + 2;

                free(res_escaped);
                free(res);
            }
            vlc_array_clear(&out);
        }
        else
        {
            assert(ret != VLC_SUCCESS);
        }
    }
    return 0;
}
