; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_swaynag_run.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_swaynag_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swaynag_run(%struct.swaynag* %0) #0 {
  %2 = alloca %struct.swaynag*, align 8
  store %struct.swaynag* %0, %struct.swaynag** %2, align 8
  %3 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %4 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %6 = call i32 @render_frame(%struct.swaynag* %5)
  br label %7

7:                                                ; preds = %20, %1
  %8 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %9 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %14 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @wl_display_dispatch(i64 %15)
  %17 = icmp ne i32 %16, -1
  br label %18

18:                                               ; preds = %12, %7
  %19 = phi i1 [ false, %7 ], [ %17, %12 ]
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %7

21:                                               ; preds = %18
  %22 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %23 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %28 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @wl_display_disconnect(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @render_frame(%struct.swaynag*) #1

declare dso_local i32 @wl_display_dispatch(i64) #1

declare dso_local i32 @wl_display_disconnect(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
