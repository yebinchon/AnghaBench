; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_notify_view_ready_by_size.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_notify_view_ready_by_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sway_transaction_instruction* }
%struct.sway_transaction_instruction = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transaction_notify_view_ready_by_size(%struct.sway_view* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sway_view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_transaction_instruction*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %9 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %12, align 8
  store %struct.sway_transaction_instruction* %13, %struct.sway_transaction_instruction** %7, align 8
  %14 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %7, align 8
  %15 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %7, align 8
  %22 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %7, align 8
  %29 = call i32 @set_instruction_ready(%struct.sway_transaction_instruction* %28)
  br label %30

30:                                               ; preds = %27, %20, %3
  ret void
}

declare dso_local i32 @set_instruction_ready(%struct.sway_transaction_instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
