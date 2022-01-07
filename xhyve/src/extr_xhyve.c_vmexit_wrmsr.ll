; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vmexit_wrmsr.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vmexit_wrmsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_exit = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"wrmsr to register %#x(%#llx) on vcpu %d\0A\00", align 1
@strictmsr = common dso_local global i64 0, align 8
@VMEXIT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_exit*, i32*)* @vmexit_wrmsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmexit_wrmsr(%struct.vm_exit* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_exit*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.vm_exit* %0, %struct.vm_exit** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %10 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %15 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @emulate_wrmsr(i32 %8, i32 %13, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %25 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %30 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %33, i32 %35)
  %37 = load i64, i64* @strictmsr, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vm_inject_gp(i32 %41)
  %43 = load i32, i32* @VMEXIT_CONTINUE, align 4
  store i32 %43, i32* %3, align 4
  br label %47

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32, i32* @VMEXIT_CONTINUE, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %39
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @emulate_wrmsr(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @vm_inject_gp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
