
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ps2kbd_softc {int dummy; } ;


 int fifo_put (struct ps2kbd_softc*,int const) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static void
ps2kbd_keysym_queue(struct ps2kbd_softc *sc,
    int down, uint32_t keysym)
{

 const uint8_t translation[128] = {
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x29, 0x16, 0x52, 0x26, 0x25, 0x2e, 0x3d, 0x52,
  0x46, 0x45, 0x3e, 0x55, 0x41, 0x4e, 0x49, 0x4a,
  0x45, 0x16, 0x1e, 0x26, 0x25, 0x2e, 0x36, 0x3d,
  0x3e, 0x46, 0x4c, 0x4c, 0x41, 0x55, 0x49, 0x4a,
  0x1e, 0x1c, 0x32, 0x21, 0x23, 0x24, 0x2b, 0x34,
  0x33, 0x43, 0x3b, 0x42, 0x4b, 0x3a, 0x31, 0x44,
  0x4d, 0x15, 0x2d, 0x1b, 0x2c, 0x3c, 0x2a, 0x1d,
  0x22, 0x35, 0x1a, 0x54, 0x5d, 0x5b, 0x36, 0x4e,
  0x0e, 0x1c, 0x32, 0x21, 0x23, 0x24, 0x2b, 0x34,
  0x33, 0x43, 0x3b, 0x42, 0x4b, 0x3a, 0x31, 0x44,
  0x4d, 0x15, 0x2d, 0x1b, 0x2c, 0x3c, 0x2a, 0x1d,
  0x22, 0x35, 0x1a, 0x54, 0x5d, 0x5b, 0x0e, 0x00,
 };

    if (keysym <= 0x7f) {
        if (!down)
            fifo_put(sc, 0xf0);
        fifo_put(sc, translation[keysym]);
    } else {
        switch (keysym) {
        case 0xff08:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x66);
            break;
        case 0xff09:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x0d);
            break;
        case 0xff0d:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x5a);
            break;
        case 0xff1b:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x76);
            break;
        case 0xff50:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x6c);
            break;
        case 0xff51:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x6b);
            break;
        case 0xff52:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x75);
            break;
        case 0xff53:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x74);
            break;
        case 0xff54:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x72);
            break;
        case 0xff55:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x7d);
            break;
        case 0xff56:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x7a);
            break;
        case 0xff57:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x69);
            break;
        case 0xff63:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x70);
            break;
        case 0xff8d:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x5a);
            break;
        case 0xffe1:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x12);
            break;
        case 0xffe2:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x59);
            break;
        case 0xffe3:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x14);
            break;
        case 0xffe4:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x14);
            break;
        case 0xffe7:

            break;
        case 0xffe8:

            break;
        case 0xffe9:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x11);
            break;
        case 0xfe03:
        case 0xffea:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x11);
            break;
        case 0xffeb:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x1f);
            break;
        case 0xffec:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x27);
            break;
        case 0xffbe:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x05);
            break;
        case 0xffbf:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x06);
            break;
        case 0xffc0:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x04);
            break;
        case 0xffc1:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x0C);
            break;
        case 0xffc2:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x03);
            break;
        case 0xffc3:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x0B);
            break;
        case 0xffc4:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x83);
            break;
        case 0xffc5:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x0A);
            break;
        case 0xffc6:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x01);
            break;
        case 0xffc7:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x09);
            break;
        case 0xffc8:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x78);
            break;
        case 0xffc9:
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x07);
            break;
        case 0xffff:
            fifo_put(sc, 0xe0);
            if (!down)
                fifo_put(sc, 0xf0);
            fifo_put(sc, 0x71);
            break;
        default:
            fprintf(stderr, "Unhandled ps2 keyboard keysym 0x%x\n",
                 keysym);
            break;
        }
    }
}
