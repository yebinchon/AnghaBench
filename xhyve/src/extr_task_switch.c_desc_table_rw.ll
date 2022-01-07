; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_desc_table_rw.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_desc_table_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_guest_paging = type { i32 }
%struct.user_segment_descriptor = type { i32 }
%struct.iovec = type { i32 }

@VM_REG_GUEST_LDTR = common dso_local global i32 0, align 4
@VM_REG_GUEST_GDTR = common dso_local global i32 0, align 4
@XHYVE_PROT_READ = common dso_local global i32 0, align 4
@XHYVE_PROT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vm_guest_paging*, i32, %struct.user_segment_descriptor*, i32, i32*)* @desc_table_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @desc_table_rw(i32 %0, %struct.vm_guest_paging* %1, i32 %2, %struct.user_segment_descriptor* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_guest_paging*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.user_segment_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [2 x %struct.iovec], align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.vm_guest_paging* %1, %struct.vm_guest_paging** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.user_segment_descriptor* %3, %struct.user_segment_descriptor** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @ISLDT(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  br label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @VM_REG_GUEST_GDTR, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %19, align 4
  %31 = call i32 @xh_vm_get_desc(i32 %29, i32 %30, i64* %15, i64* %16, i64* %17)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* %16, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @SEL_LIMIT(i32 %37)
  %39 = icmp sge i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %9, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @SEL_START(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %27
  %51 = load i32, i32* @XHYVE_PROT_READ, align 4
  br label %54

52:                                               ; preds = %27
  %53 = load i32, i32* @XHYVE_PROT_WRITE, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %14, i64 0, i64 0
  %57 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %14, i64 0, i64 0
  %58 = call i32 @nitems(%struct.iovec* %57)
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @xh_vm_copy_setup(i32 %42, %struct.vm_guest_paging* %43, i64 %47, i32 4, i32 %55, %struct.iovec* %56, i32 %58, i32* %59)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %54
  %68 = load i32, i32* %18, align 4
  store i32 %68, i32* %7, align 4
  br label %81

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %14, i64 0, i64 0
  %74 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %11, align 8
  %75 = call i32 @xh_vm_copyin(%struct.iovec* %73, %struct.user_segment_descriptor* %74, i32 4)
  br label %80

76:                                               ; preds = %69
  %77 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %11, align 8
  %78 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %14, i64 0, i64 0
  %79 = call i32 @xh_vm_copyout(%struct.user_segment_descriptor* %77, %struct.iovec* %78, i32 4)
  br label %80

80:                                               ; preds = %76, %72
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %67
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i64 @ISLDT(i32) #1

declare dso_local i32 @xh_vm_get_desc(i32, i32, i64*, i64*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @SEL_LIMIT(i32) #1

declare dso_local i32 @xh_vm_copy_setup(i32, %struct.vm_guest_paging*, i64, i32, i32, %struct.iovec*, i32, i32*) #1

declare dso_local i64 @SEL_START(i32) #1

declare dso_local i32 @nitems(%struct.iovec*) #1

declare dso_local i32 @xh_vm_copyin(%struct.iovec*, %struct.user_segment_descriptor*, i32) #1

declare dso_local i32 @xh_vm_copyout(%struct.user_segment_descriptor*, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
