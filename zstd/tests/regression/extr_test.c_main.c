
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ are_names_bad () ;
 int data_finish () ;
 int data_init (int ) ;
 int diff_results (int ,scalar_t__) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int ,char*,...) ;
 int g_cache ;
 scalar_t__ g_diff ;
 int g_output ;
 int g_zstdcli ;
 int method_set_zstdcli (int ) ;
 int parse_args (int,char**) ;
 int run_all (int *) ;
 int stderr ;
 char* strerror (int) ;

int main(int argc, char** argv) {

    int ret = parse_args(argc, argv);
    if (ret != 0)
        return ret;

    if (are_names_bad())
        return 1;


    method_set_zstdcli(g_zstdcli);
    ret = data_init(g_cache);
    if (ret != 0) {
        fprintf(stderr, "data_init() failed with error=%s\n", strerror(ret));
        return 1;
    }


    ret = 1;
    FILE* results = fopen(g_output, "w");
    if (results == ((void*)0)) {
        fprintf(stderr, "Failed to open the output file\n");
        goto out;
    }
    ret = run_all(results);
    fclose(results);

    if (ret != 0)
        goto out;

    if (g_diff)

        ret = diff_results(g_output, g_diff);

out:
    data_finish();
    return ret;
}
