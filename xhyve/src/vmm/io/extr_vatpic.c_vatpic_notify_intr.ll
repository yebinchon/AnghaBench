; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_vatpic_notify_intr.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_vatpic_notify_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpic = type { i32, %struct.atpic* }
%struct.atpic = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"atpic slave notify pin = %d (imr 0x%x irr 0x%x isr 0x%x)\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"atpic slave no eligible interrupts (imr 0x%x irr 0x%x isr 0x%x)\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"atpic master notify pin = %d (imr 0x%x irr 0x%x isr 0x%x)\00", align 1
@APIC_LVT_LINT0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"atpic master no eligible interrupts (imr 0x%x irr 0x%x isr 0x%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vatpic*)* @vatpic_notify_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vatpic_notify_intr(%struct.vatpic* %0) #0 {
  %2 = alloca %struct.vatpic*, align 8
  %3 = alloca %struct.atpic*, align 8
  %4 = alloca i32, align 4
  store %struct.vatpic* %0, %struct.vatpic** %2, align 8
  %5 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %6 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %5, i32 0, i32 1
  %7 = load %struct.atpic*, %struct.atpic** %6, align 8
  %8 = getelementptr inbounds %struct.atpic, %struct.atpic* %7, i64 1
  store %struct.atpic* %8, %struct.atpic** %3, align 8
  %9 = load %struct.atpic*, %struct.atpic** %3, align 8
  %10 = getelementptr inbounds %struct.atpic, %struct.atpic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %1
  %14 = load %struct.atpic*, %struct.atpic** %3, align 8
  %15 = call i32 @vatpic_get_highest_irrpin(%struct.atpic* %14)
  store i32 %15, i32* %4, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.atpic*, %struct.atpic** %3, align 8
  %21 = getelementptr inbounds %struct.atpic, %struct.atpic* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.atpic*, %struct.atpic** %3, align 8
  %24 = getelementptr inbounds %struct.atpic, %struct.atpic* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.atpic*, %struct.atpic** %3, align 8
  %27 = getelementptr inbounds %struct.atpic, %struct.atpic* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @VATPIC_CTR4(%struct.vatpic* %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.atpic*, %struct.atpic** %3, align 8
  %31 = getelementptr inbounds %struct.atpic, %struct.atpic* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %33 = call i32 @vatpic_set_pinstate(%struct.vatpic* %32, i32 2, i32 1)
  %34 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %35 = call i32 @vatpic_set_pinstate(%struct.vatpic* %34, i32 2, i32 0)
  br label %48

36:                                               ; preds = %13, %1
  %37 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %38 = load %struct.atpic*, %struct.atpic** %3, align 8
  %39 = getelementptr inbounds %struct.atpic, %struct.atpic* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.atpic*, %struct.atpic** %3, align 8
  %42 = getelementptr inbounds %struct.atpic, %struct.atpic* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.atpic*, %struct.atpic** %3, align 8
  %45 = getelementptr inbounds %struct.atpic, %struct.atpic* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @VATPIC_CTR3(%struct.vatpic* %37, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %36, %17
  %49 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %50 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %49, i32 0, i32 1
  %51 = load %struct.atpic*, %struct.atpic** %50, align 8
  %52 = getelementptr inbounds %struct.atpic, %struct.atpic* %51, i64 0
  store %struct.atpic* %52, %struct.atpic** %3, align 8
  %53 = load %struct.atpic*, %struct.atpic** %3, align 8
  %54 = getelementptr inbounds %struct.atpic, %struct.atpic* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %48
  %58 = load %struct.atpic*, %struct.atpic** %3, align 8
  %59 = call i32 @vatpic_get_highest_irrpin(%struct.atpic* %58)
  store i32 %59, i32* %4, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %85

61:                                               ; preds = %57
  %62 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.atpic*, %struct.atpic** %3, align 8
  %65 = getelementptr inbounds %struct.atpic, %struct.atpic* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.atpic*, %struct.atpic** %3, align 8
  %68 = getelementptr inbounds %struct.atpic, %struct.atpic* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.atpic*, %struct.atpic** %3, align 8
  %71 = getelementptr inbounds %struct.atpic, %struct.atpic* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @VATPIC_CTR4(%struct.vatpic* %62, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.atpic*, %struct.atpic** %3, align 8
  %75 = getelementptr inbounds %struct.atpic, %struct.atpic* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %77 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @APIC_LVT_LINT0, align 4
  %80 = call i32 @lapic_set_local_intr(i32 %78, i32 -1, i32 %79)
  %81 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %82 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @vioapic_pulse_irq(i32 %83, i32 0)
  br label %97

85:                                               ; preds = %57, %48
  %86 = load %struct.vatpic*, %struct.vatpic** %2, align 8
  %87 = load %struct.atpic*, %struct.atpic** %3, align 8
  %88 = getelementptr inbounds %struct.atpic, %struct.atpic* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.atpic*, %struct.atpic** %3, align 8
  %91 = getelementptr inbounds %struct.atpic, %struct.atpic* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.atpic*, %struct.atpic** %3, align 8
  %94 = getelementptr inbounds %struct.atpic, %struct.atpic* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @VATPIC_CTR3(%struct.vatpic* %86, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %85, %61
  ret void
}

declare dso_local i32 @vatpic_get_highest_irrpin(%struct.atpic*) #1

declare dso_local i32 @VATPIC_CTR4(%struct.vatpic*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @vatpic_set_pinstate(%struct.vatpic*, i32, i32) #1

declare dso_local i32 @VATPIC_CTR3(%struct.vatpic*, i8*, i32, i32, i32) #1

declare dso_local i32 @lapic_set_local_intr(i32, i32, i32) #1

declare dso_local i32 @vioapic_pulse_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
