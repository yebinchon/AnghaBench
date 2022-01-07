; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_python3.c_RangeAsSubscript.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_python3.c_RangeAsSubscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @RangeAsSubscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RangeAsSubscript(i32* %0, i32* %1, i32* %2) #0 {
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
  %22 = call i32 @RangeAsItem(i32* %19, i64 %20, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %51

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @PySlice_Check(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = bitcast i32* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = bitcast i32* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %32, %36
  %38 = add nsw i64 %37, 1
  %39 = call i64 @PySlice_GetIndicesEx(i32* %28, i64 %38, i32* %9, i32* %10, i32* %11, i32* %12)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %51

42:                                               ; preds = %27
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @RangeAsSlice(i32* %43, i32 %44, i32 %45, i32* %46)
  store i32 %47, i32* %4, align 4
  br label %51

48:                                               ; preds = %23
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @RAISE_INVALID_INDEX_TYPE(i32* %49)
  store i32 -1, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %42, %41, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @PyLong_Check(i32*) #1

declare dso_local i64 @PyLong_AsLong(i32*) #1

declare dso_local i32 @RangeAsItem(i32*, i64, i32*) #1

declare dso_local i64 @PySlice_Check(i32*) #1

declare dso_local i64 @PySlice_GetIndicesEx(i32*, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RangeAsSlice(i32*, i32, i32, i32*) #1

declare dso_local i32 @RAISE_INVALID_INDEX_TYPE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
