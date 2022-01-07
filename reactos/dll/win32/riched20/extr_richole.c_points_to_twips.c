
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLOAT ;



__attribute__((used)) static inline FLOAT points_to_twips(FLOAT value)
{
    return value * 1440 / 72.0;
}
