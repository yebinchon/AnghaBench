; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_acpitbl_build_fadt.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_acpitbl_build_fadt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpitbl_build_fadt.fadt_tmpl = internal constant <{ [260 x i32], [8 x i32] }> <{ [260 x i32] [i32 70, i32 65, i32 67, i32 80, i32 12, i32 1, i32 0, i32 0, i32 5, i32 0, i32 66, i32 72, i32 89, i32 86, i32 69, i32 32, i32 66, i32 86, i32 70, i32 65, i32 67, i32 80, i32 32, i32 32, i32 1, i32 0, i32 0, i32 0, i32 73, i32 78, i32 84, i32 76, i32 40, i32 8, i32 20, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50, i32 20, i32 0, i32 0, i32 37, i32 21, i32 8, i32 0, i32 1, i32 8, i32 0, i32 1, i32 249, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 32, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 32, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 8, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 8, i32 0, i32 1], [8 x i32] zeroinitializer }>, align 16
@tb = common dso_local global i64 0, align 8
@FADT_OFFSET = common dso_local global i64 0, align 8
@XHYVE_ACPI_BASE = common dso_local global i64 0, align 8
@FACS_OFFSET = common dso_local global i64 0, align 8
@DSDT_OFFSET = common dso_local global i64 0, align 8
@SCI_INT = common dso_local global i32 0, align 4
@SMI_CMD = common dso_local global i64 0, align 8
@BHYVE_ACPI_ENABLE = common dso_local global i32 0, align 4
@BHYVE_ACPI_DISABLE = common dso_local global i32 0, align 4
@PM1A_EVT_ADDR = common dso_local global i64 0, align 8
@PM1A_CNT_ADDR = common dso_local global i64 0, align 8
@IO_PMTMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acpitbl_build_fadt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpitbl_build_fadt() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @tb, align 8
  %3 = load i64, i64* @FADT_OFFSET, align 8
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @memcpy(i8* %6, i32* getelementptr inbounds ([268 x i32], [268 x i32]* bitcast (<{ [260 x i32], [8 x i32] }>* @acpitbl_build_fadt.fadt_tmpl to [268 x i32]*), i64 0, i64 0), i32 268)
  %8 = load i8*, i8** %1, align 8
  %9 = load i64, i64* @XHYVE_ACPI_BASE, align 8
  %10 = load i64, i64* @FACS_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @acpitbl_write32(i8* %8, i32 36, i64 %11)
  %13 = load i8*, i8** %1, align 8
  %14 = load i64, i64* @XHYVE_ACPI_BASE, align 8
  %15 = load i64, i64* @DSDT_OFFSET, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @acpitbl_write32(i8* %13, i32 40, i64 %16)
  %18 = load i8*, i8** %1, align 8
  %19 = load i32, i32* @SCI_INT, align 4
  %20 = call i32 @acpitbl_write16(i8* %18, i32 46, i32 %19)
  %21 = load i8*, i8** %1, align 8
  %22 = load i64, i64* @SMI_CMD, align 8
  %23 = call i32 @acpitbl_write32(i8* %21, i32 48, i64 %22)
  %24 = load i8*, i8** %1, align 8
  %25 = load i32, i32* @BHYVE_ACPI_ENABLE, align 4
  %26 = call i32 @acpitbl_write8(i8* %24, i32 52, i32 %25)
  %27 = load i8*, i8** %1, align 8
  %28 = load i32, i32* @BHYVE_ACPI_DISABLE, align 4
  %29 = call i32 @acpitbl_write8(i8* %27, i32 53, i32 %28)
  %30 = load i8*, i8** %1, align 8
  %31 = load i64, i64* @PM1A_EVT_ADDR, align 8
  %32 = call i32 @acpitbl_write32(i8* %30, i32 56, i64 %31)
  %33 = load i8*, i8** %1, align 8
  %34 = load i64, i64* @PM1A_CNT_ADDR, align 8
  %35 = call i32 @acpitbl_write32(i8* %33, i32 64, i64 %34)
  %36 = load i8*, i8** %1, align 8
  %37 = load i64, i64* @IO_PMTMR, align 8
  %38 = call i32 @acpitbl_write32(i8* %36, i32 76, i64 %37)
  %39 = load i8*, i8** %1, align 8
  %40 = load i64, i64* @XHYVE_ACPI_BASE, align 8
  %41 = load i64, i64* @FACS_OFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @acpitbl_write64(i8* %39, i32 132, i32 %43)
  %45 = load i8*, i8** %1, align 8
  %46 = load i64, i64* @XHYVE_ACPI_BASE, align 8
  %47 = load i64, i64* @DSDT_OFFSET, align 8
  %48 = add nsw i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @acpitbl_write64(i8* %45, i32 140, i32 %49)
  %51 = load i8*, i8** %1, align 8
  %52 = load i64, i64* @PM1A_EVT_ADDR, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @acpitbl_write64(i8* %51, i32 152, i32 %53)
  %55 = load i8*, i8** %1, align 8
  %56 = load i64, i64* @PM1A_CNT_ADDR, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @acpitbl_write64(i8* %55, i32 176, i32 %57)
  %59 = load i8*, i8** %1, align 8
  %60 = load i64, i64* @IO_PMTMR, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @acpitbl_write64(i8* %59, i32 212, i32 %61)
  %63 = load i8*, i8** %1, align 8
  %64 = load i8*, i8** %1, align 8
  %65 = call i32 @acpitbl_checksum(i8* %64, i32 268)
  %66 = call i32 @acpitbl_write8(i8* %63, i32 9, i32 %65)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @acpitbl_write32(i8*, i32, i64) #1

declare dso_local i32 @acpitbl_write16(i8*, i32, i32) #1

declare dso_local i32 @acpitbl_write8(i8*, i32, i32) #1

declare dso_local i32 @acpitbl_write64(i8*, i32, i32) #1

declare dso_local i32 @acpitbl_checksum(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
