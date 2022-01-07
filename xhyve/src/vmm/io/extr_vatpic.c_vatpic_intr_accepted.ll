; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_vatpic_intr_accepted.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_vatpic_intr_accepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vatpic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vatpic_intr_accepted(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca %struct.vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vatpic*, align 8
  %6 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vm*, %struct.vm** %3, align 8
  %8 = call %struct.vatpic* @vm_atpic(%struct.vm* %7)
  store %struct.vatpic* %8, %struct.vatpic** %5, align 8
  %9 = load %struct.vatpic*, %struct.vatpic** %5, align 8
  %10 = call i32 @VATPIC_LOCK(%struct.vatpic* %9)
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 7
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, -8
  %15 = load %struct.vatpic*, %struct.vatpic** %5, align 8
  %16 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %14, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load %struct.vatpic*, %struct.vatpic** %5, align 8
  %24 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 1
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @vatpic_pin_accepted(%struct.TYPE_2__* %26, i32 %27)
  %29 = load %struct.vatpic*, %struct.vatpic** %5, align 8
  %30 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = call i32 @vatpic_pin_accepted(%struct.TYPE_2__* %32, i32 2)
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.vatpic*, %struct.vatpic** %5, align 8
  %36 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @vatpic_pin_accepted(%struct.TYPE_2__* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %22
  %42 = load %struct.vatpic*, %struct.vatpic** %5, align 8
  %43 = call i32 @vatpic_notify_intr(%struct.vatpic* %42)
  %44 = load %struct.vatpic*, %struct.vatpic** %5, align 8
  %45 = call i32 @VATPIC_UNLOCK(%struct.vatpic* %44)
  ret void
}

declare dso_local %struct.vatpic* @vm_atpic(%struct.vm*) #1

declare dso_local i32 @VATPIC_LOCK(%struct.vatpic*) #1

declare dso_local i32 @vatpic_pin_accepted(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @vatpic_notify_intr(%struct.vatpic*) #1

declare dso_local i32 @VATPIC_UNLOCK(%struct.vatpic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
