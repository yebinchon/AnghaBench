; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_handle.c_ConSrvRemoveConsole.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_handle.c_ConSrvRemoveConsole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, %struct.TYPE_12__*, i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i8* }

@.str = private unnamed_addr constant [21 x i8] c"ConSrvRemoveConsole\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@CsrProcessIsConsoleApp = common dso_local global i32 0, align 4
@CONSOLE_RUNNING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ConSrvRemoveConsole - Locking OK\0A\00", align 1
@CTRL_LAST_CLOSE_EVENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"ConSrvRemoveConsole - Decrement Console->ReferenceCount = %lu\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConSrvRemoveConsole(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %6 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** @FALSE, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load i32, i32* @CsrProcessIsConsoleApp, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %11
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @CONSOLE_RUNNING, align 4
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32 @ConSrvValidateConsole(%struct.TYPE_14__** %4, i32* %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %26, i32* %2, align 4
  br label %82

27:                                               ; preds = %1
  %28 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = call %struct.TYPE_13__* @ConSrvGetConsoleLeaderProcess(%struct.TYPE_14__* %29)
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %5, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = call i32 @ConSrvFreeHandlesTable(%struct.TYPE_13__* %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = call i32 @RemoveEntryList(i32* %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %27
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = icmp eq %struct.TYPE_13__* %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i8*, i8** @FALSE, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %53, align 8
  br label %70

54:                                               ; preds = %42
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = icmp eq %struct.TYPE_13__* %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i8*, i8** @FALSE, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @CTRL_LAST_CLOSE_EVENT, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = call i32 @ConSrvConsoleCtrlEvent(i32 %62, %struct.TYPE_13__* %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %68, align 8
  br label %69

69:                                               ; preds = %58, %54
  br label %70

70:                                               ; preds = %69, %48
  br label %71

71:                                               ; preds = %70, %27
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = call i32 @TermRefreshInternalInfo(%struct.TYPE_14__* %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = load i32, i32* @TRUE, align 4
  %80 = call i32 @ConSrvReleaseConsole(%struct.TYPE_14__* %78, i32 %79)
  %81 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %71, %25
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @ConSrvValidateConsole(%struct.TYPE_14__**, i32*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @ConSrvGetConsoleLeaderProcess(%struct.TYPE_14__*) #1

declare dso_local i32 @ConSrvFreeHandlesTable(%struct.TYPE_13__*) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @ConSrvConsoleCtrlEvent(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @TermRefreshInternalInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @ConSrvReleaseConsole(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
