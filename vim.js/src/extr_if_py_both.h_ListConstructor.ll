; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_ListConstructor.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_ListConstructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"list constructor does not accept keyword arguments\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"|O\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @ListConstructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ListConstructor(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @PyExc_TypeError, align 4
  %15 = call i32 @N_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @PyErr_SET_STRING(i32 %14, i32 %15)
  store i32* null, i32** %4, align 8
  br label %53

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @PyArg_ParseTuple(i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32** %9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32* null, i32** %4, align 8
  br label %53

22:                                               ; preds = %17
  %23 = call i32* (...) @py_list_alloc()
  store i32* %23, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32* null, i32** %4, align 8
  br label %53

26:                                               ; preds = %22
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = call i32* (...) @PyDict_New()
  store i32* %30, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @list_unref(i32* %33)
  store i32* null, i32** %4, align 8
  br label %53

35:                                               ; preds = %29
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @list_py_concat(i32* %36, i32* %37, i32* %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @Py_DECREF(i32* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @list_unref(i32* %44)
  store i32* null, i32** %4, align 8
  br label %53

46:                                               ; preds = %35
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @Py_DECREF(i32* %47)
  br label %49

49:                                               ; preds = %46, %26
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32* @ListNew(i32* %50, i32* %51)
  store i32* %52, i32** %4, align 8
  br label %53

53:                                               ; preds = %49, %41, %32, %25, %21, %13
  %54 = load i32*, i32** %4, align 8
  ret i32* %54
}

declare dso_local i32 @PyErr_SET_STRING(i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32**) #1

declare dso_local i32* @py_list_alloc(...) #1

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32 @list_unref(i32*) #1

declare dso_local i32 @list_py_concat(i32*, i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32* @ListNew(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
