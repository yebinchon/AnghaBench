; ModuleID = '/home/carl/AnghaBench/reactos/drivers/multimedia/audio/sb16_nt4.old/extr_control.c_ResetSoundBlaster.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/multimedia/audio/sb16_nt4.old/extr_control.c_ResetSoundBlaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Waiting for SB to acknowledge our reset request\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Didn't get an ACK :(\0A\00", align 1
@SB_TIMEOUT = common dso_local global i32 0, align 4
@SB_DSP_READY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ResetSoundBlaster(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @SbWriteReset(i32 %7, i32 1)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %13, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 30000
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  br label %9

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @SbWriteReset(i32 %17, i32 0)
  %19 = call i32 @DPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @WaitToRead(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = call i32 @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %52

26:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SB_TIMEOUT, align 4
  %33 = icmp slt i32 %31, %32
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %44

36:                                               ; preds = %34
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @SbReadDataWithoutWait(i32 %37)
  %39 = load i64, i64* @SB_DSP_READY, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %27

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = call i32 @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %47, %23
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @SbWriteReset(i32, i32) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @WaitToRead(i32) #1

declare dso_local i64 @SbReadDataWithoutWait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
