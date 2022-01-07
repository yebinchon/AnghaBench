; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_apply_output_state.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_apply_output_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sway_output_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, %struct.sway_output_state*)* @apply_output_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_output_state(%struct.sway_output* %0, %struct.sway_output_state* %1) #0 {
  %3 = alloca %struct.sway_output*, align 8
  %4 = alloca %struct.sway_output_state*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %3, align 8
  store %struct.sway_output_state* %1, %struct.sway_output_state** %4, align 8
  %5 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %6 = call i32 @output_damage_whole(%struct.sway_output* %5)
  %7 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %8 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @list_free(i32 %10)
  %12 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %13 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %12, i32 0, i32 0
  %14 = load %struct.sway_output_state*, %struct.sway_output_state** %4, align 8
  %15 = call i32 @memcpy(%struct.TYPE_2__* %13, %struct.sway_output_state* %14, i32 4)
  %16 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %17 = call i32 @output_damage_whole(%struct.sway_output* %16)
  ret void
}

declare dso_local i32 @output_damage_whole(%struct.sway_output*) #1

declare dso_local i32 @list_free(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.sway_output_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
