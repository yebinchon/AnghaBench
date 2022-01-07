; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-match.c_bus_match_node_maybe_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-match.c_bus_match_node_maybe_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_match_node = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@BUS_MATCH_ROOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bus_match_node*)* @bus_match_node_maybe_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_match_node_maybe_free(%struct.bus_match_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bus_match_node*, align 8
  store %struct.bus_match_node* %0, %struct.bus_match_node** %3, align 8
  %4 = load %struct.bus_match_node*, %struct.bus_match_node** %3, align 8
  %5 = call i32 @assert(%struct.bus_match_node* %4)
  %6 = load %struct.bus_match_node*, %struct.bus_match_node** %3, align 8
  %7 = getelementptr inbounds %struct.bus_match_node, %struct.bus_match_node* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BUS_MATCH_ROOT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.bus_match_node*, %struct.bus_match_node** %3, align 8
  %14 = getelementptr inbounds %struct.bus_match_node, %struct.bus_match_node* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %35

18:                                               ; preds = %12
  %19 = load %struct.bus_match_node*, %struct.bus_match_node** %3, align 8
  %20 = getelementptr inbounds %struct.bus_match_node, %struct.bus_match_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @BUS_MATCH_IS_COMPARE(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.bus_match_node*, %struct.bus_match_node** %3, align 8
  %26 = getelementptr inbounds %struct.bus_match_node, %struct.bus_match_node* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @hashmap_isempty(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %35

32:                                               ; preds = %24, %18
  %33 = load %struct.bus_match_node*, %struct.bus_match_node** %3, align 8
  %34 = call i32 @bus_match_node_free(%struct.bus_match_node* %33)
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %31, %17, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @assert(%struct.bus_match_node*) #1

declare dso_local i64 @BUS_MATCH_IS_COMPARE(i64) #1

declare dso_local i32 @hashmap_isempty(i32) #1

declare dso_local i32 @bus_match_node_free(%struct.bus_match_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
