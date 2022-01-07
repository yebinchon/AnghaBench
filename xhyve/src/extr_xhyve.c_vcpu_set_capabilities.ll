; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vcpu_set_capabilities.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_vcpu_set_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_CAP_HALT_EXIT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"VM exit on HLT not supported\0A\00", align 1
@BSP = common dso_local global i32 0, align 4
@vmexit_hlt = common dso_local global i32 0, align 4
@handler = common dso_local global i32* null, align 8
@VM_EXITCODE_HLT = common dso_local global i64 0, align 8
@VM_CAP_PAUSE_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"SMP mux requested, no pause support\0A\00", align 1
@vmexit_pause = common dso_local global i32 0, align 4
@VM_EXITCODE_PAUSE = common dso_local global i64 0, align 8
@x2apic_mode = common dso_local global i64 0, align 8
@X2APIC_ENABLED = common dso_local global i32 0, align 4
@X2APIC_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to set x2apic state (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcpu_set_capabilities(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i64 (...) @fbsdrun_vmexit_on_hlt()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @VM_CAP_HALT_EXIT, align 4
  %10 = call i32 @xh_vm_get_capability(i32 %8, i32 %9, i32* %4)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %7
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @VM_CAP_HALT_EXIT, align 4
  %20 = call i32 @xh_vm_set_capability(i32 %18, i32 %19, i32 1)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @BSP, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32, i32* @vmexit_hlt, align 4
  %26 = load i32*, i32** @handler, align 8
  %27 = load i64, i64* @VM_EXITCODE_HLT, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %17
  br label %30

30:                                               ; preds = %29, %1
  %31 = call i64 (...) @fbsdrun_vmexit_on_pause()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @VM_CAP_PAUSE_EXIT, align 4
  %36 = call i32 @xh_vm_get_capability(i32 %34, i32 %35, i32* %4)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %33
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @VM_CAP_PAUSE_EXIT, align 4
  %46 = call i32 @xh_vm_set_capability(i32 %44, i32 %45, i32 1)
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @BSP, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* @vmexit_pause, align 4
  %52 = load i32*, i32** @handler, align 8
  %53 = load i64, i64* @VM_EXITCODE_PAUSE, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %43
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i64, i64* @x2apic_mode, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @X2APIC_ENABLED, align 4
  %62 = call i32 @xh_vm_set_x2apic_state(i32 %60, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %56
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @X2APIC_DISABLED, align 4
  %66 = call i32 @xh_vm_set_x2apic_state(i32 %64, i32 %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @stderr, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = call i32 @exit(i32 1) #3
  unreachable

75:                                               ; preds = %67
  ret void
}

declare dso_local i64 @fbsdrun_vmexit_on_hlt(...) #1

declare dso_local i32 @xh_vm_get_capability(i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @xh_vm_set_capability(i32, i32, i32) #1

declare dso_local i64 @fbsdrun_vmexit_on_pause(...) #1

declare dso_local i32 @xh_vm_set_x2apic_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
