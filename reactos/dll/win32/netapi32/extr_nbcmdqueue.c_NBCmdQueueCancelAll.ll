; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbcmdqueue.c_NBCmdQueueCancelAll.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbcmdqueue.c_NBCmdQueueCancelAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NBCmdQueue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c": queue %p\0A\00", align 1
@NRC_BADDR = common dso_local global %struct.NBCmdQueue* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c": waiting for ncb %p (command 0x%02x)\0A\00", align 1
@NRC_GOODRET = common dso_local global %struct.NBCmdQueue* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.NBCmdQueue* @NBCmdQueueCancelAll(%struct.NBCmdQueue* %0) #0 {
  %2 = alloca %struct.NBCmdQueue*, align 8
  %3 = alloca %struct.NBCmdQueue*, align 8
  %4 = alloca %struct.NBCmdQueue*, align 8
  store %struct.NBCmdQueue* %0, %struct.NBCmdQueue** %3, align 8
  %5 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %3, align 8
  %6 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.NBCmdQueue* %5)
  %7 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %3, align 8
  %8 = icmp ne %struct.NBCmdQueue* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** @NRC_BADDR, align 8
  store %struct.NBCmdQueue* %10, %struct.NBCmdQueue** %2, align 8
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %3, align 8
  %13 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %12, i32 0, i32 0
  %14 = call i32 @EnterCriticalSection(i32* %13)
  br label %15

15:                                               ; preds = %20, %11
  %16 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %3, align 8
  %17 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %3, align 8
  %22 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %3, align 8
  %25 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_2__* %23, i32 %28)
  %30 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %3, align 8
  %31 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %3, align 8
  %32 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @NBCmdQueueCancel(%struct.NBCmdQueue* %30, %struct.TYPE_2__* %33)
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %3, align 8
  %37 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %36, i32 0, i32 0
  %38 = call i32 @LeaveCriticalSection(i32* %37)
  %39 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** @NRC_GOODRET, align 8
  store %struct.NBCmdQueue* %39, %struct.NBCmdQueue** %4, align 8
  %40 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %4, align 8
  %41 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.NBCmdQueue* %40)
  %42 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %4, align 8
  store %struct.NBCmdQueue* %42, %struct.NBCmdQueue** %2, align 8
  br label %43

43:                                               ; preds = %35, %9
  %44 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %2, align 8
  ret %struct.NBCmdQueue* %44
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @NBCmdQueueCancel(%struct.NBCmdQueue*, %struct.TYPE_2__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
