; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_limits-util.c_physical_memory_scale.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_limits-util.c_physical_memory_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT64_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @physical_memory_scale(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i32 (...) @page_size()
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i32 (...) @physical_memory()
  %20 = load i32, i32* %8, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @UINT64_MAX, align 4
  store i32 %35, i32* %3, align 4
  br label %52

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sdiv i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* @UINT64_MAX, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %48, %34
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @page_size(...) #1

declare dso_local i32 @physical_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
