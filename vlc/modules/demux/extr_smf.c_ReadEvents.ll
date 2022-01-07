; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_smf.c_ReadEvents.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_smf.c_ReadEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@UINT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"fatal parsing error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64*, i32*)* @ReadEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadEvents(%struct.TYPE_10__* %0, i64* noalias %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* @UINT64_MAX, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %66, %3
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %19
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %30
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %12, align 8
  br label %32

32:                                               ; preds = %54, %25
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @HandleMessage(%struct.TYPE_10__* %39, %struct.TYPE_9__* %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %49 = call i64 @ReadDeltaTime(i32 %47, %struct.TYPE_9__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %38
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = call i32 @msg_Err(%struct.TYPE_10__* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %83

54:                                               ; preds = %44
  br label %32

55:                                               ; preds = %32
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %61, %55
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %19

69:                                               ; preds = %19
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @UINT64_MAX, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = sub nsw i64 %76, %77
  %79 = call i32 @date_Increment(i32* %75, i64 %78)
  br label %80

80:                                               ; preds = %73, %69
  %81 = load i64, i64* %9, align 8
  %82 = load i64*, i64** %6, align 8
  store i64 %81, i64* %82, align 8
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %51
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @HandleMessage(%struct.TYPE_10__*, %struct.TYPE_9__*, i32*) #1

declare dso_local i64 @ReadDeltaTime(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @date_Increment(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
