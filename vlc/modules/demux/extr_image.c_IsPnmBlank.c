
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static bool IsPnmBlank(uint8_t v)
{
    return v == ' ' || v == '\t' || v == '\r' || v == '\n';
}
