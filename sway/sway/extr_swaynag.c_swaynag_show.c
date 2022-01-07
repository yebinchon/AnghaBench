
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaynag_instance {int * fd; int * client; scalar_t__ detailed; } ;


 int close (int ) ;

void swaynag_show(struct swaynag_instance *swaynag) {
 if (swaynag->detailed && swaynag->client != ((void*)0)) {
  close(swaynag->fd[1]);
 }
}
