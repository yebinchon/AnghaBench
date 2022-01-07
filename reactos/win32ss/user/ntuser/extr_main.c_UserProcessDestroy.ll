; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/ntuser/extr_main.c_UserProcessDestroy.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/ntuser/extr_main.c_UserProcessDestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }

@ppiScrnSaver = common dso_local global %struct.TYPE_12__* null, align 8
@gHandleTable = common dso_local global i32 0, align 4
@UserProcess = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Freeing ppi 0x%p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@gpidLogon = common dso_local global i64 0, align 8
@gppiInputProvider = common dso_local global %struct.TYPE_12__* null, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@DbgChUserObj = common dso_local global i32 0, align 4
@UserObj = common dso_local global i32 0, align 4
@WARN_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UserProcessDestroy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.TYPE_12__* @PsGetProcessWin32Process(i32 %4)
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = call i32 @ASSERT(%struct.TYPE_12__* %6)
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ppiScrnSaver, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = icmp eq %struct.TYPE_12__* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** @ppiScrnSaver, align 8
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i32, i32* @gHandleTable, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = call i32 @UserDestroyObjectsForOwner(i32 %13, %struct.TYPE_12__* %14)
  %16 = load i32, i32* @UserProcess, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = call i32 (i32, i8*, %struct.TYPE_12__*, ...) @TRACE_CH(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %17)
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @co_IntGraphicsCheck(i32 %19)
  %21 = load i64, i64* @gpidLogon, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  store i64 0, i64* @gpidLogon, align 8
  br label %29

29:                                               ; preds = %28, %12
  %30 = call i32 @UserSetProcessWindowStation(i32* null)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gppiInputProvider, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = icmp eq %struct.TYPE_12__* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store %struct.TYPE_12__* null, %struct.TYPE_12__** @gppiInputProvider, align 8
  br label %35

35:                                               ; preds = %34, %29
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ZwClose(i32* %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = call i32 @IntCleanupCurIconCache(%struct.TYPE_12__* %48)
  %50 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_12__* @PsGetProcessWin32Process(i32) #1

declare dso_local i32 @ASSERT(%struct.TYPE_12__*) #1

declare dso_local i32 @UserDestroyObjectsForOwner(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @TRACE_CH(i32, i8*, %struct.TYPE_12__*, ...) #1

declare dso_local i32 @co_IntGraphicsCheck(i32) #1

declare dso_local i32 @UserSetProcessWindowStation(i32*) #1

declare dso_local i32 @ZwClose(i32*) #1

declare dso_local i32 @IntCleanupCurIconCache(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
