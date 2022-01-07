; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_event.c_FlushAllQueues.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_event.c_FlushAllQueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FILE_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FlushAllQueues(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @ReferenceObject(i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @FlushReceiveQueue(i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @STATUS_SUCCESS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @STATUS_FILE_CLOSED, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @FlushListenQueue(i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i32 @FlushSendQueue(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @FlushConnectQueue(i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @FlushShutdownQueue(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @DereferenceObject(i32 %32)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @ReferenceObject(i32) #1

declare dso_local i32 @FlushReceiveQueue(i32, i32, i32) #1

declare dso_local i32 @FlushListenQueue(i32, i32) #1

declare dso_local i32 @FlushSendQueue(i32, i32, i32) #1

declare dso_local i32 @FlushConnectQueue(i32, i32) #1

declare dso_local i32 @FlushShutdownQueue(i32, i32, i32) #1

declare dso_local i32 @DereferenceObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
