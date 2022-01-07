; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_acpitbl_build_madt.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_acpitbl_build_madt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpitbl_build_madt.madt_head_tmpl = internal constant [44 x i32] [i32 65, i32 80, i32 73, i32 67, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 66, i32 72, i32 89, i32 86, i32 69, i32 32, i32 66, i32 86, i32 77, i32 65, i32 68, i32 84, i32 32, i32 32, i32 1, i32 0, i32 0, i32 0, i32 73, i32 78, i32 84, i32 76, i32 40, i32 8, i32 20, i32 32, i32 0, i32 0, i32 224, i32 254, i32 1, i32 0, i32 0, i32 0], align 16
@acpitbl_build_madt.madt_apic_tmpl = internal constant [8 x i32] [i32 0, i32 8, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0], align 16
@acpitbl_build_madt.madt_tail_tmpl = internal constant [38 x i32] [i32 1, i32 12, i32 0, i32 0, i32 0, i32 0, i32 192, i32 254, i32 0, i32 0, i32 0, i32 0, i32 2, i32 10, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 5, i32 0, i32 2, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 0, i32 4, i32 6, i32 255, i32 5, i32 0, i32 1], align 16
@tb = common dso_local global i64 0, align 8
@MADT_OFFSET = common dso_local global i64 0, align 8
@acpi_ncpu = common dso_local global i32 0, align 4
@SCI_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acpitbl_build_madt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpitbl_build_madt() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i64, i64* @tb, align 8
  %6 = load i64, i64* @MADT_OFFSET, align 8
  %7 = add i64 %5, %6
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = call i32 @memcpy(i8* %9, i32* getelementptr inbounds ([44 x i32], [44 x i32]* @acpitbl_build_madt.madt_head_tmpl, i64 0, i64 0), i32 44)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %33, %0
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @acpi_ncpu, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load i64, i64* @tb, align 8
  %17 = load i64, i64* @MADT_OFFSET, align 8
  %18 = add nsw i64 %17, 44
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 8, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = add i64 %16, %22
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %2, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @memcpy(i8* %25, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @acpitbl_build_madt.madt_apic_tmpl, i64 0, i64 0), i32 8)
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @acpitbl_write8(i8* %27, i32 2, i32 %28)
  %30 = load i8*, i8** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @acpitbl_write8(i8* %30, i32 3, i32 %31)
  br label %33

33:                                               ; preds = %15
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %11

36:                                               ; preds = %11
  %37 = load i64, i64* @tb, align 8
  %38 = load i64, i64* @MADT_OFFSET, align 8
  %39 = add nsw i64 %38, 44
  %40 = load i32, i32* @acpi_ncpu, align 4
  %41 = mul nsw i32 8, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = add i64 %37, %43
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %3, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @memcpy(i8* %46, i32* getelementptr inbounds ([38 x i32], [38 x i32]* @acpitbl_build_madt.madt_tail_tmpl, i64 0, i64 0), i32 38)
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @acpitbl_write8(i8* %48, i32 2, i32 0)
  %50 = load i8*, i8** %3, align 8
  %51 = load i32, i32* @SCI_INT, align 4
  %52 = call i32 @acpitbl_write8(i8* %50, i32 25, i32 %51)
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* @SCI_INT, align 4
  %55 = call i32 @acpitbl_write32(i8* %53, i32 26, i32 %54)
  %56 = load i8*, i8** %1, align 8
  %57 = load i32, i32* @acpi_ncpu, align 4
  %58 = mul nsw i32 8, %57
  %59 = add nsw i32 44, %58
  %60 = add nsw i32 %59, 38
  %61 = call i32 @acpitbl_write32(i8* %56, i32 4, i32 %60)
  %62 = load i8*, i8** %1, align 8
  %63 = load i8*, i8** %1, align 8
  %64 = load i32, i32* @acpi_ncpu, align 4
  %65 = mul nsw i32 8, %64
  %66 = add nsw i32 44, %65
  %67 = add nsw i32 %66, 38
  %68 = sext i32 %67 to i64
  %69 = call i32 @acpitbl_checksum(i8* %63, i64 %68)
  %70 = call i32 @acpitbl_write8(i8* %62, i32 9, i32 %69)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @acpitbl_write8(i8*, i32, i32) #1

declare dso_local i32 @acpitbl_write32(i8*, i32, i32) #1

declare dso_local i32 @acpitbl_checksum(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
