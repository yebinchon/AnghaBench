; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_winopen.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_main.c_winopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i8*, i8*, i8*, i8* }

@xdpy = common dso_local global i32 0, align 4
@gapp = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cannot open display\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"CLIPBOARD\00", align 1
@False = common dso_local global i32 0, align 4
@XA_CLIPBOARD = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"TARGETS\00", align 1
@XA_TARGETS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"TIMESTAMP\00", align 1
@XA_TIMESTAMP = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"UTF8_STRING\00", align 1
@XA_UTF8_STRING = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"WM_DELETE_WINDOW\00", align 1
@WM_DELETE_WINDOW = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"_NET_WM_NAME\00", align 1
@NET_WM_NAME = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"_NET_WM_STATE\00", align 1
@NET_WM_STATE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"_NET_WM_STATE_FULLSCREEN\00", align 1
@NET_WM_STATE_FULLSCREEN = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"_WM_RELOAD_PAGE\00", align 1
@WM_RELOAD_PAGE = common dso_local global i8* null, align 8
@xscr = common dso_local global i32 0, align 4
@XC_left_ptr = common dso_local global i32 0, align 4
@xcarrow = common dso_local global i8* null, align 8
@XC_hand2 = common dso_local global i32 0, align 4
@xchand = common dso_local global i8* null, align 8
@XC_watch = common dso_local global i32 0, align 4
@xcwait = common dso_local global i8* null, align 8
@XC_xterm = common dso_local global i32 0, align 4
@xccaret = common dso_local global i8* null, align 8
@xbgcolor = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@InputOutput = common dso_local global i32 0, align 4
@xwin = common dso_local global i64 0, align 8
@None = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"cannot create window\00", align 1
@StructureNotifyMask = common dso_local global i32 0, align 4
@ExposureMask = common dso_local global i32 0, align 4
@KeyPressMask = common dso_local global i32 0, align 4
@PointerMotionMask = common dso_local global i32 0, align 4
@ButtonPressMask = common dso_local global i32 0, align 4
@ButtonReleaseMask = common dso_local global i32 0, align 4
@mapped = common dso_local global i64 0, align 8
@xgc = common dso_local global i32 0, align 4
@IconPixmapHint = common dso_local global i32 0, align 4
@IconMaskHint = common dso_local global i32 0, align 4
@mupdf_icon_bitmap_16_bits = common dso_local global i64 0, align 8
@mupdf_icon_bitmap_16_width = common dso_local global i32 0, align 4
@mupdf_icon_bitmap_16_height = common dso_local global i32 0, align 4
@xicon = common dso_local global i8* null, align 8
@mupdf_icon_bitmap_16_mask_bits = common dso_local global i64 0, align 8
@mupdf_icon_bitmap_16_mask_width = common dso_local global i32 0, align 4
@mupdf_icon_bitmap_16_mask_height = common dso_local global i32 0, align 4
@xmask = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"mupdf\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"MuPDF\00", align 1
@x11fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @winopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @winopen() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = call i32 @XOpenDisplay(i32* null)
  store i32 %3, i32* @xdpy, align 4
  %4 = load i32, i32* @xdpy, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gapp, i32 0, i32 0), align 4
  %8 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %9 = call i32 @fz_throw(i32 %7, i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @xdpy, align 4
  %12 = load i32, i32* @False, align 4
  %13 = call i8* @XInternAtom(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  store i8* %13, i8** @XA_CLIPBOARD, align 8
  %14 = load i32, i32* @xdpy, align 4
  %15 = load i32, i32* @False, align 4
  %16 = call i8* @XInternAtom(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  store i8* %16, i8** @XA_TARGETS, align 8
  %17 = load i32, i32* @xdpy, align 4
  %18 = load i32, i32* @False, align 4
  %19 = call i8* @XInternAtom(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  store i8* %19, i8** @XA_TIMESTAMP, align 8
  %20 = load i32, i32* @xdpy, align 4
  %21 = load i32, i32* @False, align 4
  %22 = call i8* @XInternAtom(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  store i8* %22, i8** @XA_UTF8_STRING, align 8
  %23 = load i32, i32* @xdpy, align 4
  %24 = load i32, i32* @False, align 4
  %25 = call i8* @XInternAtom(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %24)
  store i8* %25, i8** @WM_DELETE_WINDOW, align 8
  %26 = load i32, i32* @xdpy, align 4
  %27 = load i32, i32* @False, align 4
  %28 = call i8* @XInternAtom(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %27)
  store i8* %28, i8** @NET_WM_NAME, align 8
  %29 = load i32, i32* @xdpy, align 4
  %30 = load i32, i32* @False, align 4
  %31 = call i8* @XInternAtom(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %30)
  store i8* %31, i8** @NET_WM_STATE, align 8
  %32 = load i32, i32* @xdpy, align 4
  %33 = load i32, i32* @False, align 4
  %34 = call i8* @XInternAtom(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %33)
  store i8* %34, i8** @NET_WM_STATE_FULLSCREEN, align 8
  %35 = load i32, i32* @xdpy, align 4
  %36 = load i32, i32* @False, align 4
  %37 = call i8* @XInternAtom(i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %36)
  store i8* %37, i8** @WM_RELOAD_PAGE, align 8
  %38 = load i32, i32* @xdpy, align 4
  %39 = call i32 @DefaultScreen(i32 %38)
  store i32 %39, i32* @xscr, align 4
  %40 = load i32, i32* @xdpy, align 4
  %41 = load i32, i32* @xscr, align 4
  %42 = load i32, i32* @xdpy, align 4
  %43 = load i32, i32* @xscr, align 4
  %44 = call i32 @DefaultVisual(i32 %42, i32 %43)
  %45 = call i32 @ximage_init(i32 %40, i32 %41, i32 %44)
  %46 = load i32, i32* @xdpy, align 4
  %47 = load i32, i32* @XC_left_ptr, align 4
  %48 = call i8* @XCreateFontCursor(i32 %46, i32 %47)
  store i8* %48, i8** @xcarrow, align 8
  %49 = load i32, i32* @xdpy, align 4
  %50 = load i32, i32* @XC_hand2, align 4
  %51 = call i8* @XCreateFontCursor(i32 %49, i32 %50)
  store i8* %51, i8** @xchand, align 8
  %52 = load i32, i32* @xdpy, align 4
  %53 = load i32, i32* @XC_watch, align 4
  %54 = call i8* @XCreateFontCursor(i32 %52, i32 %53)
  store i8* %54, i8** @xcwait, align 8
  %55 = load i32, i32* @xdpy, align 4
  %56 = load i32, i32* @XC_xterm, align 4
  %57 = call i8* @XCreateFontCursor(i32 %55, i32 %56)
  store i8* %57, i8** @xccaret, align 8
  store i32 28672, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xbgcolor, i32 0, i32 0), align 4
  store i32 28672, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xbgcolor, i32 0, i32 1), align 4
  store i32 28672, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xbgcolor, i32 0, i32 2), align 4
  %58 = load i32, i32* @xdpy, align 4
  %59 = load i32, i32* @xdpy, align 4
  %60 = load i32, i32* @xscr, align 4
  %61 = call i32 @DefaultColormap(i32 %59, i32 %60)
  %62 = call i32 @XAllocColor(i32 %58, i32 %61, %struct.TYPE_12__* @xbgcolor)
  %63 = load i32, i32* @xdpy, align 4
  %64 = load i32, i32* @xdpy, align 4
  %65 = call i32 @DefaultRootWindow(i32 %64)
  %66 = call i32 (...) @ximage_get_depth()
  %67 = load i32, i32* @InputOutput, align 4
  %68 = call i32 (...) @ximage_get_visual()
  %69 = call i64 @XCreateWindow(i32 %63, i32 %65, i32 10, i32 10, i32 200, i32 100, i32 0, i32 %66, i32 %67, i32 %68, i32 0, i32* null)
  store i64 %69, i64* @xwin, align 8
  %70 = load i64, i64* @xwin, align 8
  %71 = load i64, i64* @None, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %10
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gapp, i32 0, i32 0), align 4
  %75 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %76 = call i32 @fz_throw(i32 %74, i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %10
  %78 = load i32, i32* @xdpy, align 4
  %79 = load i64, i64* @xwin, align 8
  %80 = call i32 (...) @ximage_get_colormap()
  %81 = call i32 @XSetWindowColormap(i32 %78, i64 %79, i32 %80)
  %82 = load i32, i32* @xdpy, align 4
  %83 = load i64, i64* @xwin, align 8
  %84 = load i32, i32* @StructureNotifyMask, align 4
  %85 = load i32, i32* @ExposureMask, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @KeyPressMask, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @PointerMotionMask, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @ButtonPressMask, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @ButtonReleaseMask, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @XSelectInput(i32 %82, i64 %83, i32 %94)
  store i64 0, i64* @mapped, align 8
  %96 = load i32, i32* @xdpy, align 4
  %97 = load i64, i64* @xwin, align 8
  %98 = call i32 @XCreateGC(i32 %96, i64 %97, i32 0, i32* null)
  store i32 %98, i32* @xgc, align 4
  %99 = load i32, i32* @xdpy, align 4
  %100 = load i64, i64* @xwin, align 8
  %101 = load i8*, i8** @xcarrow, align 8
  %102 = call i32 @XDefineCursor(i32 %99, i64 %100, i8* %101)
  %103 = call %struct.TYPE_11__* (...) @XAllocWMHints()
  store %struct.TYPE_11__* %103, %struct.TYPE_11__** %1, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %105 = icmp ne %struct.TYPE_11__* %104, null
  br i1 %105, label %106, label %145

106:                                              ; preds = %77
  %107 = load i32, i32* @IconPixmapHint, align 4
  %108 = load i32, i32* @IconMaskHint, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @xdpy, align 4
  %113 = load i64, i64* @xwin, align 8
  %114 = load i64, i64* @mupdf_icon_bitmap_16_bits, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = load i32, i32* @mupdf_icon_bitmap_16_width, align 4
  %117 = load i32, i32* @mupdf_icon_bitmap_16_height, align 4
  %118 = call i8* @XCreateBitmapFromData(i32 %112, i64 %113, i8* %115, i32 %116, i32 %117)
  store i8* %118, i8** @xicon, align 8
  %119 = load i32, i32* @xdpy, align 4
  %120 = load i64, i64* @xwin, align 8
  %121 = load i64, i64* @mupdf_icon_bitmap_16_mask_bits, align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = load i32, i32* @mupdf_icon_bitmap_16_mask_width, align 4
  %124 = load i32, i32* @mupdf_icon_bitmap_16_mask_height, align 4
  %125 = call i8* @XCreateBitmapFromData(i32 %119, i64 %120, i8* %122, i32 %123, i32 %124)
  store i8* %125, i8** @xmask, align 8
  %126 = load i8*, i8** @xicon, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %142

128:                                              ; preds = %106
  %129 = load i8*, i8** @xmask, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load i8*, i8** @xicon, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** @xmask, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* @xdpy, align 4
  %139 = load i64, i64* @xwin, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %141 = call i32 @XSetWMHints(i32 %138, i64 %139, %struct.TYPE_11__* %140)
  br label %142

142:                                              ; preds = %131, %128, %106
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %144 = call i32 @XFree(%struct.TYPE_11__* %143)
  br label %145

145:                                              ; preds = %142, %77
  %146 = call %struct.TYPE_11__* (...) @XAllocClassHint()
  store %struct.TYPE_11__* %146, %struct.TYPE_11__** %2, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %148 = icmp ne %struct.TYPE_11__* %147, null
  br i1 %148, label %149, label %160

149:                                              ; preds = %145
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %151, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %153, align 8
  %154 = load i32, i32* @xdpy, align 4
  %155 = load i64, i64* @xwin, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %157 = call i32 @XSetClassHint(i32 %154, i64 %155, %struct.TYPE_11__* %156)
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %159 = call i32 @XFree(%struct.TYPE_11__* %158)
  br label %160

160:                                              ; preds = %149, %145
  %161 = load i32, i32* @xdpy, align 4
  %162 = load i64, i64* @xwin, align 8
  %163 = call i32 @XSetWMProtocols(i32 %161, i64 %162, i8** @WM_DELETE_WINDOW, i32 1)
  %164 = load i32, i32* @xdpy, align 4
  %165 = call i32 @ConnectionNumber(i32 %164)
  store i32 %165, i32* @x11fd, align 4
  ret void
}

declare dso_local i32 @XOpenDisplay(i32*) #1

declare dso_local i32 @fz_throw(i32, i32, i8*) #1

declare dso_local i8* @XInternAtom(i32, i8*, i32) #1

declare dso_local i32 @DefaultScreen(i32) #1

declare dso_local i32 @ximage_init(i32, i32, i32) #1

declare dso_local i32 @DefaultVisual(i32, i32) #1

declare dso_local i8* @XCreateFontCursor(i32, i32) #1

declare dso_local i32 @XAllocColor(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @DefaultColormap(i32, i32) #1

declare dso_local i64 @XCreateWindow(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DefaultRootWindow(i32) #1

declare dso_local i32 @ximage_get_depth(...) #1

declare dso_local i32 @ximage_get_visual(...) #1

declare dso_local i32 @XSetWindowColormap(i32, i64, i32) #1

declare dso_local i32 @ximage_get_colormap(...) #1

declare dso_local i32 @XSelectInput(i32, i64, i32) #1

declare dso_local i32 @XCreateGC(i32, i64, i32, i32*) #1

declare dso_local i32 @XDefineCursor(i32, i64, i8*) #1

declare dso_local %struct.TYPE_11__* @XAllocWMHints(...) #1

declare dso_local i8* @XCreateBitmapFromData(i32, i64, i8*, i32, i32) #1

declare dso_local i32 @XSetWMHints(i32, i64, %struct.TYPE_11__*) #1

declare dso_local i32 @XFree(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @XAllocClassHint(...) #1

declare dso_local i32 @XSetClassHint(i32, i64, %struct.TYPE_11__*) #1

declare dso_local i32 @XSetWMProtocols(i32, i64, i8**, i32) #1

declare dso_local i32 @ConnectionNumber(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
