; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_DictionaryAssItem.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_DictionaryAssItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32 }

@RAISE_LOCKED_DICTIONARY = common dso_local global i32 0, align 4
@NUL = common dso_local global i64 0, align 8
@RAISE_NO_EMPTY_KEYS = common dso_local global i32 0, align 4
@PyExc_KeyError = common dso_local global i32 0, align 4
@VAR_UNKNOWN = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*, i32*)* @DictionaryAssItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DictionaryAssItem(%struct.TYPE_20__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %10, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @RAISE_LOCKED_DICTIONARY, align 4
  store i32 -1, i32* %4, align 4
  br label %119

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = call i64* @StringToChars(i32* %24, i32** %12)
  store i64* %25, i64** %8, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %119

28:                                               ; preds = %23
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NUL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @RAISE_NO_EMPTY_KEYS, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @Py_XDECREF(i32* %35)
  store i32 -1, i32* %4, align 4
  br label %119

37:                                               ; preds = %28
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = call %struct.TYPE_18__* @dict_find(%struct.TYPE_19__* %38, i64* %39, i32 -1)
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %11, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %45 = icmp eq %struct.TYPE_18__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @Py_XDECREF(i32* %47)
  %49 = load i32, i32* @PyExc_KeyError, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @PyErr_SetObject(i32 %49, i32* %50)
  store i32 -1, i32* %4, align 4
  br label %119

52:                                               ; preds = %43
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32* @hash_find(i32* %54, i32 %57)
  store i32* %58, i32** %13, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @hash_remove(i32* %60, i32* %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %64 = call i32 @dictitem_free(%struct.TYPE_18__* %63)
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @Py_XDECREF(i32* %65)
  store i32 0, i32* %4, align 4
  br label %119

67:                                               ; preds = %37
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @ConvertFromPyObject(i32* %68, %struct.TYPE_17__* %9)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @Py_XDECREF(i32* %72)
  store i32 -1, i32* %4, align 4
  br label %119

74:                                               ; preds = %67
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %76 = icmp eq %struct.TYPE_18__* %75, null
  br i1 %76, label %77, label %108

77:                                               ; preds = %74
  %78 = load i64*, i64** %8, align 8
  %79 = call %struct.TYPE_18__* @dictitem_alloc(i64* %78)
  store %struct.TYPE_18__* %79, %struct.TYPE_18__** %11, align 8
  %80 = icmp ne %struct.TYPE_18__* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @Py_XDECREF(i32* %82)
  %84 = call i32 (...) @PyErr_NoMemory()
  store i32 -1, i32* %4, align 4
  br label %119

85:                                               ; preds = %77
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* @VAR_UNKNOWN, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %95 = call i64 @dict_add(%struct.TYPE_19__* %93, %struct.TYPE_18__* %94)
  %96 = load i64, i64* @FAIL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %85
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %100 = call i32 @vim_free(%struct.TYPE_18__* %99)
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %102 = call i32 @dictitem_free(%struct.TYPE_18__* %101)
  %103 = load i64*, i64** %8, align 8
  %104 = call i32 @RAISE_KEY_ADD_FAIL(i64* %103)
  %105 = load i32*, i32** %12, align 8
  %106 = call i32 @Py_XDECREF(i32* %105)
  store i32 -1, i32* %4, align 4
  br label %119

107:                                              ; preds = %85
  br label %112

108:                                              ; preds = %74
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = call i32 @clear_tv(%struct.TYPE_17__* %110)
  br label %112

112:                                              ; preds = %108, %107
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @Py_XDECREF(i32* %113)
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = call i32 @copy_tv(%struct.TYPE_17__* %9, %struct.TYPE_17__* %116)
  %118 = call i32 @clear_tv(%struct.TYPE_17__* %9)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %112, %98, %81, %71, %52, %46, %33, %27, %21
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64* @StringToChars(i32*, i32**) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local %struct.TYPE_18__* @dict_find(%struct.TYPE_19__*, i64*, i32) #1

declare dso_local i32 @PyErr_SetObject(i32, i32*) #1

declare dso_local i32* @hash_find(i32*, i32) #1

declare dso_local i32 @hash_remove(i32*, i32*) #1

declare dso_local i32 @dictitem_free(%struct.TYPE_18__*) #1

declare dso_local i32 @ConvertFromPyObject(i32*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @dictitem_alloc(i64*) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i64 @dict_add(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @vim_free(%struct.TYPE_18__*) #1

declare dso_local i32 @RAISE_KEY_ADD_FAIL(i64*) #1

declare dso_local i32 @clear_tv(%struct.TYPE_17__*) #1

declare dso_local i32 @copy_tv(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
