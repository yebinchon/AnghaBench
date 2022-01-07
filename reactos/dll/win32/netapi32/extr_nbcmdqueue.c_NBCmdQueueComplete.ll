; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbcmdqueue.c_NBCmdQueueComplete.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbcmdqueue.c_NBCmdQueueComplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NBCmdQueue = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c": queue %p, ncb %p\0A\00", align 1
@NRC_BADDR = common dso_local global i32 0, align 4
@NRC_INVADDRESS = common dso_local global i32 0, align 4
@NRC_GOODRET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NBCmdQueueComplete(%struct.NBCmdQueue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.NBCmdQueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.NBCmdQueue* %0, %struct.NBCmdQueue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 (i8*, %struct.NBCmdQueue*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.NBCmdQueue* %10, i32 %11)
  %13 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %5, align 8
  %14 = icmp ne %struct.NBCmdQueue* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @NRC_BADDR, align 4
  store i32 %16, i32* %4, align 4
  br label %62

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @NRC_INVADDRESS, align 4
  store i32 %21, i32* %4, align 4
  br label %62

22:                                               ; preds = %17
  %23 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %5, align 8
  %24 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %23, i32 0, i32 0
  %25 = call i32 @EnterCriticalSection(i32* %24)
  %26 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32* @NBCmdQueueFindNBC(%struct.NBCmdQueue* %26, i32 %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %22
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64* @CANCEL_EVENT_PTR(i32 %33)
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i64* @CANCEL_EVENT_PTR(i32 %39)
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @SetEvent(i64 %41)
  br label %49

43:                                               ; preds = %31
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @NEXT_PTR(i32 %45)
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @NRC_GOODRET, align 4
  store i32 %50, i32* %8, align 4
  br label %53

51:                                               ; preds = %22
  %52 = load i32, i32* @NRC_INVADDRESS, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %5, align 8
  %55 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %54, i32 0, i32 0
  %56 = call i32 @LeaveCriticalSection(i32* %55)
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.NBCmdQueue*
  %60 = call i32 (i8*, %struct.NBCmdQueue*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.NBCmdQueue* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %53, %20, %15
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @TRACE(i8*, %struct.NBCmdQueue*, ...) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32* @NBCmdQueueFindNBC(%struct.NBCmdQueue*, i32) #1

declare dso_local i64* @CANCEL_EVENT_PTR(i32) #1

declare dso_local i32 @SetEvent(i64) #1

declare dso_local i32* @NEXT_PTR(i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
