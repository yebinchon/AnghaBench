
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_error_rank ;






int
zio_worst_error(int e1, int e2)
{
 static int zio_error_rank[] = { 0, 128, 130, 129 };
 int r1, r2;

 for (r1 = 0; r1 < sizeof (zio_error_rank) / sizeof (int); r1++)
  if (e1 == zio_error_rank[r1])
   break;

 for (r2 = 0; r2 < sizeof (zio_error_rank) / sizeof (int); r2++)
  if (e2 == zio_error_rank[r2])
   break;

 return (r1 > r2 ? e1 : e2);
}
