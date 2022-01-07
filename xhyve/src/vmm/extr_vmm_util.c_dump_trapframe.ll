; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_util.c_dump_trapframe.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_util.c_dump_trapframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }

@rdi = common dso_local global i32 0, align 4
@rsi = common dso_local global i32 0, align 4
@rdx = common dso_local global i32 0, align 4
@rcx = common dso_local global i32 0, align 4
@r8 = common dso_local global i32 0, align 4
@r9 = common dso_local global i32 0, align 4
@rax = common dso_local global i32 0, align 4
@rbx = common dso_local global i32 0, align 4
@rbp = common dso_local global i32 0, align 4
@r10 = common dso_local global i32 0, align 4
@r11 = common dso_local global i32 0, align 4
@r12 = common dso_local global i32 0, align 4
@r13 = common dso_local global i32 0, align 4
@r14 = common dso_local global i32 0, align 4
@r15 = common dso_local global i32 0, align 4
@trapno = common dso_local global i32 0, align 4
@addr = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@err = common dso_local global i32 0, align 4
@rip = common dso_local global i32 0, align 4
@rflags = common dso_local global i32 0, align 4
@rsp = common dso_local global i32 0, align 4
@cs = common dso_local global i32 0, align 4
@ss = common dso_local global i32 0, align 4
@fs = common dso_local global i32 0, align 4
@gs = common dso_local global i32 0, align 4
@es = common dso_local global i32 0, align 4
@ds = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_trapframe(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %3 = load i32, i32* @rdi, align 4
  %4 = call i32 @DUMP_REG(i32 %3)
  %5 = load i32, i32* @rsi, align 4
  %6 = call i32 @DUMP_REG(i32 %5)
  %7 = load i32, i32* @rdx, align 4
  %8 = call i32 @DUMP_REG(i32 %7)
  %9 = load i32, i32* @rcx, align 4
  %10 = call i32 @DUMP_REG(i32 %9)
  %11 = load i32, i32* @r8, align 4
  %12 = call i32 @DUMP_REG(i32 %11)
  %13 = load i32, i32* @r9, align 4
  %14 = call i32 @DUMP_REG(i32 %13)
  %15 = load i32, i32* @rax, align 4
  %16 = call i32 @DUMP_REG(i32 %15)
  %17 = load i32, i32* @rbx, align 4
  %18 = call i32 @DUMP_REG(i32 %17)
  %19 = load i32, i32* @rbp, align 4
  %20 = call i32 @DUMP_REG(i32 %19)
  %21 = load i32, i32* @r10, align 4
  %22 = call i32 @DUMP_REG(i32 %21)
  %23 = load i32, i32* @r11, align 4
  %24 = call i32 @DUMP_REG(i32 %23)
  %25 = load i32, i32* @r12, align 4
  %26 = call i32 @DUMP_REG(i32 %25)
  %27 = load i32, i32* @r13, align 4
  %28 = call i32 @DUMP_REG(i32 %27)
  %29 = load i32, i32* @r14, align 4
  %30 = call i32 @DUMP_REG(i32 %29)
  %31 = load i32, i32* @r15, align 4
  %32 = call i32 @DUMP_REG(i32 %31)
  %33 = load i32, i32* @trapno, align 4
  %34 = call i32 @DUMP_REG(i32 %33)
  %35 = load i32, i32* @addr, align 4
  %36 = call i32 @DUMP_REG(i32 %35)
  %37 = load i32, i32* @flags, align 4
  %38 = call i32 @DUMP_REG(i32 %37)
  %39 = load i32, i32* @err, align 4
  %40 = call i32 @DUMP_REG(i32 %39)
  %41 = load i32, i32* @rip, align 4
  %42 = call i32 @DUMP_REG(i32 %41)
  %43 = load i32, i32* @rflags, align 4
  %44 = call i32 @DUMP_REG(i32 %43)
  %45 = load i32, i32* @rsp, align 4
  %46 = call i32 @DUMP_REG(i32 %45)
  %47 = load i32, i32* @cs, align 4
  %48 = call i32 @DUMP_SEG(i32 %47)
  %49 = load i32, i32* @ss, align 4
  %50 = call i32 @DUMP_SEG(i32 %49)
  %51 = load i32, i32* @fs, align 4
  %52 = call i32 @DUMP_SEG(i32 %51)
  %53 = load i32, i32* @gs, align 4
  %54 = call i32 @DUMP_SEG(i32 %53)
  %55 = load i32, i32* @es, align 4
  %56 = call i32 @DUMP_SEG(i32 %55)
  %57 = load i32, i32* @ds, align 4
  %58 = call i32 @DUMP_SEG(i32 %57)
  ret void
}

declare dso_local i32 @DUMP_REG(i32) #1

declare dso_local i32 @DUMP_SEG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
