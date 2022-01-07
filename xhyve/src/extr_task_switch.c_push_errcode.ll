; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_push_errcode.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_push_errcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_guest_paging = type { i32, i32 }
%struct.iovec = type { i32 }
%struct.seg_desc = type { i32, i32, i32 }

@VM_REG_GUEST_CR0 = common dso_local global i32 0, align 4
@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@VM_REG_GUEST_SS = common dso_local global i32 0, align 4
@SDT_SYS386BSY = common dso_local global i32 0, align 4
@SDT_SYS386TSS = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSP = common dso_local global i32 0, align 4
@XHYVE_PROT_WRITE = common dso_local global i32 0, align 4
@IDT_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vm_guest_paging*, i32, i64, i32*)* @push_errcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_errcode(i32 %0, %struct.vm_guest_paging* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_guest_paging*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [2 x %struct.iovec], align 4
  %13 = alloca %struct.seg_desc, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.vm_guest_paging* %1, %struct.vm_guest_paging** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @VM_REG_GUEST_CR0, align 4
  %25 = call i64 @GETREG(i32 %23, i32 %24)
  store i64 %25, i64* %18, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %28 = call i64 @GETREG(i32 %26, i32 %27)
  store i64 %28, i64* %19, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %31 = call i64 @GETREG(i32 %29, i32 %30)
  store i64 %31, i64* %21, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %34 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %13, i32 0, i32 2
  %35 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %13, i32 0, i32 1
  %36 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %13, i32 0, i32 0
  %37 = call i32 @xh_vm_get_desc(i32 %32, i32 %33, i32* %34, i32* %35, i32* %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @SDT_SYS386BSY, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %5
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @SDT_SYS386TSS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %5
  store i32 4, i32* %15, align 4
  br label %51

50:                                               ; preds = %45
  store i32 2, i32* %15, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %13, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @SEG_DESC_DEF32(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 4, i32* %14, align 4
  br label %58

57:                                               ; preds = %51
  store i32 2, i32* %14, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @VM_REG_GUEST_RSP, align 4
  %61 = call i64 @GETREG(i32 %59, i32 %60)
  store i64 %61, i64* %20, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %20, align 8
  %65 = sub nsw i64 %64, %63
  store i64 %65, i64* %20, align 8
  %66 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %8, align 8
  %67 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %70 = load i64, i64* %20, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @XHYVE_PROT_WRITE, align 4
  %74 = call i64 @vie_calculate_gla(i32 %68, i32 %69, %struct.seg_desc* %13, i64 %70, i32 %71, i32 %72, i32 %73, i64* %17)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %58
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @IDT_SS, align 4
  %79 = load i64, i64* %21, align 8
  %80 = call i32 @sel_exception(i32 %77, i32 %78, i64 %79, i32 1)
  %81 = load i32*, i32** %11, align 8
  store i32 1, i32* %81, align 4
  store i32 0, i32* %6, align 4
  br label %125

82:                                               ; preds = %58
  %83 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %8, align 8
  %84 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i64, i64* %18, align 8
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %17, align 8
  %90 = call i64 @vie_alignment_check(i32 %85, i32 %86, i64 %87, i64 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %82
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @vm_inject_ac(i32 %93, i32 1)
  %95 = load i32*, i32** %11, align 8
  store i32 1, i32* %95, align 4
  store i32 0, i32* %6, align 4
  br label %125

96:                                               ; preds = %82
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %8, align 8
  %99 = load i64, i64* %17, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* @XHYVE_PROT_WRITE, align 4
  %103 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %12, i64 0, i64 0
  %104 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %12, i64 0, i64 0
  %105 = call i32 @nitems(%struct.iovec* %104)
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @xh_vm_copy_setup(i32 %97, %struct.vm_guest_paging* %98, i64 %99, i64 %101, i32 %102, %struct.iovec* %103, i32 %105, i32* %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %96
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %96
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %6, align 4
  br label %125

116:                                              ; preds = %110
  %117 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %12, i64 0, i64 0
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = call i32 @xh_vm_copyout(i64* %10, %struct.iovec* %117, i64 %119)
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @VM_REG_GUEST_RSP, align 4
  %123 = load i64, i64* %20, align 8
  %124 = call i32 @SETREG(i32 %121, i32 %122, i64 %123)
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %116, %114, %92, %76
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i64 @GETREG(i32, i32) #1

declare dso_local i32 @xh_vm_get_desc(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @SEG_DESC_DEF32(i32) #1

declare dso_local i64 @vie_calculate_gla(i32, i32, %struct.seg_desc*, i64, i32, i32, i32, i64*) #1

declare dso_local i32 @sel_exception(i32, i32, i64, i32) #1

declare dso_local i64 @vie_alignment_check(i32, i32, i64, i64, i64) #1

declare dso_local i32 @vm_inject_ac(i32, i32) #1

declare dso_local i32 @xh_vm_copy_setup(i32, %struct.vm_guest_paging*, i64, i64, i32, %struct.iovec*, i32, i32*) #1

declare dso_local i32 @nitems(%struct.iovec*) #1

declare dso_local i32 @xh_vm_copyout(i64*, %struct.iovec*, i64) #1

declare dso_local i32 @SETREG(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
