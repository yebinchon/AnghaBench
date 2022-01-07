
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_data {int cpu_set; } ;
typedef int JsonVariant ;
typedef int JsonDispatchFlags ;
typedef int CPUSet ;


 int assert (struct cpu_data*) ;
 int assert_se (char const*) ;
 int cpu_set_reset (int *) ;
 int json_log (int *,int ,int,char*,char const*) ;
 char* json_variant_string (int *) ;
 int parse_cpu_set (char const*,int *) ;

__attribute__((used)) static int oci_cgroup_cpu_cpus(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        struct cpu_data *data = userdata;
        CPUSet set;
        const char *n;
        int r;

        assert(data);

        assert_se(n = json_variant_string(v));

        r = parse_cpu_set(n, &set);
        if (r < 0)
                return json_log(v, flags, r, "Failed to parse CPU set specification: %s", n);

        cpu_set_reset(&data->cpu_set);
        data->cpu_set = set;

        return 0;
}
