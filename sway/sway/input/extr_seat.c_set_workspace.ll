; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_set_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_set_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.sway_workspace*, i32 }
%struct.sway_workspace = type { i32 }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to allocate previous workspace name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"focus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, %struct.sway_workspace*)* @set_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_workspace(%struct.sway_seat* %0, %struct.sway_workspace* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.sway_workspace* %1, %struct.sway_workspace** %4, align 8
  %5 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %6 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %5, i32 0, i32 0
  %7 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %8 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %9 = icmp eq %struct.sway_workspace* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %46

11:                                               ; preds = %2
  %12 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %13 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %12, i32 0, i32 0
  %14 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %15 = icmp ne %struct.sway_workspace* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %18 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @free(i32 %19)
  %21 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %22 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %21, i32 0, i32 0
  %23 = load %struct.sway_workspace*, %struct.sway_workspace** %22, align 8
  %24 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strdup(i32 %25)
  %27 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %28 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %30 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %16
  %34 = load i32, i32* @SWAY_ERROR, align 4
  %35 = call i32 @sway_log(i32 %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %16
  br label %37

37:                                               ; preds = %36, %11
  %38 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %39 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %38, i32 0, i32 0
  %40 = load %struct.sway_workspace*, %struct.sway_workspace** %39, align 8
  %41 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %42 = call i32 @ipc_event_workspace(%struct.sway_workspace* %40, %struct.sway_workspace* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %44 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %45 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %44, i32 0, i32 0
  store %struct.sway_workspace* %43, %struct.sway_workspace** %45, align 8
  br label %46

46:                                               ; preds = %37, %10
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @ipc_event_workspace(%struct.sway_workspace*, %struct.sway_workspace*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
