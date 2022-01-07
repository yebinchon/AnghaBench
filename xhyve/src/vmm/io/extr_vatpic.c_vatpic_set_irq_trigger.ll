; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_vatpic_set_irq_trigger.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_vatpic_set_irq_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vatpic = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@LEVEL_TRIGGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vatpic_set_irq_trigger(%struct.vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vatpic*, align 8
  store %struct.vm* %0, %struct.vm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 15
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %63

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @LEVEL_TRIGGER, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %24 [
    i32 0, label %22
    i32 1, label %22
    i32 2, label %22
    i32 8, label %22
    i32 13, label %22
  ]

22:                                               ; preds = %20, %20, %20, %20, %20
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %63

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24, %16
  %26 = load %struct.vm*, %struct.vm** %5, align 8
  %27 = call %struct.vatpic* @vm_atpic(%struct.vm* %26)
  store %struct.vatpic* %27, %struct.vatpic** %8, align 8
  %28 = load %struct.vatpic*, %struct.vatpic** %8, align 8
  %29 = call i32 @VATPIC_LOCK(%struct.vatpic* %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @LEVEL_TRIGGER, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 7
  %36 = shl i32 1, %35
  %37 = load %struct.vatpic*, %struct.vatpic** %8, align 8
  %38 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %36
  store i32 %45, i32* %43, align 4
  br label %60

46:                                               ; preds = %25
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 7
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.vatpic*, %struct.vatpic** %8, align 8
  %52 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 3
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %50
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %46, %33
  %61 = load %struct.vatpic*, %struct.vatpic** %8, align 8
  %62 = call i32 @VATPIC_UNLOCK(%struct.vatpic* %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %22, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.vatpic* @vm_atpic(%struct.vm*) #1

declare dso_local i32 @VATPIC_LOCK(%struct.vatpic*) #1

declare dso_local i32 @VATPIC_UNLOCK(%struct.vatpic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
