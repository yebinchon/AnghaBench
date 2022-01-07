; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_clock_ct_to_ts.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_clock_ct_to_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocktime = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@POSIX_BASE_YEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clocktime*, %struct.timespec*)* @clock_ct_to_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clock_ct_to_ts(%struct.clocktime* %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clocktime*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clocktime* %0, %struct.clocktime** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %9 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %10 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %13 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %55, label %16

16:                                               ; preds = %2
  %17 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %18 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 12
  br i1 %20, label %55, label %21

21:                                               ; preds = %16
  %22 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %23 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %55, label %26

26:                                               ; preds = %21
  %27 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %28 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %33 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @days_in_month(i32 %31, i32 %34)
  %36 = icmp sgt i64 %30, %35
  br i1 %36, label %55, label %37

37:                                               ; preds = %26
  %38 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %39 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 23
  br i1 %41, label %55, label %42

42:                                               ; preds = %37
  %43 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %44 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 59
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %49 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 59
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 2037
  br i1 %54, label %55, label %57

55:                                               ; preds = %52, %47, %42, %37, %26, %21, %16, %2
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %3, align 4
  br label %121

57:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  %58 = load i32, i32* @POSIX_BASE_YEAR, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %70, %57
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @days_in_year(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %59

73:                                               ; preds = %59
  store i32 1, i32* %6, align 4
  br label %74

74:                                               ; preds = %88, %73
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %77 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @days_in_month(i32 %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %74

91:                                               ; preds = %74
  %92 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %93 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 %98, 24
  %100 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %101 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = mul nsw i32 %103, 60
  %105 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %106 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %104, %107
  %109 = mul nsw i32 %108, 60
  %110 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %111 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  %114 = load %struct.timespec*, %struct.timespec** %5, align 8
  %115 = getelementptr inbounds %struct.timespec, %struct.timespec* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.clocktime*, %struct.clocktime** %4, align 8
  %117 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.timespec*, %struct.timespec** %5, align 8
  %120 = getelementptr inbounds %struct.timespec, %struct.timespec* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %91, %55
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @days_in_month(i32, i32) #1

declare dso_local i64 @days_in_year(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
