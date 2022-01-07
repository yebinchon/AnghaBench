; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_stats.c_stats_stdev.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_stats.c_stats_stdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @stats_stdev(%struct.TYPE_3__* %0, x86_fp80 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store x86_fp80 %1, x86_fp80* %5, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %6, align 16
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store x86_fp80 0xK00000000000000000000, x86_fp80* %3, align 16
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %49, %13
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ule i64 %18, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %17
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %23
  %32 = load i64, i64* %7, align 8
  %33 = uitofp i64 %32 to x86_fp80
  %34 = load x86_fp80, x86_fp80* %5, align 16
  %35 = fsub x86_fp80 %33, %34
  %36 = fptoui x86_fp80 %35 to i64
  %37 = call x86_fp80 @powl(i64 %36, i32 2)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sitofp i32 %43 to x86_fp80
  %45 = fmul x86_fp80 %37, %44
  %46 = load x86_fp80, x86_fp80* %6, align 16
  %47 = fadd x86_fp80 %46, %45
  store x86_fp80 %47, x86_fp80* %6, align 16
  br label %48

48:                                               ; preds = %31, %23
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %17

52:                                               ; preds = %17
  %53 = load x86_fp80, x86_fp80* %6, align 16
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sitofp i32 %57 to x86_fp80
  %59 = fdiv x86_fp80 %53, %58
  %60 = call x86_fp80 @sqrtl(x86_fp80 %59) #3
  store x86_fp80 %60, x86_fp80* %3, align 16
  br label %61

61:                                               ; preds = %52, %12
  %62 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %62
}

declare dso_local x86_fp80 @powl(i64, i32) #1

; Function Attrs: nounwind
declare dso_local x86_fp80 @sqrtl(x86_fp80) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
