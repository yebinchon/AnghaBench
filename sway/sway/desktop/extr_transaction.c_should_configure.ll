; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_should_configure.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_should_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_node = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.sway_container_state }
%struct.TYPE_3__ = type { i64 }
%struct.sway_container_state = type { i64, i64, i64, i64 }
%struct.sway_transaction_instruction = type { %struct.sway_container_state }

@SWAY_VIEW_XWAYLAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_node*, %struct.sway_transaction_instruction*)* @should_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_configure(%struct.sway_node* %0, %struct.sway_transaction_instruction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_node*, align 8
  %5 = alloca %struct.sway_transaction_instruction*, align 8
  %6 = alloca %struct.sway_container_state*, align 8
  %7 = alloca %struct.sway_container_state*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %4, align 8
  store %struct.sway_transaction_instruction* %1, %struct.sway_transaction_instruction** %5, align 8
  %8 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %9 = call i32 @node_is_view(%struct.sway_node* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %14 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %42

18:                                               ; preds = %12
  %19 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %20 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store %struct.sway_container_state* %22, %struct.sway_container_state** %6, align 8
  %23 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %5, align 8
  %24 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %23, i32 0, i32 0
  store %struct.sway_container_state* %24, %struct.sway_container_state** %7, align 8
  %25 = load %struct.sway_container_state*, %struct.sway_container_state** %6, align 8
  %26 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sway_container_state*, %struct.sway_container_state** %7, align 8
  %29 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %18
  %33 = load %struct.sway_container_state*, %struct.sway_container_state** %6, align 8
  %34 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sway_container_state*, %struct.sway_container_state** %7, align 8
  %37 = getelementptr inbounds %struct.sway_container_state, %struct.sway_container_state* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %42

41:                                               ; preds = %32, %18
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %17, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @node_is_view(%struct.sway_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
