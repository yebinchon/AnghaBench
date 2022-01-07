; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_ConvertFromPyMapping.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_ConvertFromPyMapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }

@DictionaryType = common dso_local global i32 0, align 4
@VAR_DICT = common dso_local global i32 0, align 4
@pydict_to_tv = common dso_local global i32 0, align 4
@pymap_to_tv = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unable to convert %s to vim dictionary\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @ConvertFromPyMapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConvertFromPyMapping(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %8 = call %struct.TYPE_19__* (...) @PyDict_New()
  store %struct.TYPE_19__* %8, %struct.TYPE_19__** %6, align 8
  %9 = icmp ne %struct.TYPE_19__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %67

11:                                               ; preds = %2
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @PyType_IsSubtype(i32 %14, i32* @DictionaryType)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load i32, i32* @VAR_DICT, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = bitcast %struct.TYPE_19__* %21 to %struct.TYPE_20__*
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %27, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  store i32 0, i32* %7, align 4
  br label %63

35:                                               ; preds = %11
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = call i64 @PyDict_Check(%struct.TYPE_19__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = load i32, i32* @pydict_to_tv, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %44 = call i32 @convert_dl(%struct.TYPE_19__* %40, %struct.TYPE_18__* %41, i32 %42, %struct.TYPE_19__* %43)
  store i32 %44, i32* %7, align 4
  br label %62

45:                                               ; preds = %35
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = call i64 @PyMapping_Check(%struct.TYPE_19__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = load i32, i32* @pymap_to_tv, align 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = call i32 @convert_dl(%struct.TYPE_19__* %50, %struct.TYPE_18__* %51, i32 %52, %struct.TYPE_19__* %53)
  store i32 %54, i32* %7, align 4
  br label %61

55:                                               ; preds = %45
  %56 = load i32, i32* @PyExc_TypeError, align 4
  %57 = call i32 @N_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = call i32 @Py_TYPE_NAME(%struct.TYPE_19__* %58)
  %60 = call i32 @PyErr_FORMAT(i32 %56, i32 %57, i32 %59)
  store i32 -1, i32* %7, align 4
  br label %61

61:                                               ; preds = %55, %49
  br label %62

62:                                               ; preds = %61, %39
  br label %63

63:                                               ; preds = %62, %17
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %65 = call i32 @Py_DECREF(%struct.TYPE_19__* %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %10
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_19__* @PyDict_New(...) #1

declare dso_local i64 @PyType_IsSubtype(i32, i32*) #1

declare dso_local i64 @PyDict_Check(%struct.TYPE_19__*) #1

declare dso_local i32 @convert_dl(%struct.TYPE_19__*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @PyMapping_Check(%struct.TYPE_19__*) #1

declare dso_local i32 @PyErr_FORMAT(i32, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @Py_TYPE_NAME(%struct.TYPE_19__*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
