; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_spinup_ap_realmode.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_spinup_ap_realmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XHYVE_PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@VM_REG_GUEST_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @spinup_ap_realmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spinup_ap_realmode(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XHYVE_PAGE_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @xh_vm_set_register(i32 %16, i32 %17, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %27 = call i32 @xh_vm_get_desc(i32 %25, i32 %26, i32* %8, i32* %9, i32* %10)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @XHYVE_PAGE_SHIFT, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @xh_vm_set_desc(i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @XHYVE_PAGE_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = ashr i32 %47, 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @xh_vm_set_register(i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  ret void
}

declare dso_local i32 @xh_vm_set_register(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xh_vm_get_desc(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @xh_vm_set_desc(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
