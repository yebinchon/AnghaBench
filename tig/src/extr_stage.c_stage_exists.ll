; ModuleID = '/home/carl/AnghaBench/tig/src/extr_stage.c_stage_exists.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_stage.c_stage_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.view* }
%struct.status = type { i32 }

@status_view = common dso_local global %struct.view zeroinitializer, align 8
@main_view = common dso_local global %struct.view zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.status*, i32)* @stage_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stage_exists(%struct.view* %0, %struct.status* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.view*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.status* %1, %struct.status** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.view*, %struct.view** %5, align 8
  %10 = getelementptr inbounds %struct.view, %struct.view* %9, i32 0, i32 0
  %11 = load %struct.view*, %struct.view** %10, align 8
  store %struct.view* %11, %struct.view** %8, align 8
  %12 = load %struct.view*, %struct.view** %8, align 8
  %13 = icmp eq %struct.view* %12, @status_view
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.view*, %struct.view** %8, align 8
  %16 = load %struct.status*, %struct.status** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @status_exists(%struct.view* %15, %struct.status* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load %struct.view*, %struct.view** %8, align 8
  %21 = icmp eq %struct.view* %20, @main_view
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.view*, %struct.view** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @main_status_exists(%struct.view* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %22, %14
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @status_exists(%struct.view*, %struct.status*, i32) #1

declare dso_local i32 @main_status_exists(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
