; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_lapic.c_lapic_intr_msi.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_lapic.c_lapic_intr_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"lapic MSI addr: %#llx msg: %#llx\00", align 1
@MSI_X86_ADDR_MASK = common dso_local global i32 0, align 4
@MSI_X86_ADDR_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"lapic MSI invalid addr %#llx\00", align 1
@MSI_X86_ADDR_RH = common dso_local global i32 0, align 4
@MSI_X86_ADDR_LOG = common dso_local global i32 0, align 4
@APIC_DELMODE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"lapic MSI %s dest %#x, vec %d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@LAPIC_TRIG_EDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lapic_intr_msi(%struct.vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.vm*, %struct.vm** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @VM_CTR2(%struct.vm* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MSI_X86_ADDR_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @MSI_X86_ADDR_BASE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.vm*, %struct.vm** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @VM_CTR1(%struct.vm* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %4, align 4
  br label %59

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 12
  %28 = and i32 %27, 255
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MSI_X86_ADDR_RH, align 4
  %31 = load i32, i32* @MSI_X86_ADDR_LOG, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = load i32, i32* @MSI_X86_ADDR_RH, align 4
  %35 = load i32, i32* @MSI_X86_ADDR_LOG, align 4
  %36 = or i32 %34, %35
  %37 = icmp ne i32 %33, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @APIC_DELMODE_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 255
  store i32 %43, i32* %9, align 4
  %44 = load %struct.vm*, %struct.vm** %5, align 8
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @VM_CTR3(%struct.vm* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %48, i32 %49, i32 %50)
  %52 = load %struct.vm*, %struct.vm** %5, align 8
  %53 = load i32, i32* @LAPIC_TRIG_EDGE, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @vlapic_deliver_intr(%struct.vm* %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %25, %21
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @VM_CTR2(%struct.vm*, i8*, i32, i32) #1

declare dso_local i32 @VM_CTR1(%struct.vm*, i8*, i32) #1

declare dso_local i32 @VM_CTR3(%struct.vm*, i8*, i8*, i32, i32) #1

declare dso_local i32 @vlapic_deliver_intr(%struct.vm*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
