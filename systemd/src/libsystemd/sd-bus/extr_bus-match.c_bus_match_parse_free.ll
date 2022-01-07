; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-match.c_bus_match_parse_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-match.c_bus_match_parse_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_match_component = type { %struct.bus_match_component* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bus_match_parse_free(%struct.bus_match_component* %0, i32 %1) #0 {
  %3 = alloca %struct.bus_match_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bus_match_component* %0, %struct.bus_match_component** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.bus_match_component*, %struct.bus_match_component** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %11, i64 %13
  %15 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %14, i32 0, i32 0
  %16 = load %struct.bus_match_component*, %struct.bus_match_component** %15, align 8
  %17 = call i32 @free(%struct.bus_match_component* %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %6

21:                                               ; preds = %6
  %22 = load %struct.bus_match_component*, %struct.bus_match_component** %3, align 8
  %23 = call i32 @free(%struct.bus_match_component* %22)
  ret void
}

declare dso_local i32 @free(%struct.bus_match_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
