; ModuleID = '/home/carl/AnghaBench/reactos/drivers/multimedia/audio/sndblst.old/extr_portio.c_InitSoundCard.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/multimedia/audio/sndblst.old/extr_portio.c_InitSoundCard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"InitSoundCard() called\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Resetting sound card\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Waiting for an ACK\0A\00", align 1
@SB_TIMEOUT = common dso_local global i32 0, align 4
@SB_DSP_READY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Querying DSP version\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SB_GET_DSP_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"DSP v%d.%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Sound card initialized!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitSoundCard(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @SB_WRITE_RESET(i32 %10, i32 1)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %16, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 30000
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %12

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @SB_WRITE_RESET(i32 %20, i32 0)
  %22 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @WaitToReceive(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load i32, i32* @SB_TIMEOUT, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %40, %26
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @SB_READ_DATA(i32 %29)
  %31 = load i64, i64* @SB_DSP_READY, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 0
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi i1 [ false, %28 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %5, align 4
  br i1 %37, label %39, label %43

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %4, align 4
  br label %28

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %19
  %45 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @WaitToSend(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %2, align 4
  br label %83

51:                                               ; preds = %44
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SB_GET_DSP_VERSION, align 4
  %54 = call i32 @SB_WRITE_DATA(i32 %52, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i64 @WaitToReceive(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %2, align 4
  br label %83

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = call i64 @SB_READ_DATA(i32 %61)
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @SB_READ_DATA(i32 %64)
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 255
  br i1 %71, label %72, label %77

72:                                               ; preds = %60
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 255
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %2, align 4
  br label %83

77:                                               ; preds = %72, %60
  %78 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 %79, 256
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %75, %58, %49
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @SB_WRITE_RESET(i32, i32) #1

declare dso_local i64 @WaitToReceive(i32) #1

declare dso_local i64 @SB_READ_DATA(i32) #1

declare dso_local i32 @WaitToSend(i32) #1

declare dso_local i32 @SB_WRITE_DATA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
