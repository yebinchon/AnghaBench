; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelFailoverStateMachine.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelFailoverStateMachine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@SRI_MASTER = common dso_local global i32 0, align 4
@SRI_FAILOVER_IN_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelFailoverStateMachine(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SRI_MASTER, align 4
  %7 = and i32 %5, %6
  %8 = call i32 @serverAssert(i32 %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SRI_FAILOVER_IN_PROGRESS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %35 [
    i32 128, label %20
    i32 131, label %23
    i32 130, label %26
    i32 129, label %29
    i32 132, label %32
  ]

20:                                               ; preds = %16
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = call i32 @sentinelFailoverWaitStart(%struct.TYPE_8__* %21)
  br label %35

23:                                               ; preds = %16
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = call i32 @sentinelFailoverSelectSlave(%struct.TYPE_8__* %24)
  br label %35

26:                                               ; preds = %16
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = call i32 @sentinelFailoverSendSlaveOfNoOne(%struct.TYPE_8__* %27)
  br label %35

29:                                               ; preds = %16
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = call i32 @sentinelFailoverWaitPromotion(%struct.TYPE_8__* %30)
  br label %35

32:                                               ; preds = %16
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = call i32 @sentinelFailoverReconfNextSlave(%struct.TYPE_8__* %33)
  br label %35

35:                                               ; preds = %15, %16, %32, %29, %26, %23, %20
  ret void
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @sentinelFailoverWaitStart(%struct.TYPE_8__*) #1

declare dso_local i32 @sentinelFailoverSelectSlave(%struct.TYPE_8__*) #1

declare dso_local i32 @sentinelFailoverSendSlaveOfNoOne(%struct.TYPE_8__*) #1

declare dso_local i32 @sentinelFailoverWaitPromotion(%struct.TYPE_8__*) #1

declare dso_local i32 @sentinelFailoverReconfNextSlave(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
