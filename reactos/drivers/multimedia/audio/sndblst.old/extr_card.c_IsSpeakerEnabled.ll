; ModuleID = '/home/carl/AnghaBench/reactos/drivers/multimedia/audio/sndblst.old/extr_card.c_IsSpeakerEnabled.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/multimedia/audio/sndblst.old/extr_card.c_IsSpeakerEnabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Obtaining speaker status\0A\00", align 1
@SB_GET_SPEAKER_STATUS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsSpeakerEnabled(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @SB_GET_SPEAKER_STATUS, align 4
  %7 = call i32 @SB_WRITE_BYTE(i32 %5, i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @WaitToReceive(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @SB_READ_DATA(i32 %14)
  %16 = icmp eq i32 %15, 255
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %13, %11
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @SB_WRITE_BYTE(i32, i32) #1

declare dso_local i32 @WaitToReceive(i32) #1

declare dso_local i32 @SB_READ_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
