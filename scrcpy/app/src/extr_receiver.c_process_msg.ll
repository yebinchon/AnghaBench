; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_receiver.c_process_msg.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_receiver.c_process_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receiver = type { i32 }
%struct.device_msg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Device clipboard copied\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.receiver*, %struct.device_msg*)* @process_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_msg(%struct.receiver* %0, %struct.device_msg* %1) #0 {
  %3 = alloca %struct.receiver*, align 8
  %4 = alloca %struct.device_msg*, align 8
  store %struct.receiver* %0, %struct.receiver** %3, align 8
  store %struct.device_msg* %1, %struct.device_msg** %4, align 8
  %5 = load %struct.device_msg*, %struct.device_msg** %4, align 8
  %6 = getelementptr inbounds %struct.device_msg, %struct.device_msg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %15 [
    i32 128, label %8
  ]

8:                                                ; preds = %2
  %9 = call i32 @LOGI(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.device_msg*, %struct.device_msg** %4, align 8
  %11 = getelementptr inbounds %struct.device_msg, %struct.device_msg* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @SDL_SetClipboardText(i32 %13)
  br label %15

15:                                               ; preds = %2, %8
  ret void
}

declare dso_local i32 @LOGI(i8*) #1

declare dso_local i32 @SDL_SetClipboardText(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
