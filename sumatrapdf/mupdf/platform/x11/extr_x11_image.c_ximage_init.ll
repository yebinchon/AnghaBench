; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_image.c_ximage_init.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_x11_image.c_ximage_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_11__, i32*, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i32 }

@info = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@VisualIDMask = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Visual not found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"PixmapFormat not found!\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"MIT-SHM\00", align 1
@ximage_error_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ximage_init(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @info, i32 0, i32 5), align 8
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @info, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @info, i32 0, i32 6), align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @XVisualIDFromVisual(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @VisualIDMask, align 4
  %25 = call %struct.TYPE_10__* @XGetVisualInfo(i32* %23, i32 %24, %struct.TYPE_10__* %8, i32* %10)
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = call i32 @XFree(%struct.TYPE_10__* %31)
  store i32 0, i32* %4, align 4
  br label %93

33:                                               ; preds = %3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = call i32 @memcpy(%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @info, i32 0, i32 4), %struct.TYPE_10__* %34, i32 16)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = call i32 @XFree(%struct.TYPE_10__* %36)
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @info, i32 0, i32 5), align 8
  %39 = call %struct.TYPE_10__* @XListPixmapFormats(i32* %38, i32* %12)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %61, %33
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @info, i32 0, i32 4, i32 0), align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @info, i32 0, i32 3), align 4
  br label %64

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %40

64:                                               ; preds = %53, %40
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %66 = call i32 @XFree(%struct.TYPE_10__* %65)
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %93

73:                                               ; preds = %64
  %74 = call i32 (...) @select_mode()
  %75 = call i32 (...) @make_colormap()
  %76 = load i32*, i32** %5, align 8
  %77 = call i64 @XQueryExtension(i32* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %15, i32* %16, i32* %17)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i32*, i32** %5, align 8
  %81 = call i64 @XShmQueryExtension(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @info, i32 0, i32 1), align 4
  br label %85

85:                                               ; preds = %83, %79, %73
  %86 = load i32, i32* @ximage_error_handler, align 4
  %87 = call i32 @XSetErrorHandler(i32 %86)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @info, i32 0, i32 2), align 8
  %88 = call i32 (...) @create_pool()
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %93

92:                                               ; preds = %85
  store i32 1, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %91, %70, %28
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @XVisualIDFromVisual(i32*) #1

declare dso_local %struct.TYPE_10__* @XGetVisualInfo(i32*, i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @XFree(%struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_10__* @XListPixmapFormats(i32*, i32*) #1

declare dso_local i32 @select_mode(...) #1

declare dso_local i32 @make_colormap(...) #1

declare dso_local i64 @XQueryExtension(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @XShmQueryExtension(i32*) #1

declare dso_local i32 @XSetErrorHandler(i32) #1

declare dso_local i32 @create_pool(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
