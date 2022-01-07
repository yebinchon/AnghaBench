; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_acpitbl_build_mcfg.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_acpitbl.c_acpitbl_build_mcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpitbl_build_mcfg.mcfg_tmpl = internal constant [60 x i32] [i32 77, i32 67, i32 70, i32 71, i32 60, i32 0, i32 0, i32 0, i32 1, i32 0, i32 66, i32 72, i32 89, i32 86, i32 69, i32 32, i32 66, i32 86, i32 77, i32 67, i32 70, i32 71, i32 32, i32 32, i32 1, i32 0, i32 0, i32 0, i32 73, i32 78, i32 84, i32 76, i32 40, i32 8, i32 20, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0, i32 0], align 16
@tb = common dso_local global i64 0, align 8
@MCFG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acpitbl_build_mcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpitbl_build_mcfg() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @tb, align 8
  %3 = load i64, i64* @MCFG_OFFSET, align 8
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @memcpy(i8* %6, i32* getelementptr inbounds ([60 x i32], [60 x i32]* @acpitbl_build_mcfg.mcfg_tmpl, i64 0, i64 0), i32 60)
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 (...) @pci_ecfg_base()
  %10 = call i32 @acpitbl_write64(i8* %8, i32 44, i32 %9)
  %11 = load i8*, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @acpitbl_checksum(i8* %12, i32 60)
  %14 = call i32 @acpitbl_write8(i8* %11, i32 9, i32 %13)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @acpitbl_write64(i8*, i32, i32) #1

declare dso_local i32 @pci_ecfg_base(...) #1

declare dso_local i32 @acpitbl_write8(i8*, i32, i32) #1

declare dso_local i32 @acpitbl_checksum(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
