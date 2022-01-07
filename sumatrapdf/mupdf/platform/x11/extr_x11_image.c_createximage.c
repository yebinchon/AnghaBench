
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ shmid; char* shmaddr; int readOnly; } ;
typedef TYPE_1__ XShmSegmentInfo ;
struct TYPE_12__ {int bytes_per_line; int height; char* data; } ;
typedef TYPE_2__ XImage ;
typedef int Visual ;
struct TYPE_13__ {scalar_t__ useshm; } ;
typedef int Status ;
typedef int Display ;


 int False ;
 int IPC_CREAT ;
 int IPC_PRIVATE ;
 int IPC_RMID ;
 TYPE_2__* XCreateImage (int *,int *,int,int ,int ,int *,int,int,int,int ) ;
 int XDestroyImage (TYPE_2__*) ;
 int XShmAttach (int *,TYPE_1__*) ;
 TYPE_2__* XShmCreateImage (int *,int *,int,int ,int *,TYPE_1__*,int,int) ;
 int XShmQueryExtension (int *) ;
 int XSync (int *,int ) ;
 int ZPixmap ;
 int abort () ;
 int fprintf (int ,char*) ;
 TYPE_3__ info ;
 char* malloc (int) ;
 char* shmat (scalar_t__,int *,int ) ;
 int shmctl (scalar_t__,int ,int *) ;
 int shmdt (char*) ;
 scalar_t__ shmget (int ,int,int) ;
 int stderr ;

__attribute__((used)) static XImage *
createximage(Display *dpy, Visual *vis, XShmSegmentInfo *xsi, int depth, int w, int h)
{
 XImage *img;
 Status status;

 if (!XShmQueryExtension(dpy))
  goto fallback;
 if (!info.useshm)
  goto fallback;

 img = XShmCreateImage(dpy, vis, depth, ZPixmap, ((void*)0), xsi, w, h);
 if (!img)
 {
  fprintf(stderr, "warn: could not XShmCreateImage\n");
  goto fallback;
 }

 xsi->shmid = shmget(IPC_PRIVATE,
  img->bytes_per_line * img->height,
  IPC_CREAT | 0777);
 if (xsi->shmid < 0)
 {
  XDestroyImage(img);
  fprintf(stderr, "warn: could not shmget\n");
  goto fallback;
 }

 img->data = xsi->shmaddr = shmat(xsi->shmid, ((void*)0), 0);
 if (img->data == (char*)-1)
 {
  XDestroyImage(img);
  fprintf(stderr, "warn: could not shmat\n");
  goto fallback;
 }

 xsi->readOnly = False;
 status = XShmAttach(dpy, xsi);
 if (!status)
 {
  shmdt(xsi->shmaddr);
  XDestroyImage(img);
  fprintf(stderr, "warn: could not XShmAttach\n");
  goto fallback;
 }

 XSync(dpy, False);

 shmctl(xsi->shmid, IPC_RMID, ((void*)0));

 return img;

fallback:
 info.useshm = 0;

 img = XCreateImage(dpy, vis, depth, ZPixmap, 0, ((void*)0), w, h, 32, 0);
 if (!img)
 {
  fprintf(stderr, "fail: could not XCreateImage");
  abort();
 }

 img->data = malloc(h * img->bytes_per_line);
 if (!img->data)
 {
  fprintf(stderr, "fail: could not malloc");
  abort();
 }

 return img;
}
