; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_read_tss_descriptor.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_read_tss_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_task_switch = type { i64, %struct.vm_guest_paging, i32 }
%struct.vm_guest_paging = type { i64 }
%struct.user_segment_descriptor = type { i32 }

@TSR_IRET = common dso_local global i64 0, align 8
@IDT_TS = common dso_local global i32 0, align 4
@IDT_GP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vm_task_switch*, i32, %struct.user_segment_descriptor*, i32*)* @read_tss_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tss_descriptor(i32 %0, %struct.vm_task_switch* %1, i32 %2, %struct.user_segment_descriptor* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_task_switch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.user_segment_descriptor*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vm_guest_paging, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.vm_task_switch* %1, %struct.vm_task_switch** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.user_segment_descriptor* %3, %struct.user_segment_descriptor** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @ISLDT(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @IDXSEL(i32 %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @desc_table_limit_check(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %5
  %30 = load %struct.vm_task_switch*, %struct.vm_task_switch** %8, align 8
  %31 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TSR_IRET, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IDT_TS, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.vm_task_switch*, %struct.vm_task_switch** %8, align 8
  %40 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sel_exception(i32 %36, i32 %37, i32 %38, i32 %41)
  br label %51

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @IDT_GP, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.vm_task_switch*, %struct.vm_task_switch** %8, align 8
  %48 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @sel_exception(i32 %44, i32 %45, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %43, %35
  store i32 1, i32* %6, align 4
  br label %64

52:                                               ; preds = %5
  %53 = load %struct.vm_task_switch*, %struct.vm_task_switch** %8, align 8
  %54 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %53, i32 0, i32 1
  %55 = bitcast %struct.vm_guest_paging* %12 to i8*
  %56 = bitcast %struct.vm_guest_paging* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  %57 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %12, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.user_segment_descriptor*, %struct.user_segment_descriptor** %10, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @desc_table_read(i32 %58, %struct.vm_guest_paging* %12, i32 %59, %struct.user_segment_descriptor* %60, i32* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %52, %51
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ISLDT(i32) #1

declare dso_local i64 @IDXSEL(i32) #1

declare dso_local i64 @desc_table_limit_check(i32, i32) #1

declare dso_local i32 @sel_exception(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @desc_table_read(i32, %struct.vm_guest_paging*, i32, %struct.user_segment_descriptor*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
