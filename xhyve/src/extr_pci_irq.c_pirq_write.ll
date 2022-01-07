; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_irq.c_pirq_write.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_irq.c_pirq_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pirq = type { i32, i64, i32 }

@pirqs = common dso_local global %struct.pirq* null, align 8
@PIRQ_DIS = common dso_local global i32 0, align 4
@PIRQ_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pirq_write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pirq*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.pirq*, %struct.pirq** @pirqs, align 8
  %11 = call i32 @nitems(%struct.pirq* %10)
  %12 = icmp ule i32 %9, %11
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i1 [ false, %2 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.pirq*, %struct.pirq** @pirqs, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pirq, %struct.pirq* %17, i64 %20
  store %struct.pirq* %21, %struct.pirq** %5, align 8
  %22 = load %struct.pirq*, %struct.pirq** %5, align 8
  %23 = getelementptr inbounds %struct.pirq, %struct.pirq* %22, i32 0, i32 2
  %24 = call i32 @pthread_mutex_lock(i32* %23)
  %25 = load %struct.pirq*, %struct.pirq** %5, align 8
  %26 = getelementptr inbounds %struct.pirq, %struct.pirq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PIRQ_DIS, align 4
  %30 = load i32, i32* @PIRQ_IRQ, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %27, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %13
  %35 = load %struct.pirq*, %struct.pirq** %5, align 8
  %36 = getelementptr inbounds %struct.pirq, %struct.pirq* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.pirq*, %struct.pirq** %5, align 8
  %41 = getelementptr inbounds %struct.pirq, %struct.pirq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @pirq_valid_irq(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.pirq*, %struct.pirq** %5, align 8
  %47 = getelementptr inbounds %struct.pirq, %struct.pirq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PIRQ_IRQ, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @xh_vm_isa_deassert_irq(i32 %50, i32 -1)
  br label %52

52:                                               ; preds = %45, %39, %34
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PIRQ_DIS, align 4
  %55 = load i32, i32* @PIRQ_IRQ, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = load %struct.pirq*, %struct.pirq** %5, align 8
  %59 = getelementptr inbounds %struct.pirq, %struct.pirq* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.pirq*, %struct.pirq** %5, align 8
  %61 = getelementptr inbounds %struct.pirq, %struct.pirq* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %52
  %65 = load %struct.pirq*, %struct.pirq** %5, align 8
  %66 = getelementptr inbounds %struct.pirq, %struct.pirq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @pirq_valid_irq(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.pirq*, %struct.pirq** %5, align 8
  %72 = getelementptr inbounds %struct.pirq, %struct.pirq* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @PIRQ_IRQ, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @xh_vm_isa_assert_irq(i32 %75, i32 -1)
  br label %77

77:                                               ; preds = %70, %64, %52
  br label %78

78:                                               ; preds = %77, %13
  %79 = load %struct.pirq*, %struct.pirq** %5, align 8
  %80 = getelementptr inbounds %struct.pirq, %struct.pirq* %79, i32 0, i32 2
  %81 = call i32 @pthread_mutex_unlock(i32* %80)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nitems(%struct.pirq*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pirq_valid_irq(i32) #1

declare dso_local i32 @xh_vm_isa_deassert_irq(i32, i32) #1

declare dso_local i32 @xh_vm_isa_assert_irq(i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
