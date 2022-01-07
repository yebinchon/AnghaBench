; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_destroy.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xh_vm_destroy() #0 {
  %1 = load i32*, i32** @vm, align 8
  %2 = icmp ne i32* %1, null
  %3 = zext i1 %2 to i32
  %4 = call i32 @assert(i32 %3)
  %5 = load i32*, i32** @vm, align 8
  %6 = call i32 @vm_destroy(i32* %5)
  %7 = call i64 (...) @vmm_cleanup()
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32* null, i32** @vm, align 8
  br label %10

10:                                               ; preds = %9, %0
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_destroy(i32*) #1

declare dso_local i64 @vmm_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
