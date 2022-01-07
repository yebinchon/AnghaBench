; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_list_py_concat.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_list_py_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }

@VAR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @list_py_concat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_py_concat(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32* @PyObject_GetIter(i32* %11)
  store i32* %12, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %63

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %50, %15
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @PyIter_Next(i32* %17)
  store i32* %18, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = call %struct.TYPE_6__* (...) @listitem_alloc()
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %10, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = call i32 (...) @PyErr_NoMemory()
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @Py_DECREF(i32* %25)
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @Py_DECREF(i32* %27)
  store i32 -1, i32* %4, align 4
  br label %63

29:                                               ; preds = %20
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @VAR_UNKNOWN, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @_ConvertFromPyObject(i32* %37, %struct.TYPE_7__* %39, i32* %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %50

43:                                               ; preds = %29
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @Py_DECREF(i32* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @Py_DECREF(i32* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = call i32 @listitem_free(%struct.TYPE_6__* %48)
  store i32 -1, i32* %4, align 4
  br label %63

50:                                               ; preds = %29
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @Py_DECREF(i32* %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = call i32 @list_append(i32* %53, %struct.TYPE_6__* %54)
  br label %16

56:                                               ; preds = %16
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @Py_DECREF(i32* %57)
  %59 = call i64 (...) @PyErr_Occurred()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %63

62:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61, %43, %23, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32* @PyObject_GetIter(i32*) #1

declare dso_local i32* @PyIter_Next(i32*) #1

declare dso_local %struct.TYPE_6__* @listitem_alloc(...) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @_ConvertFromPyObject(i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @listitem_free(%struct.TYPE_6__*) #1

declare dso_local i32 @list_append(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
