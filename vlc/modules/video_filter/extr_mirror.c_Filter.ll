; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_mirror.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_mirror.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"can't get output picture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_19__*, %struct.TYPE_18__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @Filter(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = icmp ne %struct.TYPE_18__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %69

14:                                               ; preds = %2
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %9, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = call i32 @atomic_load(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = call i32 @atomic_load(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = call %struct.TYPE_18__* @filter_NewPicture(%struct.TYPE_19__* %30)
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %6, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = icmp ne %struct.TYPE_18__* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %14
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = call i32 @msg_Warn(%struct.TYPE_19__* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = call i32 @picture_Release(%struct.TYPE_18__* %37)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %3, align 8
  br label %69

39:                                               ; preds = %14
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %62, %39
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @VerticalMirror(%struct.TYPE_18__* %50, %struct.TYPE_18__* %51, i32 %52, i32 %53)
  br label %61

55:                                               ; preds = %46
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @HorizontalMirror(%struct.TYPE_18__* %56, %struct.TYPE_18__* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %49
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %40

65:                                               ; preds = %40
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = call %struct.TYPE_18__* @CopyInfoAndRelease(%struct.TYPE_18__* %66, %struct.TYPE_18__* %67)
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %3, align 8
  br label %69

69:                                               ; preds = %65, %34, %13
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %70
}

declare dso_local i32 @atomic_load(i32*) #1

declare dso_local %struct.TYPE_18__* @filter_NewPicture(%struct.TYPE_19__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_18__*) #1

declare dso_local i32 @VerticalMirror(%struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @HorizontalMirror(%struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @CopyInfoAndRelease(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
