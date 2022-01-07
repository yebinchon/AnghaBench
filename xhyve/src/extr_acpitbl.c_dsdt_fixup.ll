; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_dsdt_fixup.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_dsdt_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DSDT, unsupported PCI bus (%d)\0A\00", align 1
@dsdt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsdt_fixup(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @exit(i32 -1) #3
  unreachable

22:                                               ; preds = %7
  %23 = load i32, i32* @dsdt, align 4
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @acpitbl_write16(i32 %23, i32 182, i64 %24)
  %26 = load i32, i32* @dsdt, align 4
  %27 = load i64, i64* %10, align 8
  %28 = sub nsw i64 %27, 1
  %29 = call i32 @acpitbl_write16(i32 %26, i32 184, i64 %28)
  %30 = load i32, i32* @dsdt, align 4
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = sub nsw i64 %31, %32
  %34 = call i32 @acpitbl_write16(i32 %30, i32 188, i64 %33)
  %35 = load i32, i32* @dsdt, align 4
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @acpitbl_write32(i32 %35, i32 200, i64 %36)
  %38 = load i32, i32* @dsdt, align 4
  %39 = load i64, i64* %12, align 8
  %40 = sub nsw i64 %39, 1
  %41 = call i32 @acpitbl_write32(i32 %38, i32 204, i64 %40)
  %42 = load i32, i32* @dsdt, align 4
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = sub nsw i64 %43, %44
  %46 = call i32 @acpitbl_write32(i32 %42, i32 212, i64 %45)
  %47 = load i32, i32* @dsdt, align 4
  %48 = load i64, i64* %13, align 8
  %49 = call i32 @acpitbl_write64(i32 %47, i32 230, i64 %48)
  %50 = load i32, i32* @dsdt, align 4
  %51 = load i64, i64* %14, align 8
  %52 = sub nsw i64 %51, 1
  %53 = call i32 @acpitbl_write64(i32 %50, i32 238, i64 %52)
  %54 = load i32, i32* @dsdt, align 4
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %13, align 8
  %57 = sub nsw i64 %55, %56
  %58 = call i32 @acpitbl_write64(i32 %54, i32 254, i64 %57)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @acpitbl_write16(i32, i32, i64) #1

declare dso_local i32 @acpitbl_write32(i32, i32, i64) #1

declare dso_local i32 @acpitbl_write64(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
