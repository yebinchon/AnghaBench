
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_address {int dummy; } ;


 int AF_UNSPEC ;
 int LOG_DEBUG ;
 int assert_se (int) ;
 int free (struct local_address*) ;
 int local_addresses (int *,int ,int ,struct local_address**) ;
 int local_gateways (int *,int ,int ,struct local_address**) ;
 struct local_address* mfree (struct local_address*) ;
 int print_local_addresses (struct local_address*,unsigned int) ;
 int printf (char*) ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        struct local_address *a;
        int n;

        test_setup_logging(LOG_DEBUG);

        a = ((void*)0);
        n = local_addresses(((void*)0), 0, AF_UNSPEC, &a);
        assert_se(n >= 0);

        printf("Local Addresses:\n");
        print_local_addresses(a, (unsigned) n);
        a = mfree(a);

        n = local_gateways(((void*)0), 0, AF_UNSPEC, &a);
        assert_se(n >= 0);

        printf("Local Gateways:\n");
        print_local_addresses(a, (unsigned) n);
        free(a);

        return 0;
}
