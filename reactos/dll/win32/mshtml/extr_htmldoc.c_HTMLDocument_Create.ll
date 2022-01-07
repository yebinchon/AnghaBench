; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_HTMLDocument_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmldoc.c_HTMLDocument_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_24__, %struct.TYPE_17__*, i32, %struct.TYPE_19__, %struct.TYPE_25__ }
%struct.TYPE_24__ = type { %struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"(%p %s %p)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@HTMLDocumentObj_dispex = common dso_local global i32 0, align 4
@CustomDocVtbl = common dso_local global i32 0, align 4
@UNKNOWN_USERMODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Failed to init Gecko, returning CLASS_E_CLASSNOTAVAILABLE\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"GetContentDOMWindow failed: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HTMLDocument_Create(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32* null, i32** %9, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @debugstr_mshtml_guid(i32 %13)
  %15 = load i8**, i8*** %7, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %12, i32 %14, i8** %15)
  %17 = call %struct.TYPE_23__* @heap_alloc_zero(i32 64)
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %8, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %19 = icmp ne %struct.TYPE_23__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %21, i32* %4, align 4
  br label %154

22:                                               ; preds = %3
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 4
  %27 = bitcast %struct.TYPE_19__* %26 to i32*
  %28 = call i32 @init_dispex(%struct.TYPE_25__* %24, i32* %27, i32* @HTMLDocumentObj_dispex)
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 4
  %33 = bitcast %struct.TYPE_19__* %32 to i32*
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = call i32 @init_doc(%struct.TYPE_24__* %30, i32* %33, i32* %36)
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %39 = call i32 @TargetContainer_Init(%struct.TYPE_23__* %38)
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  store i32* @CustomDocVtbl, i32** %42, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 2
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %48, align 8
  %49 = load i32, i32* @UNKNOWN_USERMODE, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %53 = call i32 @init_binding_ui(%struct.TYPE_23__* %52)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 2
  %57 = call i32 @create_nscontainer(%struct.TYPE_23__* %54, %struct.TYPE_17__** %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @FAILED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %22
  %62 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  %65 = call i32 @htmldoc_release(%struct.TYPE_24__* %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %154

67:                                               ; preds = %22
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = load i32, i32* %6, align 4
  %71 = load i8**, i8*** %7, align 8
  %72 = call i32 @htmldoc_query_interface(%struct.TYPE_24__* %69, i32 %70, i8** %71)
  store i32 %72, i32* %11, align 4
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 1
  %75 = call i32 @htmldoc_release(%struct.TYPE_24__* %74)
  %76 = load i32, i32* %11, align 4
  %77 = call i64 @FAILED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %154

81:                                               ; preds = %67
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @nsIWebBrowser_GetContentDOMWindow(i32 %86, i32** %9)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @NS_FAILED(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %91, %81
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  %100 = call i32 @HTMLOuterWindow_Create(%struct.TYPE_23__* %95, i32* %96, i32* null, %struct.TYPE_18__** %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @nsIDOMWindow_Release(i32* %104)
  br label %106

106:                                              ; preds = %103, %94
  %107 = load i32, i32* %11, align 4
  %108 = call i64 @FAILED(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  %113 = call i32 @htmldoc_release(%struct.TYPE_24__* %112)
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %4, align 4
  br label %154

115:                                              ; preds = %106
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %118, align 8
  %120 = icmp ne %struct.TYPE_22__* %119, null
  br i1 %120, label %151, label %121

121:                                              ; preds = %115
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %129, align 8
  %131 = icmp ne %struct.TYPE_22__* %130, null
  br i1 %131, label %132, label %151

132:                                              ; preds = %121
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %140, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 0
  store %struct.TYPE_22__* %141, %struct.TYPE_22__** %144, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = call i32 @htmldoc_addref(i32* %149)
  br label %151

151:                                              ; preds = %132, %121, %115
  %152 = call i32 (...) @get_thread_hwnd()
  %153 = load i32, i32* @S_OK, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %151, %110, %79, %61, %20
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @TRACE(i8*, i32*, i32, i8**) #1

declare dso_local i32 @debugstr_mshtml_guid(i32) #1

declare dso_local %struct.TYPE_23__* @heap_alloc_zero(i32) #1

declare dso_local i32 @init_dispex(%struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @init_doc(%struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i32 @TargetContainer_Init(%struct.TYPE_23__*) #1

declare dso_local i32 @init_binding_ui(%struct.TYPE_23__*) #1

declare dso_local i32 @create_nscontainer(%struct.TYPE_23__*, %struct.TYPE_17__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @htmldoc_release(%struct.TYPE_24__*) #1

declare dso_local i32 @htmldoc_query_interface(%struct.TYPE_24__*, i32, i8**) #1

declare dso_local i32 @nsIWebBrowser_GetContentDOMWindow(i32, i32**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @HTMLOuterWindow_Create(%struct.TYPE_23__*, i32*, i32*, %struct.TYPE_18__**) #1

declare dso_local i32 @nsIDOMWindow_Release(i32*) #1

declare dso_local i32 @htmldoc_addref(i32*) #1

declare dso_local i32 @get_thread_hwnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
