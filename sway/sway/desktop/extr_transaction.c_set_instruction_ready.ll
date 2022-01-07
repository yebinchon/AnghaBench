; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_set_instruction_ready.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_set_instruction_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.sway_transaction_instruction = type { %struct.TYPE_5__*, %struct.sway_transaction* }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sway_transaction = type { i64, i64, i32, %struct.timespec }
%struct.timespec = type { i32, double }

@debug = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Transaction %p: %zi/%zi ready in %.1fms (%s)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Transaction %p is ready\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_transaction_instruction*)* @set_instruction_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_instruction_ready(%struct.sway_transaction_instruction* %0) #0 {
  %2 = alloca %struct.sway_transaction_instruction*, align 8
  %3 = alloca %struct.sway_transaction*, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca float, align 4
  store %struct.sway_transaction_instruction* %0, %struct.sway_transaction_instruction** %2, align 8
  %7 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %2, align 8
  %8 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %7, i32 0, i32 1
  %9 = load %struct.sway_transaction*, %struct.sway_transaction** %8, align 8
  store %struct.sway_transaction* %9, %struct.sway_transaction** %3, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @debug, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %1
  %13 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %14 = call i32 @clock_gettime(i32 %13, %struct.timespec* %4)
  %15 = load %struct.sway_transaction*, %struct.sway_transaction** %3, align 8
  %16 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %15, i32 0, i32 3
  store %struct.timespec* %16, %struct.timespec** %5, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.timespec*, %struct.timespec** %5, align 8
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %18, %21
  %23 = mul nsw i32 %22, 1000
  %24 = sitofp i32 %23 to double
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = load %struct.timespec*, %struct.timespec** %5, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = fsub double %26, %29
  %31 = fdiv double %30, 1.000000e+06
  %32 = fadd double %24, %31
  %33 = fptrunc double %32 to float
  store float %33, float* %6, align 4
  %34 = load i32, i32* @SWAY_DEBUG, align 4
  %35 = load %struct.sway_transaction*, %struct.sway_transaction** %3, align 8
  %36 = load %struct.sway_transaction*, %struct.sway_transaction** %3, align 8
  %37 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sway_transaction*, %struct.sway_transaction** %3, align 8
  %40 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = add nsw i64 %42, 1
  %44 = load %struct.sway_transaction*, %struct.sway_transaction** %3, align 8
  %45 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load float, float* %6, align 4
  %48 = fpext float %47 to double
  %49 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %2, align 8
  %50 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, %struct.sway_transaction*, ...) @sway_log(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.sway_transaction* %35, i64 %43, i64 %46, double %48, i32 %55)
  br label %57

57:                                               ; preds = %12, %1
  %58 = load %struct.sway_transaction*, %struct.sway_transaction** %3, align 8
  %59 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load %struct.sway_transaction*, %struct.sway_transaction** %3, align 8
  %64 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load i32, i32* @SWAY_DEBUG, align 4
  %70 = load %struct.sway_transaction*, %struct.sway_transaction** %3, align 8
  %71 = call i32 (i32, i8*, %struct.sway_transaction*, ...) @sway_log(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.sway_transaction* %70)
  %72 = load %struct.sway_transaction*, %struct.sway_transaction** %3, align 8
  %73 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @wl_event_source_timer_update(i32 %74, i32 0)
  br label %76

76:                                               ; preds = %68, %62, %57
  %77 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %2, align 8
  %78 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  %81 = call i32 (...) @transaction_progress_queue()
  ret void
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @sway_log(i32, i8*, %struct.sway_transaction*, ...) #1

declare dso_local i32 @wl_event_source_timer_update(i32, i32) #1

declare dso_local i32 @transaction_progress_queue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
