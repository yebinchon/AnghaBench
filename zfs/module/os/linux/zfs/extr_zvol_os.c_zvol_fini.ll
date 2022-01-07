; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zvol_os.c_zvol_fini.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zvol_os.c_zvol_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zvol_major = common dso_local global i32 0, align 4
@MINORBITS = common dso_local global i64 0, align 8
@ZVOL_DRIVER = common dso_local global i32 0, align 4
@zvol_taskq = common dso_local global i32 0, align 4
@zvol_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zvol_fini() #0 {
  %1 = call i32 (...) @zvol_fini_impl()
  %2 = load i32, i32* @zvol_major, align 4
  %3 = call i32 @MKDEV(i32 %2, i32 0)
  %4 = load i64, i64* @MINORBITS, align 8
  %5 = shl i64 1, %4
  %6 = call i32 @blk_unregister_region(i32 %3, i64 %5)
  %7 = load i32, i32* @zvol_major, align 4
  %8 = load i32, i32* @ZVOL_DRIVER, align 4
  %9 = call i32 @unregister_blkdev(i32 %7, i32 %8)
  %10 = load i32, i32* @zvol_taskq, align 4
  %11 = call i32 @taskq_destroy(i32 %10)
  %12 = call i32 @ida_destroy(i32* @zvol_ida)
  ret void
}

declare dso_local i32 @zvol_fini_impl(...) #1

declare dso_local i32 @blk_unregister_region(i32, i64) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @unregister_blkdev(i32, i32) #1

declare dso_local i32 @taskq_destroy(i32) #1

declare dso_local i32 @ida_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
