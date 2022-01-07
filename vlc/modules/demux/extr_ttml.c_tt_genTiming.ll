; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ttml.c_tt_genTiming.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ttml.c_tt_genTiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@CLOCK_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"000000\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%02u:%02u:%02u.%s%u\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%02u:%02u:%02u:%s%u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%02u:%02u:%02u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @tt_genTiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tt_genTiming(i64 %0) #0 {
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = bitcast %struct.TYPE_4__* %2 to i64*
  store i64 %0, i64* %12, align 4
  %13 = call i32 @tt_time_Valid(%struct.TYPE_4__* %2)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CLOCK_FREQ, align 4
  %21 = urem i32 %19, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @CLOCK_FREQ, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = udiv i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = udiv i32 %27, 3600
  store i32 %28, i32* %4, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = urem i32 %30, 3600
  %32 = udiv i32 %31, 60
  store i32 %32, i32* %5, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = urem i32 %34, 60
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %17
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 6
  store i8* %40, i8** %10, align 8
  %41 = load i32, i32* %3, align 4
  %42 = mul i32 10, %41
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %50, %38
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @CLOCK_FREQ, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = mul i32 %51, 10
  store i32 %52, i32* %11, align 4
  br label %43

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %64, %53
  %55 = load i32, i32* %3, align 4
  %56 = icmp ugt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %3, align 4
  %59 = urem i32 %58, 10
  %60 = icmp eq i32 %59, 0
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i1 [ false, %54 ], [ %60, %57 ]
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = udiv i32 %65, 10
  store i32 %66, i32* %3, align 4
  br label %54

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %3, align 4
  %73 = call i32 (i8**, i8*, i32, i32, i32, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69, i32 %70, i8* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  br label %96

74:                                               ; preds = %17
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %83, 10
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8**, i8*, i32, i32, i32, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80, i32 %81, i8* %86, i32 %88)
  store i32 %89, i32* %7, align 4
  br label %95

90:                                               ; preds = %74
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 (i8**, i8*, i32, i32, i32, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %90, %78
  br label %96

96:                                               ; preds = %95, %67
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %102

100:                                              ; preds = %96
  %101 = load i8*, i8** %8, align 8
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i8* [ null, %99 ], [ %101, %100 ]
  ret i8* %103
}

declare dso_local i32 @tt_time_Valid(%struct.TYPE_4__*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
