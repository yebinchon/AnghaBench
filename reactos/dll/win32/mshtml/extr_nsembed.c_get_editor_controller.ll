; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_get_editor_controller.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_get_editor_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@IID_nsIEditingSession = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not get nsIEditingSession: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not get editor: %08x\0A\00", align 1
@pCompMgr = common dso_local global i32 0, align 4
@NS_EDITORCONTROLLER_CONTRACTID = common dso_local global i32 0, align 4
@IID_nsIControllerContext = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"SetCommandContext failed: %08x\0A\00", align 1
@IID_nsIController = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Could not get nsIController interface: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Could not create edit controller: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_editor_controller(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32* null, i32** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @nsIEditor_Release(i32* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @nsIController_Release(i32* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %22, %17
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = bitcast i32** %3 to i8**
  %35 = call i32 @get_nsinterface(i32* %33, i32* @IID_nsIEditingSession, i8** %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @NS_FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %101

42:                                               ; preds = %29
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = call i32 @nsIEditingSession_GetEditorForWindow(i32* %43, i32 %51, i32** %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @nsIEditingSession_Release(i32* %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @NS_FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %42
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %101

63:                                               ; preds = %42
  %64 = load i32, i32* @pCompMgr, align 4
  %65 = load i32, i32* @NS_EDITORCONTROLLER_CONTRACTID, align 4
  %66 = bitcast i32** %4 to i8**
  %67 = call i32 @nsIComponentManager_CreateInstanceByContractID(i32 %64, i32 %65, i32* null, i32* @IID_nsIControllerContext, i8** %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @NS_SUCCEEDED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %63
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @nsIControllerContext_SetCommandContext(i32* %72, i32* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @NS_FAILED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %71
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = bitcast i32** %86 to i8**
  %88 = call i32 @nsIControllerContext_QueryInterface(i32* %84, i32* @IID_nsIController, i8** %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @nsIControllerContext_Release(i32* %89)
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @NS_FAILED(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %83
  br label %101

98:                                               ; preds = %63
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %39, %60, %98, %97
  ret void
}

declare dso_local i32 @nsIEditor_Release(i32*) #1

declare dso_local i32 @nsIController_Release(i32*) #1

declare dso_local i32 @get_nsinterface(i32*, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsIEditingSession_GetEditorForWindow(i32*, i32, i32**) #1

declare dso_local i32 @nsIEditingSession_Release(i32*) #1

declare dso_local i32 @nsIComponentManager_CreateInstanceByContractID(i32, i32, i32*, i32*, i8**) #1

declare dso_local i64 @NS_SUCCEEDED(i32) #1

declare dso_local i32 @nsIControllerContext_SetCommandContext(i32*, i32*) #1

declare dso_local i32 @nsIControllerContext_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @nsIControllerContext_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
