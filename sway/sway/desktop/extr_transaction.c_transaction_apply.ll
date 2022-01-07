; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_apply.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.sway_transaction = type { %struct.TYPE_3__*, %struct.timespec }
%struct.TYPE_3__ = type { i32, %struct.sway_transaction_instruction** }
%struct.sway_transaction_instruction = type { i32, i32, i32, %struct.sway_node* }
%struct.sway_node = type { i32, i32*, i32, i32, i32 }
%struct.timespec = type { i32, double }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Applying transaction %p\00", align 1
@debug = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Transaction %p: %.1fms waiting (%.1f frames if 60Hz)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_transaction*)* @transaction_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transaction_apply(%struct.sway_transaction* %0) #0 {
  %2 = alloca %struct.sway_transaction*, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_transaction_instruction*, align 8
  %8 = alloca %struct.sway_node*, align 8
  store %struct.sway_transaction* %0, %struct.sway_transaction** %2, align 8
  %9 = load i32, i32* @SWAY_DEBUG, align 4
  %10 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %11 = call i32 (i32, i8*, %struct.sway_transaction*, ...) @sway_log(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.sway_transaction* %10)
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %1
  %15 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %16 = call i32 @clock_gettime(i32 %15, %struct.timespec* %3)
  %17 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %18 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %17, i32 0, i32 1
  store %struct.timespec* %18, %struct.timespec** %4, align 8
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.timespec*, %struct.timespec** %4, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %20, %23
  %25 = mul nsw i32 %24, 1000
  %26 = sitofp i32 %25 to double
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = load %struct.timespec*, %struct.timespec** %4, align 8
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 1
  %31 = load double, double* %30, align 8
  %32 = fsub double %28, %31
  %33 = fdiv double %32, 1.000000e+06
  %34 = fadd double %26, %33
  %35 = fptrunc double %34 to float
  store float %35, float* %5, align 4
  %36 = load i32, i32* @SWAY_DEBUG, align 4
  %37 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %38 = load float, float* %5, align 4
  %39 = fpext float %38 to double
  %40 = load float, float* %5, align 4
  %41 = fdiv float %40, 0x4030AAAAA0000000
  %42 = fpext float %41 to double
  %43 = call i32 (i32, i8*, %struct.sway_transaction*, ...) @sway_log(i32 %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), %struct.sway_transaction* %37, double %39, double %42)
  br label %44

44:                                               ; preds = %14, %1
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %94, %44
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %48 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %46, %51
  br i1 %52, label %53, label %97

53:                                               ; preds = %45
  %54 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %55 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load %struct.sway_transaction_instruction**, %struct.sway_transaction_instruction*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %58, i64 %60
  %62 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %61, align 8
  store %struct.sway_transaction_instruction* %62, %struct.sway_transaction_instruction** %7, align 8
  %63 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %7, align 8
  %64 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %63, i32 0, i32 3
  %65 = load %struct.sway_node*, %struct.sway_node** %64, align 8
  store %struct.sway_node* %65, %struct.sway_node** %8, align 8
  %66 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %67 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %91 [
    i32 129, label %69
    i32 130, label %70
    i32 128, label %77
    i32 131, label %84
  ]

69:                                               ; preds = %53
  br label %91

70:                                               ; preds = %53
  %71 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %72 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %7, align 8
  %75 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %74, i32 0, i32 2
  %76 = call i32 @apply_output_state(i32 %73, i32* %75)
  br label %91

77:                                               ; preds = %53
  %78 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %79 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %7, align 8
  %82 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %81, i32 0, i32 1
  %83 = call i32 @apply_workspace_state(i32 %80, i32* %82)
  br label %91

84:                                               ; preds = %53
  %85 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %86 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %7, align 8
  %89 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %88, i32 0, i32 0
  %90 = call i32 @apply_container_state(i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %53, %84, %77, %70, %69
  %92 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %93 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %45

97:                                               ; preds = %45
  %98 = call i32 (...) @cursor_rebase_all()
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, %struct.sway_transaction*, ...) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @apply_output_state(i32, i32*) #1

declare dso_local i32 @apply_workspace_state(i32, i32*) #1

declare dso_local i32 @apply_container_state(i32, i32*) #1

declare dso_local i32 @cursor_rebase_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
