; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_async_open.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_async_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_21__* }

@.str = private unnamed_addr constant [31 x i8] c"CreateURLMoniker failed: %08x\0A\00", align 1
@NS_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@BINDING_NAVIGATED = common dso_local global i32 0, align 4
@NS_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@start_binding_proc = common dso_local global i32 0, align 4
@start_binding_task_destr = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_26__*, i32, i32*, i32*)* @async_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_open(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %13, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CreateURLMonikerEx2(i32* null, i32 %20, i32** %13, i32 0)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @NS_ERROR_UNEXPECTED, align 4
  store i32 %28, i32* %6, align 4
  br label %119

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* @BINDING_NAVIGATED, align 4
  %36 = call i32 @set_current_mon(%struct.TYPE_26__* %33, i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @create_channelbsc(i32* %38, i32* null, i32* null, i32 0, i32 %39, %struct.TYPE_24__** %12)
  store i32 %40, i32* %14, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @IMoniker_Release(i32* %41)
  %43 = load i32, i32* %14, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @NS_ERROR_UNEXPECTED, align 4
  store i32 %47, i32* %6, align 4
  br label %119

48:                                               ; preds = %37
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @channelbsc_set_channel(%struct.TYPE_24__* %49, %struct.TYPE_25__* %50, i32* %51, i32* %52)
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %48
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %59 = call i32 @create_pending_window(%struct.TYPE_26__* %57, %struct.TYPE_24__* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i64 @SUCCEEDED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @async_start_doc_binding(%struct.TYPE_26__* %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = call i32 @IBindStatusCallback_Release(i32* %72)
  %74 = load i32, i32* %14, align 4
  %75 = call i64 @FAILED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @NS_ERROR_UNEXPECTED, align 4
  store i32 %78, i32* %6, align 4
  br label %119

79:                                               ; preds = %69
  br label %117

80:                                               ; preds = %48
  %81 = call %struct.TYPE_23__* @heap_alloc(i32 24)
  store %struct.TYPE_23__* %81, %struct.TYPE_23__** %15, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %83 = icmp ne %struct.TYPE_23__* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = call i32 @IBindStatusCallback_Release(i32* %87)
  %89 = load i32, i32* @NS_ERROR_OUT_OF_MEMORY, align 4
  store i32 %89, i32* %6, align 4
  br label %119

90:                                               ; preds = %80
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 2
  store %struct.TYPE_21__* %94, %struct.TYPE_21__** %96, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  store %struct.TYPE_24__* %97, %struct.TYPE_24__** %99, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load i32, i32* @start_binding_proc, align 4
  %103 = load i32, i32* @start_binding_task_destr, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @push_task(i32* %101, i32 %102, i32 %103, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i64 @FAILED(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %90
  %115 = load i32, i32* @NS_ERROR_OUT_OF_MEMORY, align 4
  store i32 %115, i32* %6, align 4
  br label %119

116:                                              ; preds = %90
  br label %117

117:                                              ; preds = %116, %79
  %118 = load i32, i32* @NS_OK, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %114, %84, %77, %46, %25
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @CreateURLMonikerEx2(i32*, i32, i32**, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @set_current_mon(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local i32 @create_channelbsc(i32*, i32*, i32*, i32, i32, %struct.TYPE_24__**) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @channelbsc_set_channel(%struct.TYPE_24__*, %struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @create_pending_window(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @async_start_doc_binding(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @IBindStatusCallback_Release(i32*) #1

declare dso_local %struct.TYPE_23__* @heap_alloc(i32) #1

declare dso_local i32 @push_task(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
