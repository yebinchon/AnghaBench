; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_FunctionConstructor.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_FunctionConstructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"function constructor does not accept keyword arguments\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"et\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @FunctionConstructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @FunctionConstructor(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @PyExc_TypeError, align 4
  %14 = call i32 @N_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @PyErr_SET_STRING(i32 %13, i32 %14)
  store i32* null, i32** %4, align 8
  br label %28

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @PyArg_ParseTuple(i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** %9)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32* null, i32** %4, align 8
  br label %28

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32* @FunctionNew(i32* %22, i32* %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @PyMem_Free(i32* %25)
  %27 = load i32*, i32** %8, align 8
  store i32* %27, i32** %4, align 8
  br label %28

28:                                               ; preds = %21, %20, %12
  %29 = load i32*, i32** %4, align 8
  ret i32* %29
}

declare dso_local i32 @PyErr_SET_STRING(i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i8*, i32**) #1

declare dso_local i32* @FunctionNew(i32*, i32*) #1

declare dso_local i32 @PyMem_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
