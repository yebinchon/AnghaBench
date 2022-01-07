; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_bar.c_set_output_dirty.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_bar.c_set_output_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swaybar_output*)* @set_output_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_output_dirty(%struct.swaybar_output* %0) #0 {
  %2 = alloca %struct.swaybar_output*, align 8
  store %struct.swaybar_output* %0, %struct.swaybar_output** %2, align 8
  %3 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %4 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %9 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %12 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %17 = call i32 @render_frame(%struct.swaybar_output* %16)
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18, %7
  ret void
}

declare dso_local i32 @render_frame(%struct.swaybar_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
