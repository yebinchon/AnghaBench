; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_FunctionNew.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_FunctionNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*, i32)* }
%struct.TYPE_6__ = type { i32* }

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unnamed function %s does not exist\00", align 1
@AUTOLOAD_CHAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"function %s does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32*)* @FunctionNew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @FunctionNew(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64 (%struct.TYPE_5__*, i32)*, i64 (%struct.TYPE_5__*, i32)** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = call i64 %9(%struct.TYPE_5__* %10, i32 0)
  %12 = inttoptr i64 %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = icmp eq %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %59

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @isdigit(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @translated_function_exists(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @PyExc_ValueError, align 4
  %27 = call i32 @N_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @PyErr_FORMAT(i32 %26, i32 %27, i32* %28)
  store i32* null, i32** %3, align 8
  br label %59

30:                                               ; preds = %21
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @vim_strsave(i32* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @func_ref(i32* %37)
  br label %56

39:                                               ; preds = %16
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @AUTOLOAD_CHAR, align 4
  %43 = call i32* @vim_strchr(i32* %41, i32 %42)
  %44 = icmp eq i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32* @get_expanded_name(i32* %40, i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = icmp eq i32* %46, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load i32, i32* @PyExc_ValueError, align 4
  %52 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @PyErr_FORMAT(i32 %51, i32 %52, i32* %53)
  store i32* null, i32** %3, align 8
  br label %59

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %30
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = bitcast %struct.TYPE_6__* %57 to i32*
  store i32* %58, i32** %3, align 8
  br label %59

59:                                               ; preds = %56, %50, %25, %15
  %60 = load i32*, i32** %3, align 8
  ret i32* %60
}

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @translated_function_exists(i32*) #1

declare dso_local i32 @PyErr_FORMAT(i32, i32, i32*) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @vim_strsave(i32*) #1

declare dso_local i32 @func_ref(i32*) #1

declare dso_local i32* @get_expanded_name(i32*, i32) #1

declare dso_local i32* @vim_strchr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
