; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vmexit_rdmsr.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vmexit_rdmsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_exit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rdmsr to register %#x on vcpu %d\0A\00", align 1
@strictmsr = common dso_local global i64 0, align 8
@VMEXIT_CONTINUE = common dso_local global i32 0, align 4
@VM_REG_GUEST_RAX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_exit*, i32*)* @vmexit_rdmsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmexit_rdmsr(%struct.vm_exit* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_exit*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vm_exit* %0, %struct.vm_exit** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %13 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @emulate_rdmsr(i32 %11, i32 %16, i32* %6)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load i32, i32* @stderr, align 4
  %22 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %23 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  %30 = load i64, i64* @strictmsr, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vm_inject_gp(i32 %34)
  %36 = load i32, i32* @VMEXIT_CONTINUE, align 4
  store i32 %36, i32* %3, align 4
  br label %61

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @VM_REG_GUEST_RAX, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @xh_vm_set_register(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = ashr i32 %49, 32
  store i32 %50, i32* %8, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VM_REG_GUEST_RDX, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @xh_vm_set_register(i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* @VMEXIT_CONTINUE, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %38, %32
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @emulate_rdmsr(i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @vm_inject_gp(i32) #1

declare dso_local i32 @xh_vm_set_register(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
