
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VALID_DEPLOYMENT_CHARS ;
 int assert (char const*) ;
 int in_charset (char const*,int ) ;

__attribute__((used)) static bool valid_deployment(const char *deployment) {
        assert(deployment);

        return in_charset(deployment, VALID_DEPLOYMENT_CHARS);
}
