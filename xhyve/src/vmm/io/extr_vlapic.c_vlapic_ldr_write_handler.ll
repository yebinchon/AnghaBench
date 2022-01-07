; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_ldr_write_handler.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_ldr_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { %struct.LAPIC* }
%struct.LAPIC = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"ignoring write to LDR in x2apic mode: %#x\00", align 1
@APIC_LDR_RESERVED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"vlapic LDR set to %#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_ldr_write_handler(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  %3 = alloca %struct.LAPIC*, align 8
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %4 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %5 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %4, i32 0, i32 0
  %6 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  store %struct.LAPIC* %6, %struct.LAPIC** %3, align 8
  %7 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %8 = call i64 @x2apic(%struct.vlapic* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %12 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %13 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @VLAPIC_CTR1(%struct.vlapic* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %17 = call i32 @x2apic_ldr(%struct.vlapic* %16)
  %18 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %19 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %33

20:                                               ; preds = %1
  %21 = load i64, i64* @APIC_LDR_RESERVED, align 8
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, -1
  %24 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %25 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %29 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %30 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @VLAPIC_CTR1(%struct.vlapic* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %20, %10
  ret void
}

declare dso_local i64 @x2apic(%struct.vlapic*) #1

declare dso_local i32 @VLAPIC_CTR1(%struct.vlapic*, i8*, i32) #1

declare dso_local i32 @x2apic_ldr(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
