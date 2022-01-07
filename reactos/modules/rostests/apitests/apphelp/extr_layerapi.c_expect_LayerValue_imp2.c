
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int expect_LayerValue_imp (int ,char const*,char const*) ;

__attribute__((used)) static void expect_LayerValue_imp2(BOOL bMachine, const char* valueName, const char* value, int use_alt, const char* alt_value)
{
    expect_LayerValue_imp(bMachine, valueName, use_alt ? alt_value : value);
}
