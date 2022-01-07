; ModuleID = '/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_ioapic.c_Pin2Irq.c'
source_filename = "/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_ioapic.c_Pin2Irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@IRQMap = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"broken BIOS or MPTABLE parser, ayiee!!\0A\00", align 1
@BUSMap = common dso_local global i32* null, align 8
@IOAPICMap = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown bus type %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @Pin2Irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Pin2Irq(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @IRQMap, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @IRQMap, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %3
  %25 = load i32*, i32** @BUSMap, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %53 [
    i32 130, label %29
    i32 131, label %29
    i32 129, label %29
    i32 128, label %35
  ]

29:                                               ; preds = %24, %24, %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @IRQMap, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  br label %56

35:                                               ; preds = %24
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %36

36:                                               ; preds = %40, %35
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @IOAPICMap, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %7, align 8
  br label %36

49:                                               ; preds = %36
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %7, align 8
  br label %56

53:                                               ; preds = %24
  %54 = load i64, i64* %9, align 8
  %55 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  store i64 0, i64* %7, align 8
  br label %56

56:                                               ; preds = %53, %49, %29
  %57 = load i64, i64* %7, align 8
  ret i64 %57
}

declare dso_local i32 @DPRINT(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
