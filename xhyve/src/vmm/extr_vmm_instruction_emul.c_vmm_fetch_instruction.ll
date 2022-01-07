; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_vmm_fetch_instruction.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_vmm_fetch_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vm_guest_paging = type { i32 }
%struct.vie = type { i64, i32 }
%struct.vm_copyinfo = type { i32 }

@VIE_INST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"vmm_fetch_instruction: invalid length %d\0A\00", align 1
@XHYVE_PROT_READ = common dso_local global i32 0, align 4
@XHYVE_PROT_EXECUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmm_fetch_instruction(%struct.vm* %0, i32 %1, %struct.vm_guest_paging* %2, i32 %3, i32 %4, %struct.vie* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vm_guest_paging*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vie*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [2 x %struct.vm_copyinfo], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.vm_guest_paging* %2, %struct.vm_guest_paging** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.vie* %5, %struct.vie** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @VIE_INST_SIZE, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @xhyve_abort(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %7
  %26 = load i32, i32* @XHYVE_PROT_READ, align 4
  %27 = load i32, i32* @XHYVE_PROT_EXECUTE, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %18, align 4
  %29 = load %struct.vm*, %struct.vm** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %18, align 4
  %36 = getelementptr inbounds [2 x %struct.vm_copyinfo], [2 x %struct.vm_copyinfo]* %16, i64 0, i64 0
  %37 = getelementptr inbounds [2 x %struct.vm_copyinfo], [2 x %struct.vm_copyinfo]* %16, i64 0, i64 0
  %38 = call i32 @nitems(%struct.vm_copyinfo* %37)
  %39 = load i32*, i32** %15, align 8
  %40 = call i32 @vm_copy_setup(%struct.vm* %29, i32 %30, %struct.vm_guest_paging* %31, i32 %32, i64 %34, i32 %35, %struct.vm_copyinfo* %36, i32 %38, i32* %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %25
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %25
  %48 = load i32, i32* %17, align 4
  store i32 %48, i32* %8, align 4
  br label %69

49:                                               ; preds = %43
  %50 = load %struct.vm*, %struct.vm** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds [2 x %struct.vm_copyinfo], [2 x %struct.vm_copyinfo]* %16, i64 0, i64 0
  %53 = load %struct.vie*, %struct.vie** %14, align 8
  %54 = getelementptr inbounds %struct.vie, %struct.vie* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @vm_copyin(%struct.vm* %50, i32 %51, %struct.vm_copyinfo* %52, i32 %55, i64 %57)
  %59 = load %struct.vm*, %struct.vm** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = getelementptr inbounds [2 x %struct.vm_copyinfo], [2 x %struct.vm_copyinfo]* %16, i64 0, i64 0
  %62 = getelementptr inbounds [2 x %struct.vm_copyinfo], [2 x %struct.vm_copyinfo]* %16, i64 0, i64 0
  %63 = call i32 @nitems(%struct.vm_copyinfo* %62)
  %64 = call i32 @vm_copy_teardown(%struct.vm* %59, i32 %60, %struct.vm_copyinfo* %61, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.vie*, %struct.vie** %14, align 8
  %68 = getelementptr inbounds %struct.vie, %struct.vie* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %49, %47
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @xhyve_abort(i8*, i32) #1

declare dso_local i32 @vm_copy_setup(%struct.vm*, i32, %struct.vm_guest_paging*, i32, i64, i32, %struct.vm_copyinfo*, i32, i32*) #1

declare dso_local i32 @nitems(%struct.vm_copyinfo*) #1

declare dso_local i32 @vm_copyin(%struct.vm*, i32, %struct.vm_copyinfo*, i32, i64) #1

declare dso_local i32 @vm_copy_teardown(%struct.vm*, i32, %struct.vm_copyinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
