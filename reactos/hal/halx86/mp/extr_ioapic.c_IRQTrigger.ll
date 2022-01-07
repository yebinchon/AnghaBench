; ModuleID = '/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_ioapic.c_IRQTrigger.c'
source_filename = "/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_ioapic.c_IRQTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@IRQMap = common dso_local global %struct.TYPE_2__* null, align 8
@BUSMap = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"Broken BIOS!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @IRQTrigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @IRQTrigger(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IRQMap, align 8
  %6 = load i64, i64* %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IRQMap, align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 2
  %16 = and i32 %15, 3
  switch i32 %16, label %41 [
    i32 0, label %17
    i32 1, label %37
    i32 2, label %38
    i32 3, label %40
  ]

17:                                               ; preds = %1
  %18 = load i32*, i32** @BUSMap, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %34 [
    i32 130, label %22
    i32 131, label %25
    i32 128, label %28
    i32 129, label %31
  ]

22:                                               ; preds = %17
  %23 = load i64, i64* %2, align 8
  %24 = call i64 @default_ISA_trigger(i64 %23)
  store i64 %24, i64* %4, align 8
  br label %36

25:                                               ; preds = %17
  %26 = load i64, i64* %2, align 8
  %27 = call i64 @default_EISA_trigger(i64 %26)
  store i64 %27, i64* %4, align 8
  br label %36

28:                                               ; preds = %17
  %29 = load i64, i64* %2, align 8
  %30 = call i64 @default_PCI_trigger(i64 %29)
  store i64 %30, i64* %4, align 8
  br label %36

31:                                               ; preds = %17
  %32 = load i64, i64* %2, align 8
  %33 = call i64 @default_MCA_trigger(i64 %32)
  store i64 %33, i64* %4, align 8
  br label %36

34:                                               ; preds = %17
  %35 = call i32 @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 1, i64* %4, align 8
  br label %36

36:                                               ; preds = %34, %31, %28, %25, %22
  br label %43

37:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %43

38:                                               ; preds = %1
  %39 = call i32 @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 1, i64* %4, align 8
  br label %43

40:                                               ; preds = %1
  store i64 1, i64* %4, align 8
  br label %43

41:                                               ; preds = %1
  %42 = call i32 @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %43

43:                                               ; preds = %41, %40, %38, %37, %36
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i64 @default_ISA_trigger(i64) #1

declare dso_local i64 @default_EISA_trigger(i64) #1

declare dso_local i64 @default_PCI_trigger(i64) #1

declare dso_local i64 @default_MCA_trigger(i64) #1

declare dso_local i32 @DPRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
