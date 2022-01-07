; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_utils.c_WebPSafeMalloc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_utils.c_WebPSafeMalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_malloc_calls = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @WebPSafeMalloc(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i32 @Increment(i32* @num_malloc_calls)
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @CheckSizeArgumentsOverflow(i64 %8, i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %30

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = mul i64 %14, %15
  %17 = icmp ugt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = mul i64 %20, %21
  %23 = call i8* @malloc(i64 %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = mul i64 %25, %26
  %28 = call i32 @AddMem(i8* %24, i64 %27)
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %13, %12
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

declare dso_local i32 @Increment(i32*) #1

declare dso_local i32 @CheckSizeArgumentsOverflow(i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @AddMem(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
