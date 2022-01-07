; ModuleID = '/home/carl/AnghaBench/vlc/compat/extr_timegm.c_timegm.c'
source_filename = "/home/carl/AnghaBench/vlc/compat/extr_timegm.c_timegm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@timegm.ydays = internal constant [13 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334, i32 0], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timegm(%struct.tm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  %6 = load %struct.tm*, %struct.tm** %3, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 70
  br i1 %9, label %60, label %10

10:                                               ; preds = %1
  %11 = load %struct.tm*, %struct.tm** %3, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %60, label %15

15:                                               ; preds = %10
  %16 = load %struct.tm*, %struct.tm** %3, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 11
  br i1 %19, label %60, label %20

20:                                               ; preds = %15
  %21 = load %struct.tm*, %struct.tm** %3, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %60, label %25

25:                                               ; preds = %20
  %26 = load %struct.tm*, %struct.tm** %3, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 31
  br i1 %29, label %60, label %30

30:                                               ; preds = %25
  %31 = load %struct.tm*, %struct.tm** %3, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %30
  %36 = load %struct.tm*, %struct.tm** %3, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 23
  br i1 %39, label %60, label %40

40:                                               ; preds = %35
  %41 = load %struct.tm*, %struct.tm** %3, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %40
  %46 = load %struct.tm*, %struct.tm** %3, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 59
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = load %struct.tm*, %struct.tm** %3, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.tm*, %struct.tm** %3, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 60
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %50, %45, %40, %35, %30, %25, %20, %15, %10, %1
  store i32 -1, i32* %2, align 4
  br label %134

61:                                               ; preds = %55
  %62 = load %struct.tm*, %struct.tm** %3, align 8
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 70
  %66 = mul nsw i32 365, %65
  %67 = load %struct.tm*, %struct.tm** %3, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [13 x i32], [13 x i32]* @timegm.ydays, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %66, %72
  %74 = load %struct.tm*, %struct.tm** %3, align 8
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = add i32 %73, %77
  store i32 %78, i32* %4, align 4
  store i32 70, i32* %5, align 4
  br label %79

79:                                               ; preds = %93, %61
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.tm*, %struct.tm** %3, align 8
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %79
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 1900, %86
  %88 = call i64 @is_leap_year(i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %79

96:                                               ; preds = %79
  %97 = load %struct.tm*, %struct.tm** %3, align 8
  %98 = getelementptr inbounds %struct.tm, %struct.tm* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.tm*, %struct.tm** %3, align 8
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 1900, %104
  %106 = call i64 @is_leap_year(i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = zext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %101, %96
  %112 = load i32, i32* %4, align 4
  %113 = mul i32 %112, 24
  store i32 %113, i32* %4, align 4
  %114 = load %struct.tm*, %struct.tm** %3, align 8
  %115 = getelementptr inbounds %struct.tm, %struct.tm* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %4, align 4
  %118 = add i32 %117, %116
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = mul i32 %119, 60
  store i32 %120, i32* %4, align 4
  %121 = load %struct.tm*, %struct.tm** %3, align 8
  %122 = getelementptr inbounds %struct.tm, %struct.tm* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %4, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = mul i32 %126, 60
  store i32 %127, i32* %4, align 4
  %128 = load %struct.tm*, %struct.tm** %3, align 8
  %129 = getelementptr inbounds %struct.tm, %struct.tm* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %4, align 4
  %132 = add i32 %131, %130
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %111, %60
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i64 @is_leap_year(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
