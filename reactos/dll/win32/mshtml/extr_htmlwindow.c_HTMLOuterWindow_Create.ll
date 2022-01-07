; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlwindow.c_HTMLOuterWindow_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlwindow.c_HTMLOuterWindow_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_12__*, i32* }
%struct.TYPE_10__ = type { i32*, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@SCRIPTMODE_GECKO = common dso_local global i32 0, align 4
@READYSTATE_UNINITIALIZED = common dso_local global i32 0, align 4
@window_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%p inner_window %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTMLOuterWindow_Create(i32* %0, i32* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %9, align 8
  %12 = call %struct.TYPE_11__* @alloc_window(i32 88)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %10, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %16, i32* %5, align 4
  br label %141

17:                                               ; preds = %4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = call %struct.TYPE_12__* @heap_alloc(i32 4)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 11
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 11
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %17
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = call i32 @heap_free(%struct.TYPE_11__* %33)
  %35 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %35, i32* %5, align 4
  br label %141

36:                                               ; preds = %17
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 12
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 11
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 11
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %36
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @nsIDOMWindow_AddRef(i32* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 10
  store i32* %54, i32** %56, align 8
  br label %57

57:                                               ; preds = %51, %36
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  br label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @SCRIPTMODE_GECKO, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %63, %60 ], [ %65, %64 ]
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @READYSTATE_UNINITIALIZED, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = call i32 @create_pending_window(%struct.TYPE_11__* %73, i32* null)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @SUCCEEDED(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %66
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @update_window_doc(i32 %81)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %78, %66
  %84 = load i32, i32* %11, align 4
  %85 = call i64 @FAILED(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = call i32 @IHTMLWindow2_Release(i32* %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %5, align 4
  br label %141

93:                                               ; preds = %83
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 6
  %96 = call i32 @CoInternetCreateSecurityManager(i32* null, i32* %95, i32 0)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i64 @FAILED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = call i32 @IHTMLWindow2_Release(i32* %103)
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %5, align 4
  br label %141

106:                                              ; preds = %93
  %107 = call i32 (...) @get_task_target_magic()
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = call i32 @list_init(i32* %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 4
  %115 = call i32 @list_add_head(i32* @window_list, i32* %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %117 = icmp ne %struct.TYPE_11__* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %106
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = call i32 @IHTMLWindow2_AddRef(i32* %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  store %struct.TYPE_11__* %123, %struct.TYPE_11__** %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = call i32 @list_add_tail(i32* %127, i32* %129)
  br label %131

131:                                              ; preds = %118, %106
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %132, i32* %136)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %139 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %138, %struct.TYPE_11__** %139, align 8
  %140 = load i32, i32* @S_OK, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %131, %100, %87, %32, %15
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.TYPE_11__* @alloc_window(i32) #1

declare dso_local %struct.TYPE_12__* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_11__*) #1

declare dso_local i32 @nsIDOMWindow_AddRef(i32*) #1

declare dso_local i32 @create_pending_window(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @update_window_doc(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IHTMLWindow2_Release(i32*) #1

declare dso_local i32 @CoInternetCreateSecurityManager(i32*, i32*, i32) #1

declare dso_local i32 @get_task_target_magic(...) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i32 @IHTMLWindow2_AddRef(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
