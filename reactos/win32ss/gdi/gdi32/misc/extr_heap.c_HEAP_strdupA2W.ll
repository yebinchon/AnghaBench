; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/misc/extr_heap.c_HEAP_strdupA2W.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/misc/extr_heap.c_HEAP_strdupA2W.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HEAP_strdupA2W(i32** %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32**, i32*** %4, align 8
  store i32* null, i32** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %12, i32* %3, align 4
  br label %45

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @lstrlenA(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32* @HEAP_alloc(i32 %20)
  %22 = load i32**, i32*** %4, align 8
  store i32* %21, i32** %22, align 8
  %23 = load i32**, i32*** %4, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %13
  %27 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %27, i32* %3, align 4
  br label %45

28:                                               ; preds = %13
  %29 = load i32**, i32*** %4, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @RtlMultiByteToUnicodeN(i32* %30, i32 %34, i32* null, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32**, i32*** %4, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %28, %26, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @lstrlenA(i64) #1

declare dso_local i32* @HEAP_alloc(i32) #1

declare dso_local i32 @RtlMultiByteToUnicodeN(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
