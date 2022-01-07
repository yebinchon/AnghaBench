; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsevents.c_init_nsevents.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsevents.c_init_nsevents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@blur_vtbl = common dso_local global i32 0, align 4
@focus_vtbl = common dso_local global i32 0, align 4
@keypress_vtbl = common dso_local global i32 0, align 4
@load_vtbl = common dso_local global i32 0, align 4
@htmlevent_vtbl = common dso_local global i32 0, align 4
@IID_nsIDOMEventTarget = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Could not get nsIDOMEventTarget interface: %08x\0A\00", align 1
@blurW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@focusW = common dso_local global i32 0, align 4
@keypressW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@loadW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_nsevents(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = call %struct.TYPE_13__* @heap_alloc(i32 32)
  store %struct.TYPE_13__* %6, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = icmp ne %struct.TYPE_13__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %87

10:                                               ; preds = %1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %11, %struct.TYPE_13__* %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 6
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %18, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = call i32 @init_listener(%struct.TYPE_15__* %20, %struct.TYPE_13__* %21, i32* @blur_vtbl)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = call i32 @init_listener(%struct.TYPE_15__* %24, %struct.TYPE_13__* %25, i32* @focus_vtbl)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = call i32 @init_listener(%struct.TYPE_15__* %28, %struct.TYPE_13__* %29, i32* @keypress_vtbl)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = call i32 @init_listener(%struct.TYPE_15__* %32, %struct.TYPE_13__* %33, i32* @load_vtbl)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = call i32 @init_listener(%struct.TYPE_15__* %36, %struct.TYPE_13__* %37, i32* @htmlevent_vtbl)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = bitcast i32** %4 to i8**
  %49 = call i32 @nsIDOMWindow_QueryInterface(i32 %47, i32* @IID_nsIDOMEventTarget, i8** %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @NS_FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %10
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %87

56:                                               ; preds = %10
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @blurW, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* @TRUE, align 4
  %63 = call i32 @init_event(i32* %57, i32 %58, i32* %61, i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @focusW, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i32 @init_event(i32* %64, i32 %65, i32* %68, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @keypressW, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* @FALSE, align 4
  %77 = call i32 @init_event(i32* %71, i32 %72, i32* %75, i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @loadW, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i32 @init_event(i32* %78, i32 %79, i32* %82, i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @nsIDOMEventTarget_Release(i32* %85)
  br label %87

87:                                               ; preds = %56, %53, %9
  ret void
}

declare dso_local %struct.TYPE_13__* @heap_alloc(i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @init_listener(%struct.TYPE_15__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @nsIDOMWindow_QueryInterface(i32, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @init_event(i32*, i32, i32*, i32) #1

declare dso_local i32 @nsIDOMEventTarget_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
