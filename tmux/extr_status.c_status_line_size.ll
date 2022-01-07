; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_line_size.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_line_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, %struct.session* }
%struct.session = type { i32 }

@CLIENT_STATUSOFF = common dso_local global i32 0, align 4
@CLIENT_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @status_line_size(%struct.client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.client*, align 8
  %4 = alloca %struct.session*, align 8
  store %struct.client* %0, %struct.client** %3, align 8
  %5 = load %struct.client*, %struct.client** %3, align 8
  %6 = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 1
  %7 = load %struct.session*, %struct.session** %6, align 8
  store %struct.session* %7, %struct.session** %4, align 8
  %8 = load %struct.client*, %struct.client** %3, align 8
  %9 = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CLIENT_STATUSOFF, align 4
  %12 = load i32, i32* @CLIENT_CONTROL, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.session*, %struct.session** %4, align 8
  %19 = getelementptr inbounds %struct.session, %struct.session* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %17, %16
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
