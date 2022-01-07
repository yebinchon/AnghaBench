; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_timer_execute.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_timer.c_timer_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.timer_node = type { i32 }

@TIME_NEAR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer*)* @timer_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_execute(%struct.timer* %0) #0 {
  %2 = alloca %struct.timer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timer_node*, align 8
  store %struct.timer* %0, %struct.timer** %2, align 8
  %5 = load %struct.timer*, %struct.timer** %2, align 8
  %6 = getelementptr inbounds %struct.timer, %struct.timer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TIME_NEAR_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %21, %1
  %11 = load %struct.timer*, %struct.timer** %2, align 8
  %12 = getelementptr inbounds %struct.timer, %struct.timer* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %10
  %22 = load %struct.timer*, %struct.timer** %2, align 8
  %23 = getelementptr inbounds %struct.timer, %struct.timer* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = call %struct.timer_node* @link_clear(%struct.TYPE_4__* %27)
  store %struct.timer_node* %28, %struct.timer_node** %4, align 8
  %29 = load %struct.timer*, %struct.timer** %2, align 8
  %30 = call i32 @SPIN_UNLOCK(%struct.timer* %29)
  %31 = load %struct.timer_node*, %struct.timer_node** %4, align 8
  %32 = call i32 @dispatch_list(%struct.timer_node* %31)
  %33 = load %struct.timer*, %struct.timer** %2, align 8
  %34 = call i32 @SPIN_LOCK(%struct.timer* %33)
  br label %10

35:                                               ; preds = %10
  ret void
}

declare dso_local %struct.timer_node* @link_clear(%struct.TYPE_4__*) #1

declare dso_local i32 @SPIN_UNLOCK(%struct.timer*) #1

declare dso_local i32 @dispatch_list(%struct.timer_node*) #1

declare dso_local i32 @SPIN_LOCK(%struct.timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
