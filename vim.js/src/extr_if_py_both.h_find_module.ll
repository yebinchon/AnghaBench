; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_find_module.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_find_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@py_find_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"s#O\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"__path__\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"sO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @find_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_module(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = call i64 @vim_strchr(i32* %14, i8 signext 46)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %69

18:                                               ; preds = %3
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 -1
  %21 = load i8*, i8** %6, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @py_find_module, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32* (i32, i8*, i8*, i32, ...) @PyObject_CallFunction(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28, i32* %29)
  store i32* %30, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  store i32* null, i32** %4, align 8
  br label %92

33:                                               ; preds = %18
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32*, i32** %8, align 8
  %44 = call i32* @call_load_module(i8* %34, i32 %42, i32* %43)
  store i32* %44, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @Py_DECREF(i32* %47)
  store i32* null, i32** %4, align 8
  br label %92

49:                                               ; preds = %33
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @Py_DECREF(i32* %50)
  %52 = load i32*, i32** %9, align 8
  %53 = call i32* @PyObject_GetAttrString(i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %53, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @Py_DECREF(i32* %56)
  store i32* null, i32** %4, align 8
  br label %92

58:                                               ; preds = %49
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @Py_DECREF(i32* %59)
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i32*, i32** %11, align 8
  %65 = call i32* @find_module(i8* %61, i8* %63, i32* %64)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @Py_DECREF(i32* %66)
  %68 = load i32*, i32** %9, align 8
  store i32* %68, i32** %4, align 8
  br label %92

69:                                               ; preds = %3
  %70 = load i32, i32* @py_find_module, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = ptrtoint i32* %72 to i32
  %74 = call i32* (i32, i8*, i8*, i32, ...) @PyObject_CallFunction(i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %71, i32 %73)
  store i32* %74, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  store i32* null, i32** %4, align 8
  br label %92

77:                                               ; preds = %69
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i64 @STRLEN(i8* %79)
  %81 = trunc i64 %80 to i32
  %82 = load i32*, i32** %8, align 8
  %83 = call i32* @call_load_module(i8* %78, i32 %81, i32* %82)
  store i32* %83, i32** %9, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @Py_DECREF(i32* %86)
  store i32* null, i32** %4, align 8
  br label %92

88:                                               ; preds = %77
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @Py_DECREF(i32* %89)
  %91 = load i32*, i32** %9, align 8
  store i32* %91, i32** %4, align 8
  br label %92

92:                                               ; preds = %88, %85, %76, %58, %55, %46, %32
  %93 = load i32*, i32** %4, align 8
  ret i32* %93
}

declare dso_local i64 @vim_strchr(i32*, i8 signext) #1

declare dso_local i32* @PyObject_CallFunction(i32, i8*, i8*, i32, ...) #1

declare dso_local i32* @call_load_module(i8*, i32, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32* @PyObject_GetAttrString(i32*, i8*) #1

declare dso_local i64 @STRLEN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
