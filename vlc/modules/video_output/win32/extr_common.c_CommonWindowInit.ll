; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_common.c_CommonWindowInit.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_common.c_CommonWindowInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32*, i32*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32*, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CommonWindowInit(i32* %0, %struct.TYPE_19__* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__, align 4
  %11 = alloca %struct.TYPE_17__, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %5, align 4
  br label %78

22:                                               ; preds = %4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @EventThreadCreate(i32* %27, i32* %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %22
  %40 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %40, i32* %5, align 4
  br label %78

41:                                               ; preds = %22
  %42 = call i32 @memset(%struct.TYPE_18__* %10, i32 0, i32 12)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @EventThreadStart(i32 %59, %struct.TYPE_17__* %11, %struct.TYPE_18__* %10)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %41
  %63 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %63, i32* %5, align 4
  br label %78

64:                                               ; preds = %41
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  store i32* %70, i32** %72, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %76 = call i32 @CommonPlacePicture(i32* %73, %struct.TYPE_19__* %74, %struct.TYPE_16__* %75)
  %77 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %64, %62, %39, %20
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EventThreadCreate(i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @EventThreadStart(i32, %struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @CommonPlacePicture(i32*, %struct.TYPE_19__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
