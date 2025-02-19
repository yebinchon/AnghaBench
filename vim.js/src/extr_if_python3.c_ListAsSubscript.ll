; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_python3.c_ListAsSubscript.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_python3.c_ListAsSubscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ListAsSubscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ListAsSubscript(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @PyLong_Check(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @PyLong_AsLong(i32* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @ListAssItem(i32* %19, i64 %20, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %43

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @PySlice_Check(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @ListLength(i32* %29)
  %31 = call i64 @PySlice_GetIndicesEx(i32* %28, i32 %30, i32* %9, i32* %10, i32* %11, i32* %12)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %43

34:                                               ; preds = %27
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @ListAssSlice(i32* %35, i32 %36, i32 %37, i32* %38)
  store i32 %39, i32* %4, align 4
  br label %43

40:                                               ; preds = %23
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @RAISE_INVALID_INDEX_TYPE(i32* %41)
  store i32 -1, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %34, %33, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @PyLong_Check(i32*) #1

declare dso_local i64 @PyLong_AsLong(i32*) #1

declare dso_local i32 @ListAssItem(i32*, i64, i32*) #1

declare dso_local i64 @PySlice_Check(i32*) #1

declare dso_local i64 @PySlice_GetIndicesEx(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ListLength(i32*) #1

declare dso_local i32 @ListAssSlice(i32*, i32, i32, i32*) #1

declare dso_local i32 @RAISE_INVALID_INDEX_TYPE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
