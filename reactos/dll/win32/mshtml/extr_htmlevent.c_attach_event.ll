; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_attach_event.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlevent.c_attach_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64, i32** }

@EVENTID_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Unknown event\0A\00", align 1
@VARIANT_TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attach_event(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @attr_to_eid(i32 %13)
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* @EVENTID_LAST, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = call i32 @WARN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @VARIANT_TRUE, align 4
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @S_OK, align 4
  store i32 %22, i32* %5, align 4
  br label %120

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @TRUE, align 4
  %26 = call %struct.TYPE_6__* @get_event_target_data(i32* %24, i32 %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %10, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %30, i32* %5, align 4
  br label %120

31:                                               ; preds = %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %34, i64 %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %90

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %66, %39
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %44, i64 %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %41, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %40
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %54, i64 %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br label %64

64:                                               ; preds = %51, %40
  %65 = phi i1 [ false, %40 ], [ %63, %51 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %12, align 8
  br label %40

69:                                               ; preds = %64
  %70 = load i64, i64* %12, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %73, i64 %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %70, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %69
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = add i64 %83, 1
  %85 = call i32 @alloc_handler_vector(%struct.TYPE_6__* %81, i64 %82, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %88, i32* %5, align 4
  br label %120

89:                                               ; preds = %80, %69
  br label %100

90:                                               ; preds = %31
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, 1
  %95 = call i32 @alloc_handler_vector(%struct.TYPE_6__* %91, i64 %92, i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %98, i32* %5, align 4
  br label %120

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %89
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @IDispatch_AddRef(i32* %101)
  %103 = load i32*, i32** %8, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %106, i64 %107
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32**, i32*** %110, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i32*, i32** %111, i64 %112
  store i32* %103, i32** %113, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = load i64, i64* %11, align 8
  %116 = call i32 @bind_event(i32* %114, i64 %115)
  %117 = load i32, i32* @VARIANT_TRUE, align 4
  %118 = load i32*, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @S_OK, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %100, %97, %87, %29, %18
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i64 @attr_to_eid(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local %struct.TYPE_6__* @get_event_target_data(i32*, i32) #1

declare dso_local i32 @alloc_handler_vector(%struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @IDispatch_AddRef(i32*) #1

declare dso_local i32 @bind_event(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
