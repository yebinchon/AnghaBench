; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_render.c_FindVisual.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_render.c_FindVisual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64)* @FindVisual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindVisual(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @FindPictScreen(i32* %15, i32* %16, i32* %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %65

22:                                               ; preds = %4
  %23 = load i32*, i32** %10, align 8
  %24 = call { i64, i32* } @xcb_render_pictscreen_depths_iterator(i32* %23)
  %25 = bitcast %struct.TYPE_10__* %11 to { i64, i32* }*
  %26 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %25, i32 0, i32 0
  %27 = extractvalue { i64, i32* } %24, 0
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %25, i32 0, i32 1
  %29 = extractvalue { i64, i32* } %24, 1
  store i32* %29, i32** %28, align 8
  br label %30

30:                                               ; preds = %62, %22
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call { i64, %struct.TYPE_8__* } @xcb_render_pictdepth_visuals_iterator(i32* %37)
  %39 = bitcast %struct.TYPE_9__* %13 to { i64, %struct.TYPE_8__* }*
  %40 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %39, i32 0, i32 0
  %41 = extractvalue { i64, %struct.TYPE_8__* } %38, 0
  store i64 %41, i64* %40, align 8
  %42 = getelementptr inbounds { i64, %struct.TYPE_8__* }, { i64, %struct.TYPE_8__* }* %39, i32 0, i32 1
  %43 = extractvalue { i64, %struct.TYPE_8__* } %38, 1
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %42, align 8
  br label %44

44:                                               ; preds = %60, %34
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %14, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %5, align 4
  br label %65

60:                                               ; preds = %48
  %61 = call i32 @xcb_render_pictvisual_next(%struct.TYPE_9__* %13)
  br label %44

62:                                               ; preds = %44
  %63 = call i32 @xcb_render_pictdepth_next(%struct.TYPE_10__* %11)
  br label %30

64:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %56, %21
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32* @FindPictScreen(i32*, i32*, i32*) #1

declare dso_local { i64, i32* } @xcb_render_pictscreen_depths_iterator(i32*) #1

declare dso_local { i64, %struct.TYPE_8__* } @xcb_render_pictdepth_visuals_iterator(i32*) #1

declare dso_local i32 @xcb_render_pictvisual_next(%struct.TYPE_9__*) #1

declare dso_local i32 @xcb_render_pictdepth_next(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
