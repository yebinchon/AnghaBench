; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_same_nodes.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_same_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_transaction = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.sway_transaction_instruction** }
%struct.sway_transaction_instruction = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_transaction*, %struct.sway_transaction*)* @transaction_same_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transaction_same_nodes(%struct.sway_transaction* %0, %struct.sway_transaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_transaction*, align 8
  %5 = alloca %struct.sway_transaction*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_transaction_instruction*, align 8
  %8 = alloca %struct.sway_transaction_instruction*, align 8
  store %struct.sway_transaction* %0, %struct.sway_transaction** %4, align 8
  store %struct.sway_transaction* %1, %struct.sway_transaction** %5, align 8
  %9 = load %struct.sway_transaction*, %struct.sway_transaction** %4, align 8
  %10 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sway_transaction*, %struct.sway_transaction** %5, align 8
  %15 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %59, %21
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.sway_transaction*, %struct.sway_transaction** %4, align 8
  %26 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %24, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %22
  %32 = load %struct.sway_transaction*, %struct.sway_transaction** %4, align 8
  %33 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.sway_transaction_instruction**, %struct.sway_transaction_instruction*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %36, i64 %38
  %40 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %39, align 8
  store %struct.sway_transaction_instruction* %40, %struct.sway_transaction_instruction** %7, align 8
  %41 = load %struct.sway_transaction*, %struct.sway_transaction** %5, align 8
  %42 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load %struct.sway_transaction_instruction**, %struct.sway_transaction_instruction*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %45, i64 %47
  %49 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %48, align 8
  store %struct.sway_transaction_instruction* %49, %struct.sway_transaction_instruction** %8, align 8
  %50 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %7, align 8
  %51 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sway_transaction_instruction*, %struct.sway_transaction_instruction** %8, align 8
  %54 = getelementptr inbounds %struct.sway_transaction_instruction, %struct.sway_transaction_instruction* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %63

58:                                               ; preds = %31
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %22

62:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %57, %20
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
