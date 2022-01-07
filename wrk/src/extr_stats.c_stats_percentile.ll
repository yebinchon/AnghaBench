; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_stats.c_stats_percentile.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_stats.c_stats_percentile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { x86_fp80, i64, i64, i64*, [8 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @stats_percentile(%struct.TYPE_3__* %0, x86_fp80 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca x86_fp80, align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store x86_fp80 %1, x86_fp80* %5, align 16
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = fdiv x86_fp80 %9, 0xK4005C800000000000000
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load x86_fp80, x86_fp80* %12, align 16
  %14 = fmul x86_fp80 %10, %13
  %15 = fadd x86_fp80 %14, 0xK3FFE8000000000000000
  %16 = call i64 @round(x86_fp80 %15)
  store i64 %16, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 16
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %41, %2
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ule i64 %21, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i64*, i64** %28, align 16
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %3, align 8
  br label %45

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %20

44:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i64 @round(x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
