; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_gmtime.c__gmtime_worker.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_gmtime.c__gmtime_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SECONDSPERDAY = common dso_local global i32 0, align 4
@DIFFDAYS = common dso_local global i64 0, align 8
@g_lpmonthdays = common dso_local global i32* null, align 8
@g_monthdays = common dso_local global i32* null, align 8
@dst_begin = common dso_local global i32 0, align 4
@dst_end = common dso_local global i32 0, align 4
@_dstbias = common dso_local global i64 0, align 8
@SECONDSPERHOUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm* @_gmtime_worker(%struct.tm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.tm* null, %struct.tm** %4, align 8
  br label %150

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SECONDSPERDAY, align 4
  %25 = udiv i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SECONDSPERDAY, align 4
  %28 = urem i32 %26, %27
  store i32 %28, i32* %15, align 4
  %29 = load i64, i64* @DIFFDAYS, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @leapdays_passed(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @leapyears_passed(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = load i32*, i32** @g_lpmonthdays, align 8
  store i32* %42, i32** %17, align 8
  br label %45

43:                                               ; preds = %22
  %44 = load i32*, i32** @g_monthdays, align 8
  store i32* %44, i32** %17, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub i32 %46, %47
  %49 = udiv i32 %48, 365
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = sub i32 %50, 299
  %52 = load %struct.tm*, %struct.tm** %5, align 8
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %13, align 4
  %55 = mul i32 %54, 365
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub i32 %58, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.tm*, %struct.tm** %5, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %97

65:                                               ; preds = %45
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @SECONDSPERDAY, align 4
  %68 = mul i32 %66, %67
  %69 = load i32, i32* %15, align 4
  %70 = add i32 %68, %69
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* @dst_begin, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %65
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* @dst_end, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load i64, i64* @_dstbias, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = sub nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @SECONDSPERDAY, align 4
  %86 = udiv i32 %84, %85
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* @DIFFDAYS, align 8
  %89 = add nsw i64 %87, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub i32 %91, %92
  store i32 %93, i32* %10, align 4
  %94 = load %struct.tm*, %struct.tm** %5, align 8
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %78, %74, %65
  br label %97

97:                                               ; preds = %96, %45
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.tm*, %struct.tm** %5, align 8
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %111, %97
  %102 = load i32, i32* %10, align 4
  %103 = load i32*, i32** %17, align 8
  %104 = load i32, i32* %14, align 4
  %105 = add i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp uge i32 %102, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %14, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %101

114:                                              ; preds = %101
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.tm*, %struct.tm** %5, align 8
  %117 = getelementptr inbounds %struct.tm, %struct.tm* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %10, align 4
  %119 = add i32 1, %118
  %120 = load i32*, i32** %17, align 8
  %121 = load i32, i32* %14, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = sub i32 %119, %124
  %126 = load %struct.tm*, %struct.tm** %5, align 8
  %127 = getelementptr inbounds %struct.tm, %struct.tm* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %8, align 4
  %129 = add i32 %128, 1
  %130 = urem i32 %129, 7
  %131 = load %struct.tm*, %struct.tm** %5, align 8
  %132 = getelementptr inbounds %struct.tm, %struct.tm* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* @SECONDSPERHOUR, align 4
  %135 = udiv i32 %133, %134
  %136 = load %struct.tm*, %struct.tm** %5, align 8
  %137 = getelementptr inbounds %struct.tm, %struct.tm* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* @SECONDSPERHOUR, align 4
  %140 = urem i32 %138, %139
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* %16, align 4
  %142 = udiv i32 %141, 60
  %143 = load %struct.tm*, %struct.tm** %5, align 8
  %144 = getelementptr inbounds %struct.tm, %struct.tm* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %16, align 4
  %146 = urem i32 %145, 60
  %147 = load %struct.tm*, %struct.tm** %5, align 8
  %148 = getelementptr inbounds %struct.tm, %struct.tm* %147, i32 0, i32 8
  store i32 %146, i32* %148, align 4
  %149 = load %struct.tm*, %struct.tm** %5, align 8
  store %struct.tm* %149, %struct.tm** %4, align 8
  br label %150

150:                                              ; preds = %114, %21
  %151 = load %struct.tm*, %struct.tm** %4, align 8
  ret %struct.tm* %151
}

declare dso_local i32 @leapdays_passed(i32) #1

declare dso_local i32 @leapyears_passed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
