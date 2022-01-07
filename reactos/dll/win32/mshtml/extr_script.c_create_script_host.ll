; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_create_script_host.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_create_script_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_21__ = type { i32 }

@ActiveScriptSiteVtbl = common dso_local global i32 0, align 4
@ActiveScriptSiteInterruptPollVtbl = common dso_local global i32 0, align 4
@ActiveScriptSiteWindowVtbl = common dso_local global i32 0, align 4
@ActiveScriptSiteUIControlVtbl = common dso_local global i32 0, align 4
@ActiveScriptSiteDebugVtbl = common dso_local global i32 0, align 4
@ASServiceProviderVtbl = common dso_local global i32 0, align 4
@SCRIPTSTATE_UNINITIALIZED = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IActiveScript = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not load script engine: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_21__*, i32*)* @create_script_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @create_script_host(%struct.TYPE_21__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call %struct.TYPE_20__* @heap_alloc_zero(i32 80)
  store %struct.TYPE_20__* %8, %struct.TYPE_20__** %6, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %10 = icmp ne %struct.TYPE_20__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  br label %73

12:                                               ; preds = %2
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store i32* @ActiveScriptSiteVtbl, i32** %15, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 10
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i32* @ActiveScriptSiteInterruptPollVtbl, i32** %18, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i32* @ActiveScriptSiteWindowVtbl, i32** %21, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  store i32* @ActiveScriptSiteUIControlVtbl, i32** %24, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  store i32* @ActiveScriptSiteDebugVtbl, i32** %27, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  store i32* @ASServiceProviderVtbl, i32** %30, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 5
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %35, align 8
  %36 = load i32, i32* @SCRIPTSTATE_UNINITIALIZED, align 4
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 3
  %47 = call i32 @list_add_tail(i32* %44, i32* %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %51 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = bitcast i32* %54 to i8**
  %56 = call i32 @CoCreateInstance(i32* %49, i32* null, i32 %52, i32* @IID_IActiveScript, i8** %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %12
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %71

63:                                               ; preds = %12
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %65 = call i32 @init_script_engine(%struct.TYPE_20__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = call i32 @release_script_engine(%struct.TYPE_20__* %68)
  br label %70

70:                                               ; preds = %67, %63
  br label %71

71:                                               ; preds = %70, %60
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %72, %struct.TYPE_20__** %3, align 8
  br label %73

73:                                               ; preds = %71, %11
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %74
}

declare dso_local %struct.TYPE_20__* @heap_alloc_zero(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @init_script_engine(%struct.TYPE_20__*) #1

declare dso_local i32 @release_script_engine(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
