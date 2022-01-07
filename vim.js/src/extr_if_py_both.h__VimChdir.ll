; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h__VimChdir.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h__VimChdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@py_getcwd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to change directory\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @_VimChdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_VimChdir(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %70

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32* @PyObject_Call(i32* %16, i32* %17, i32* %18)
  store i32* %19, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32* null, i32** %4, align 8
  br label %70

22:                                               ; preds = %15
  %23 = load i32, i32* @py_getcwd, align 4
  %24 = call i32* @PyObject_CallFunctionObjArgs(i32 %23, i32* null)
  store i32* %24, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @Py_DECREF(i32* %27)
  store i32* null, i32** %4, align 8
  br label %70

29:                                               ; preds = %22
  %30 = load i32*, i32** %9, align 8
  %31 = call i32* @StringToChars(i32* %30, i32** %10)
  store i32* %31, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @Py_DECREF(i32* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @Py_DECREF(i32* %36)
  store i32* null, i32** %4, align 8
  br label %70

38:                                               ; preds = %29
  %39 = call i32 (...) @VimTryStart()
  %40 = load i32*, i32** %11, align 8
  %41 = call i64 @vim_chdir(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @Py_DECREF(i32* %44)
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @Py_DECREF(i32* %46)
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @Py_XDECREF(i32* %48)
  %50 = call i64 (...) @VimTryEnd()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32* null, i32** %4, align 8
  br label %70

53:                                               ; preds = %43
  %54 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %55 = call i32 @PyErr_SET_VIM(i32 %54)
  store i32* null, i32** %4, align 8
  br label %70

56:                                               ; preds = %38
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @Py_DECREF(i32* %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @Py_XDECREF(i32* %59)
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @post_chdir(i32 %61)
  %63 = call i64 (...) @VimTryEnd()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @Py_DECREF(i32* %66)
  store i32* null, i32** %4, align 8
  br label %70

68:                                               ; preds = %56
  %69 = load i32*, i32** %8, align 8
  store i32* %69, i32** %4, align 8
  br label %70

70:                                               ; preds = %68, %65, %53, %52, %33, %26, %21, %14
  %71 = load i32*, i32** %4, align 8
  ret i32* %71
}

declare dso_local i32* @PyObject_Call(i32*, i32*, i32*) #1

declare dso_local i32* @PyObject_CallFunctionObjArgs(i32, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32* @StringToChars(i32*, i32**) #1

declare dso_local i32 @VimTryStart(...) #1

declare dso_local i64 @vim_chdir(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i64 @VimTryEnd(...) #1

declare dso_local i32 @PyErr_SET_VIM(i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @post_chdir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
