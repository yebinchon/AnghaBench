; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbcmdqueue.c_NBCmdQueueAdd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbcmdqueue.c_NBCmdQueueAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NBCmdQueue = type { i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c": queue %p, ncb %p\0A\00", align 1
@NRC_BADDR = common dso_local global i32 0, align 4
@NRC_INVADDRESS = common dso_local global i32 0, align 4
@NRC_GOODRET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NBCmdQueueAdd(%struct.NBCmdQueue* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.NBCmdQueue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.NBCmdQueue* %0, %struct.NBCmdQueue** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 (i8*, %struct.NBCmdQueue*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.NBCmdQueue* %7, i64 %8)
  %10 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %4, align 8
  %11 = icmp ne %struct.NBCmdQueue* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @NRC_BADDR, align 4
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @NRC_INVADDRESS, align 4
  store i32 %18, i32* %3, align 4
  br label %42

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  %21 = call i32** @CANCEL_EVENT_PTR(i64 %20)
  store i32* null, i32** %21, align 8
  %22 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %4, align 8
  %23 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %22, i32 0, i32 0
  %24 = call i32 @EnterCriticalSection(i32* %23)
  %25 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %4, align 8
  %26 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64* @NEXT_PTR(i64 %28)
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %4, align 8
  %32 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @NRC_GOODRET, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %4, align 8
  %35 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %34, i32 0, i32 0
  %36 = call i32 @LeaveCriticalSection(i32* %35)
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.NBCmdQueue*
  %40 = call i32 (i8*, %struct.NBCmdQueue*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.NBCmdQueue* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %19, %17, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @TRACE(i8*, %struct.NBCmdQueue*, ...) #1

declare dso_local i32** @CANCEL_EVENT_PTR(i64) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64* @NEXT_PTR(i64) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
