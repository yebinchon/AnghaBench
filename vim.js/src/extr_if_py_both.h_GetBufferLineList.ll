; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_GetBufferLineList.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_GetBufferLineList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, i64)* @GetBufferLineList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetBufferLineList(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = sub nsw i64 %12, %13
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32* @PyList_New(i64 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %50

20:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %45, %20
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i64 @ml_get_buf(i32* %26, i32 %30, i32 %31)
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32* @LineToString(i8* %33)
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @Py_DECREF(i32* %38)
  store i32* null, i32** %4, align 8
  br label %50

40:                                               ; preds = %25
  %41 = load i32*, i32** %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @PyList_SET_ITEM(i32* %41, i64 %42, i32* %43)
  br label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %21

48:                                               ; preds = %21
  %49 = load i32*, i32** %10, align 8
  store i32* %49, i32** %4, align 8
  br label %50

50:                                               ; preds = %48, %37, %19
  %51 = load i32*, i32** %4, align 8
  ret i32* %51
}

declare dso_local i32* @PyList_New(i64) #1

declare dso_local i32* @LineToString(i8*) #1

declare dso_local i64 @ml_get_buf(i32*, i32, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyList_SET_ITEM(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
