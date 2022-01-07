; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_PoolAlloc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_PoolAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32** }

@.str = private unnamed_addr constant [29 x i8] c"PoolAlloc: request %d frames\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"PoolAlloc: got %d frames\00", align 1
@PoolLockOpaquePicture = common dso_local global i32 0, align 4
@PoolUnlockOpaquePicture = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, i32)* @PoolAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PoolAlloc(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %5, align 8
  store i32* null, i32** %6, align 8
  store i32** null, i32*** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @msg_Dbg(%struct.TYPE_13__* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @AndroidWindow_Setup(%struct.TYPE_14__* %18, %struct.TYPE_12__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %77

26:                                               ; preds = %2
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @msg_Dbg(%struct.TYPE_13__* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = call i32 @UpdateVideoSize(%struct.TYPE_14__* %35, i32* %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i32** @calloc(i32 %41, i32 4)
  store i32** %42, i32*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %63, %26
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = call i32* @PictureAlloc(%struct.TYPE_14__* %48, i32* %52, i32 1)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %77

57:                                               ; preds = %47
  %58 = load i32*, i32** %9, align 8
  %59 = load i32**, i32*** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* %58, i32** %62, align 8
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %43

66:                                               ; preds = %43
  %67 = call i32 @memset(%struct.TYPE_15__* %10, i32 0, i32 24)
  %68 = load i32, i32* %4, align 4
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = load i32**, i32*** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i32** %70, i32*** %71, align 8
  %72 = load i32, i32* @PoolLockOpaquePicture, align 4
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* @PoolUnlockOpaquePicture, align 4
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = call i32* @picture_pool_NewExtended(%struct.TYPE_15__* %10)
  store i32* %76, i32** %6, align 8
  br label %77

77:                                               ; preds = %66, %56, %25
  %78 = load i32*, i32** %6, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %99, label %80

80:                                               ; preds = %77
  %81 = load i32**, i32*** %7, align 8
  %82 = icmp ne i32** %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %95, %83
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load i32**, i32*** %7, align 8
  %90 = load i32, i32* %11, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @picture_Release(i32* %93)
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %84

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98, %80, %77
  %100 = load i32**, i32*** %7, align 8
  %101 = call i32 @free(i32** %100)
  %102 = load i32*, i32** %6, align 8
  ret i32* %102
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i64 @AndroidWindow_Setup(%struct.TYPE_14__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @UpdateVideoSize(%struct.TYPE_14__*, i32*) #1

declare dso_local i32** @calloc(i32, i32) #1

declare dso_local i32* @PictureAlloc(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32* @picture_pool_NewExtended(%struct.TYPE_15__*) #1

declare dso_local i32 @picture_Release(i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
