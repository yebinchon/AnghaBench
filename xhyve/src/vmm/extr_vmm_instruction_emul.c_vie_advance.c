
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vie {int num_processed; } ;



__attribute__((used)) static void
vie_advance(struct vie *vie)
{

 vie->num_processed++;
}
