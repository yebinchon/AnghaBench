; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_set_state.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"State changed: %s -> %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"AdministrativeState\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_set_state(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_6__* %5)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @link_state_to_string(i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @link_state_to_string(i64 %19)
  %21 = call i32 @log_link_debug(%struct.TYPE_6__* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = call i32 @link_send_changed(%struct.TYPE_6__* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %27

27:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @log_link_debug(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @link_state_to_string(i64) #1

declare dso_local i32 @link_send_changed(%struct.TYPE_6__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
