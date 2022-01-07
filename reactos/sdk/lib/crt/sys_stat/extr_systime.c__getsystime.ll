; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/sys_stat/extr_systime.c__getsystime.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/sys_stat/extr_systime.c__getsystime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TIME_ZONE_ID_DAYLIGHT = common dso_local global i64 0, align 8
@month = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_getsystime(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %2, align 8
  %7 = call i32 @GetLocalTime(%struct.TYPE_3__* %3)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %9, 1900
  %11 = load %struct.tm*, %struct.tm** %2, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.tm*, %struct.tm** %2, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tm*, %struct.tm** %2, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tm*, %struct.tm** %2, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tm*, %struct.tm** %2, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tm*, %struct.tm** %2, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tm*, %struct.tm** %2, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.tm*, %struct.tm** %2, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 2
  store i32 -1, i32* %39, align 4
  %40 = call i64 @GetTimeZoneInformation(i32* %6)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @TIME_ZONE_ID_DAYLIGHT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = load %struct.tm*, %struct.tm** %2, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 2
  store i32 1, i32* %46, align 4
  br label %50

47:                                               ; preds = %1
  %48 = load %struct.tm*, %struct.tm** %2, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %48, i32 0, i32 2
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.tm*, %struct.tm** %2, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load %struct.tm*, %struct.tm** %2, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = srem i32 %59, 100
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.tm*, %struct.tm** %2, align 8
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %63, i32 0, i32 3
  store i32 1, i32* %64, align 4
  br label %76

65:                                               ; preds = %56
  %66 = load %struct.tm*, %struct.tm** %2, align 8
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 100
  %70 = srem i32 %69, 1000
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.tm*, %struct.tm** %2, align 8
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %73, i32 0, i32 3
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %65
  br label %76

76:                                               ; preds = %75, %62
  br label %77

77:                                               ; preds = %76, %50
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %96, %77
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.tm*, %struct.tm** %2, align 8
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sle i32 %79, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load i64*, i64** @month, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.tm*, %struct.tm** %2, align 8
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  br label %96

96:                                               ; preds = %84
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %78

99:                                               ; preds = %78
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  ret i32 %101
}

declare dso_local i32 @GetLocalTime(%struct.TYPE_3__*) #1

declare dso_local i64 @GetTimeZoneInformation(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
