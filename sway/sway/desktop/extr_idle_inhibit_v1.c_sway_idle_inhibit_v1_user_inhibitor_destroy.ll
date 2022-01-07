; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_idle_inhibit_v1.c_sway_idle_inhibit_v1_user_inhibitor_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_idle_inhibit_v1.c_sway_idle_inhibit_v1_user_inhibitor_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_idle_inhibitor_v1 = type { i64 }

@INHIBIT_IDLE_APPLICATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"User should not be able to destroy application inhibitor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sway_idle_inhibit_v1_user_inhibitor_destroy(%struct.sway_idle_inhibitor_v1* %0) #0 {
  %2 = alloca %struct.sway_idle_inhibitor_v1*, align 8
  store %struct.sway_idle_inhibitor_v1* %0, %struct.sway_idle_inhibitor_v1** %2, align 8
  %3 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %2, align 8
  %4 = icmp ne %struct.sway_idle_inhibitor_v1* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %19

6:                                                ; preds = %1
  %7 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %2, align 8
  %8 = getelementptr inbounds %struct.sway_idle_inhibitor_v1, %struct.sway_idle_inhibitor_v1* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @INHIBIT_IDLE_APPLICATION, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @sway_assert(i32 %12, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  br label %19

16:                                               ; preds = %6
  %17 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %2, align 8
  %18 = call i32 @destroy_inhibitor(%struct.sway_idle_inhibitor_v1* %17)
  br label %19

19:                                               ; preds = %16, %15, %5
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @destroy_inhibitor(%struct.sway_idle_inhibitor_v1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
