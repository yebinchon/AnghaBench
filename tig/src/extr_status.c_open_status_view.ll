; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_open_status_view.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_open_status_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }

@show_untracked_only = common dso_local global i32 0, align 4
@OPEN_RELOAD = common dso_local global i32 0, align 4
@status_view = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @open_status_view(%struct.view* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @show_untracked_only, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* @show_untracked_only, align 4
  %12 = load i32, i32* @OPEN_RELOAD, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %10, %3
  %16 = load %struct.view*, %struct.view** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @open_view(%struct.view* %16, i32* @status_view, i32 %17)
  ret void
}

declare dso_local i32 @open_view(%struct.view*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
