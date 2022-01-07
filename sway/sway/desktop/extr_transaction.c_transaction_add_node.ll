; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_add_node.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_transaction = type { i32 }
%struct.sway_node = type { i32, i32, i32, i32, i32 }
%struct.sway_transaction_instruction = type { %struct.sway_node*, %struct.sway_transaction* }

@.str = private unnamed_addr constant [31 x i8] c"Unable to allocate instruction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_transaction*, %struct.sway_node*)* @transaction_add_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transaction_add_node(%struct.sway_transaction* %0, %struct.sway_node* %1) #0 {
  %3 = alloca %struct.sway_transaction*, align 8
  %4 = alloca %struct.sway_node*, align 8
  %5 = alloca %struct.sway_transaction_instruction*, align 8
  store %struct.sway_transaction* %0, %struct.sway_transaction** %3, align 8
  store %struct.sway_node* %1, %struct.sway_node** %4, align 8
  %6 = call %struct.sway_transaction_instruction* @calloc(i32 1, i32 16)
  store %struct.sway_transaction_instruction* %6, %struct.sway_transaction_instruction** %5, align 8
  %7 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %5, align 8
  %8 = call i32 @sway_assert(%struct.sway_transaction_instruction* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %50

11:                                               ; preds = %2
  %12 = load %struct.sway_transaction*, %struct.sway_transaction** %3, align 8
  %13 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %5, align 8
  %14 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %13, i32 0, i32 1
  store %struct.sway_transaction* %12, %struct.sway_transaction** %14, align 8
  %15 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %16 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %5, align 8
  %17 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %16, i32 0, i32 0
  store %struct.sway_node* %15, %struct.sway_node** %17, align 8
  %18 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %19 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %40 [
    i32 129, label %21
    i32 130, label %22
    i32 128, label %28
    i32 131, label %34
  ]

21:                                               ; preds = %11
  br label %40

22:                                               ; preds = %11
  %23 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %24 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %5, align 8
  %27 = call i32 @copy_output_state(i32 %25, %struct.sway_transaction_instruction* %26)
  br label %40

28:                                               ; preds = %11
  %29 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %30 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %5, align 8
  %33 = call i32 @copy_workspace_state(i32 %31, %struct.sway_transaction_instruction* %32)
  br label %40

34:                                               ; preds = %11
  %35 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %36 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %5, align 8
  %39 = call i32 @copy_container_state(i32 %37, %struct.sway_transaction_instruction* %38)
  br label %40

40:                                               ; preds = %11, %34, %28, %22, %21
  %41 = load %struct.sway_transaction*, %struct.sway_transaction** %3, align 8
  %42 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %5, align 8
  %45 = call i32 @list_add(i32 %43, %struct.sway_transaction_instruction* %44)
  %46 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %47 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %40, %10
  ret void
}

declare dso_local %struct.sway_transaction_instruction* @calloc(i32, i32) #1

declare dso_local i32 @sway_assert(%struct.sway_transaction_instruction*, i8*) #1

declare dso_local i32 @copy_output_state(i32, %struct.sway_transaction_instruction*) #1

declare dso_local i32 @copy_workspace_state(i32, %struct.sway_transaction_instruction*) #1

declare dso_local i32 @copy_container_state(i32, %struct.sway_transaction_instruction*) #1

declare dso_local i32 @list_add(i32, %struct.sway_transaction_instruction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
