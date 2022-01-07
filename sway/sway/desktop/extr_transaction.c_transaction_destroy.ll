; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_transaction = type { i64, %struct.TYPE_2__*, %struct.sway_node* }
%struct.TYPE_2__ = type { i32, %struct.sway_transaction_instruction** }
%struct.sway_transaction_instruction = type { i64, %struct.TYPE_2__*, %struct.sway_node* }
%struct.sway_node = type { i64, i32, i32, i32, i32, i64, %struct.sway_transaction_instruction* }

@.str = private unnamed_addr constant [14 x i8] c"Never reached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_transaction*)* @transaction_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transaction_destroy(%struct.sway_transaction* %0) #0 {
  %2 = alloca %struct.sway_transaction*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_transaction_instruction*, align 8
  %5 = alloca %struct.sway_node*, align 8
  store %struct.sway_transaction* %0, %struct.sway_transaction** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %74, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %9 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %77

14:                                               ; preds = %6
  %15 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %16 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.sway_transaction_instruction**, %struct.sway_transaction_instruction*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %19, i64 %21
  %23 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %22, align 8
  store %struct.sway_transaction_instruction* %23, %struct.sway_transaction_instruction** %4, align 8
  %24 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %4, align 8
  %25 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %24, i32 0, i32 2
  %26 = load %struct.sway_node*, %struct.sway_node** %25, align 8
  store %struct.sway_node* %26, %struct.sway_node** %5, align 8
  %27 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %28 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %32 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %31, i32 0, i32 6
  %33 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %32, align 8
  %34 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %4, align 8
  %35 = icmp eq %struct.sway_transaction_instruction* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %14
  %37 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %38 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %37, i32 0, i32 6
  store %struct.sway_transaction_instruction* null, %struct.sway_transaction_instruction** %38, align 8
  br label %39

39:                                               ; preds = %36, %14
  %40 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %41 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %39
  %45 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %46 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %44
  %50 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %51 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %70 [
    i32 129, label %53
    i32 130, label %55
    i32 128, label %60
    i32 131, label %65
  ]

53:                                               ; preds = %49
  %54 = call i32 @sway_assert(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %70

55:                                               ; preds = %49
  %56 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %57 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @output_destroy(i32 %58)
  br label %70

60:                                               ; preds = %49
  %61 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %62 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @workspace_destroy(i32 %63)
  br label %70

65:                                               ; preds = %49
  %66 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %67 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @container_destroy(i32 %68)
  br label %70

70:                                               ; preds = %49, %65, %60, %55, %53
  br label %71

71:                                               ; preds = %70, %44, %39
  %72 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %4, align 8
  %73 = call i32 @free(%struct.sway_transaction_instruction* %72)
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %6

77:                                               ; preds = %6
  %78 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %79 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = call i32 @list_free(%struct.TYPE_2__* %80)
  %82 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %83 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %77
  %87 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %88 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @wl_event_source_remove(i64 %89)
  br label %91

91:                                               ; preds = %86, %77
  %92 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %93 = bitcast %struct.sway_transaction* %92 to %struct.sway_transaction_instruction*
  %94 = call i32 @free(%struct.sway_transaction_instruction* %93)
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @output_destroy(i32) #1

declare dso_local i32 @workspace_destroy(i32) #1

declare dso_local i32 @container_destroy(i32) #1

declare dso_local i32 @free(%struct.sway_transaction_instruction*) #1

declare dso_local i32 @list_free(%struct.TYPE_2__*) #1

declare dso_local i32 @wl_event_source_remove(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
