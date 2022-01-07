; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-match.c_bus_match_add.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-match.c_bus_match_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_match_node = type opaque
%struct.bus_match_component = type { i32, i32, i32 }
%struct.match_callback = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_match_add(%struct.bus_match_node* %0, %struct.bus_match_component* %1, i32 %2, %struct.match_callback* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bus_match_node*, align 8
  %7 = alloca %struct.bus_match_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.match_callback*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bus_match_node*, align 8
  %12 = alloca i32, align 4
  store %struct.bus_match_node* %0, %struct.bus_match_node** %6, align 8
  store %struct.bus_match_component* %1, %struct.bus_match_component** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.match_callback* %3, %struct.match_callback** %9, align 8
  %13 = load %struct.bus_match_node*, %struct.bus_match_node** %6, align 8
  %14 = bitcast %struct.bus_match_node* %13 to %struct.match_callback*
  %15 = call i32 @assert(%struct.match_callback* %14)
  %16 = load %struct.match_callback*, %struct.match_callback** %9, align 8
  %17 = call i32 @assert(%struct.match_callback* %16)
  %18 = load %struct.bus_match_node*, %struct.bus_match_node** %6, align 8
  store %struct.bus_match_node* %18, %struct.bus_match_node** %11, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %51, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load %struct.bus_match_node*, %struct.bus_match_node** %11, align 8
  %25 = bitcast %struct.bus_match_node* %24 to %struct.match_callback*
  %26 = load %struct.bus_match_component*, %struct.bus_match_component** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %26, i64 %28
  %30 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bus_match_component*, %struct.bus_match_component** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %32, i64 %34
  %36 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bus_match_component*, %struct.bus_match_component** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %38, i64 %40
  %42 = getelementptr inbounds %struct.bus_match_component, %struct.bus_match_component* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = bitcast %struct.bus_match_node** %11 to %struct.match_callback**
  %45 = call i32 @bus_match_add_compare_value(%struct.match_callback* %25, i32 %31, i32 %37, i32 %43, %struct.match_callback** %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %23
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %59

50:                                               ; preds = %23
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %19

54:                                               ; preds = %19
  %55 = load %struct.bus_match_node*, %struct.bus_match_node** %11, align 8
  %56 = bitcast %struct.bus_match_node* %55 to %struct.match_callback*
  %57 = load %struct.match_callback*, %struct.match_callback** %9, align 8
  %58 = call i32 @bus_match_add_leaf(%struct.match_callback* %56, %struct.match_callback* %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @assert(%struct.match_callback*) #1

declare dso_local i32 @bus_match_add_compare_value(%struct.match_callback*, i32, i32, i32, %struct.match_callback**) #1

declare dso_local i32 @bus_match_add_leaf(%struct.match_callback*, %struct.match_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
