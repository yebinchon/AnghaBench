; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_acpitbl_build_rdsp.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_acpitbl_build_rdsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpitbl_build_rdsp.rdsp_tmpl = internal constant <{ [21 x i32], [15 x i32] }> <{ [21 x i32] [i32 82, i32 83, i32 68, i32 32, i32 80, i32 84, i32 82, i32 32, i32 0, i32 66, i32 72, i32 89, i32 86, i32 69, i32 32, i32 2, i32 0, i32 0, i32 0, i32 0, i32 36], [15 x i32] zeroinitializer }>, align 16
@tb = common dso_local global i64 0, align 8
@XHYVE_ACPI_BASE = common dso_local global i64 0, align 8
@RSDT_OFFSET = common dso_local global i64 0, align 8
@XSDT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acpitbl_build_rdsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpitbl_build_rdsp() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @tb, align 8
  %3 = add i64 %2, 0
  %4 = inttoptr i64 %3 to i8*
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @memcpy(i8* %5, i32* getelementptr inbounds ([36 x i32], [36 x i32]* bitcast (<{ [21 x i32], [15 x i32] }>* @acpitbl_build_rdsp.rdsp_tmpl to [36 x i32]*), i64 0, i64 0), i32 36)
  %7 = load i8*, i8** %1, align 8
  %8 = load i64, i64* @XHYVE_ACPI_BASE, align 8
  %9 = load i64, i64* @RSDT_OFFSET, align 8
  %10 = add nsw i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = call i32 @acpitbl_write32(i8* %7, i32 16, i32 %11)
  %13 = load i8*, i8** %1, align 8
  %14 = load i64, i64* @XHYVE_ACPI_BASE, align 8
  %15 = load i64, i64* @XSDT_OFFSET, align 8
  %16 = add nsw i64 %14, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @acpitbl_write64(i8* %13, i32 24, i32 %17)
  %19 = load i8*, i8** %1, align 8
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 @acpitbl_checksum(i8* %20, i32 20)
  %22 = call i32 @acpitbl_write8(i8* %19, i32 8, i32 %21)
  %23 = load i8*, i8** %1, align 8
  %24 = load i8*, i8** %1, align 8
  %25 = call i32 @acpitbl_checksum(i8* %24, i32 36)
  %26 = call i32 @acpitbl_write8(i8* %23, i32 32, i32 %25)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @acpitbl_write32(i8*, i32, i32) #1

declare dso_local i32 @acpitbl_write64(i8*, i32, i32) #1

declare dso_local i32 @acpitbl_write8(i8*, i32, i32) #1

declare dso_local i32 @acpitbl_checksum(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
