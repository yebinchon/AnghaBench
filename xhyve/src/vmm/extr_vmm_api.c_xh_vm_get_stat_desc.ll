; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_get_stat_desc.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_get_stat_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xh_vm_get_stat_desc.desc = internal global [128 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xh_vm_get_stat_desc(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @vmm_stat_desc_copy(i32 %4, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @xh_vm_get_stat_desc.desc, i32 0, i32 0), i32 128)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @xh_vm_get_stat_desc.desc, i64 0, i64 0), i8** %2, align 8
  br label %9

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i8*, i8** %2, align 8
  ret i8* %10
}

declare dso_local i64 @vmm_stat_desc_copy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
