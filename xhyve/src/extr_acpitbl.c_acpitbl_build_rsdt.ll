; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_acpitbl_build_rsdt.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_acpitbl_build_rsdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpitbl_build_rsdt.rsdt_tmpl = internal constant <{ [36 x i32], [16 x i32] }> <{ [36 x i32] [i32 82, i32 83, i32 68, i32 84, i32 52, i32 0, i32 0, i32 0, i32 1, i32 0, i32 66, i32 72, i32 89, i32 86, i32 69, i32 32, i32 66, i32 86, i32 82, i32 83, i32 68, i32 84, i32 32, i32 32, i32 1, i32 0, i32 0, i32 0, i32 73, i32 78, i32 84, i32 76, i32 40, i32 8, i32 20, i32 32], [16 x i32] zeroinitializer }>, align 16
@tb = common dso_local global i64 0, align 8
@RSDT_OFFSET = common dso_local global i64 0, align 8
@XHYVE_ACPI_BASE = common dso_local global i64 0, align 8
@MADT_OFFSET = common dso_local global i64 0, align 8
@FADT_OFFSET = common dso_local global i64 0, align 8
@HPET_OFFSET = common dso_local global i64 0, align 8
@MCFG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acpitbl_build_rsdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpitbl_build_rsdt() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @tb, align 8
  %3 = load i64, i64* @RSDT_OFFSET, align 8
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @memcpy(i8* %6, i32* getelementptr inbounds ([52 x i32], [52 x i32]* bitcast (<{ [36 x i32], [16 x i32] }>* @acpitbl_build_rsdt.rsdt_tmpl to [52 x i32]*), i64 0, i64 0), i32 52)
  %8 = load i8*, i8** %1, align 8
  %9 = load i64, i64* @XHYVE_ACPI_BASE, align 8
  %10 = load i64, i64* @MADT_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = call i32 @acpitbl_write32(i8* %8, i32 36, i32 %12)
  %14 = load i8*, i8** %1, align 8
  %15 = load i64, i64* @XHYVE_ACPI_BASE, align 8
  %16 = load i64, i64* @FADT_OFFSET, align 8
  %17 = add nsw i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32 @acpitbl_write32(i8* %14, i32 40, i32 %18)
  %20 = load i8*, i8** %1, align 8
  %21 = load i64, i64* @XHYVE_ACPI_BASE, align 8
  %22 = load i64, i64* @HPET_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @acpitbl_write32(i8* %20, i32 44, i32 %24)
  %26 = load i8*, i8** %1, align 8
  %27 = load i64, i64* @XHYVE_ACPI_BASE, align 8
  %28 = load i64, i64* @MCFG_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @acpitbl_write32(i8* %26, i32 48, i32 %30)
  %32 = load i8*, i8** %1, align 8
  %33 = load i8*, i8** %1, align 8
  %34 = call i32 @acpitbl_checksum(i8* %33, i32 52)
  %35 = call i32 @acpitbl_write8(i8* %32, i32 9, i32 %34)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @acpitbl_write32(i8*, i32, i32) #1

declare dso_local i32 @acpitbl_write8(i8*, i32, i32) #1

declare dso_local i32 @acpitbl_checksum(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
