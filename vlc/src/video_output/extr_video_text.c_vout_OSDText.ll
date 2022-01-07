; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_text.c_vout_OSDText.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_text.c_vout_OSDText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i64, i32, i32, i32, i64 }

@SUBPICTURE_ALIGN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"osd\00", align 1
@OSDTextDestroy = common dso_local global i32 0, align 4
@OSDTextUpdate = common dso_local global i32 0, align 4
@OSDTextValidate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vout_OSDText(i32* %0, i32 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @SUBPICTURE_ALIGN_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @var_InheritBool(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i64, i64* %9, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %5
  br label %82

28:                                               ; preds = %24
  %29 = call %struct.TYPE_12__* @malloc(i32 16)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %11, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %82

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call %struct.TYPE_12__* @strdup(i8* %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %44 = load i32, i32* @OSDTextDestroy, align 4
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %46 = load i32, i32* @OSDTextUpdate, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %48 = load i32, i32* @OSDTextValidate, align 4
  store i32 %48, i32* %47, align 8
  %49 = call %struct.TYPE_11__* @subpicture_New(%struct.TYPE_10__* %12)
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %13, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %51 = icmp ne %struct.TYPE_11__* %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %33
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = call i32 @free(%struct.TYPE_12__* %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %58 = call i32 @free(%struct.TYPE_12__* %57)
  br label %82

59:                                               ; preds = %33
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = call i64 (...) @vlc_tick_now()
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 4
  store i32 1, i32* %78, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %81 = call i32 @vout_PutSubpicture(i32* %79, %struct.TYPE_11__* %80)
  br label %82

82:                                               ; preds = %59, %52, %32, %27
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @var_InheritBool(i32*, i8*) #1

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local %struct.TYPE_12__* @strdup(i8*) #1

declare dso_local %struct.TYPE_11__* @subpicture_New(%struct.TYPE_10__*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i32 @vout_PutSubpicture(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
