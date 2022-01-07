; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbcmdqueue.c_NBCmdQueueCancel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbcmdqueue.c_NBCmdQueueCancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NBCmdQueue = type { i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c": queue %p, ncb %p\0A\00", align 1
@NRC_BADDR = common dso_local global i64 0, align 8
@NRC_INVADDRESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@NRC_CMDCAN = common dso_local global i64 0, align 8
@NRC_CANOCCR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @NBCmdQueueCancel(%struct.NBCmdQueue* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.NBCmdQueue*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  store %struct.NBCmdQueue* %0, %struct.NBCmdQueue** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = call i32 (i8*, %struct.NBCmdQueue*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.NBCmdQueue* %8, %struct.TYPE_8__* %9)
  %11 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %4, align 8
  %12 = icmp ne %struct.NBCmdQueue* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @NRC_BADDR, align 8
  store i64 %14, i64* %3, align 8
  br label %72

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* @NRC_INVADDRESS, align 8
  store i64 %19, i64* %3, align 8
  br label %72

20:                                               ; preds = %15
  %21 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %4, align 8
  %22 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %21, i32 0, i32 0
  %23 = call i32 @EnterCriticalSection(i32* %22)
  %24 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %4, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = call %struct.TYPE_8__** @NBCmdQueueFindNBC(%struct.NBCmdQueue* %24, %struct.TYPE_8__* %25)
  store %struct.TYPE_8__** %26, %struct.TYPE_8__*** %7, align 8
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %28 = icmp ne %struct.TYPE_8__** %27, null
  br i1 %28, label %29, label %62

29:                                               ; preds = %20
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @CreateEventW(i32* null, i32 %30, i32 %31, i32* null)
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call i32* @CANCEL_EVENT_PTR(%struct.TYPE_8__* %34)
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = call i32* @CANCEL_EVENT_PTR(%struct.TYPE_8__* %37)
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @INFINITE, align 4
  %41 = call i32 @WaitForSingleObject(i32 %39, i32 %40)
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call i32* @CANCEL_EVENT_PTR(%struct.TYPE_8__* %43)
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CloseHandle(i32 %45)
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call %struct.TYPE_8__** @NEXT_PTR(%struct.TYPE_8__* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NRC_CMDCAN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %29
  %58 = load i64, i64* @NRC_CMDCAN, align 8
  store i64 %58, i64* %6, align 8
  br label %61

59:                                               ; preds = %29
  %60 = load i64, i64* @NRC_CANOCCR, align 8
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %59, %57
  br label %64

62:                                               ; preds = %20
  %63 = load i64, i64* @NRC_INVADDRESS, align 8
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %62, %61
  %65 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %4, align 8
  %66 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %65, i32 0, i32 0
  %67 = call i32 @LeaveCriticalSection(i32* %66)
  %68 = load i64, i64* %6, align 8
  %69 = inttoptr i64 %68 to %struct.NBCmdQueue*
  %70 = call i32 (i8*, %struct.NBCmdQueue*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.NBCmdQueue* %69)
  %71 = load i64, i64* %6, align 8
  store i64 %71, i64* %3, align 8
  br label %72

72:                                               ; preds = %64, %18, %13
  %73 = load i64, i64* %3, align 8
  ret i64 %73
}

declare dso_local i32 @TRACE(i8*, %struct.NBCmdQueue*, ...) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local %struct.TYPE_8__** @NBCmdQueueFindNBC(%struct.NBCmdQueue*, %struct.TYPE_8__*) #1

declare dso_local i32 @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i32* @CANCEL_EVENT_PTR(%struct.TYPE_8__*) #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local %struct.TYPE_8__** @NEXT_PTR(%struct.TYPE_8__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
