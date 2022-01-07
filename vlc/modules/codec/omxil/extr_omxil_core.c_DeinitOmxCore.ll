; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_omxil_core.c_DeinitOmxCore.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_omxil_core.c_DeinitOmxCore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@omx_core_mutex = common dso_local global i32 0, align 4
@omx_refcount = common dso_local global i64 0, align 8
@dll_handle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeinitOmxCore() #0 {
  %1 = call i32 @vlc_mutex_lock(i32* @omx_core_mutex)
  %2 = load i64, i64* @omx_refcount, align 8
  %3 = add nsw i64 %2, -1
  store i64 %3, i64* @omx_refcount, align 8
  %4 = load i64, i64* @omx_refcount, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = call i32 (...) @pf_deinit()
  %8 = load i32, i32* @dll_handle, align 4
  %9 = call i32 @dll_close(i32 %8)
  %10 = call i32 (...) @CloseExtraDll()
  br label %11

11:                                               ; preds = %6, %0
  %12 = call i32 @vlc_mutex_unlock(i32* @omx_core_mutex)
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @pf_deinit(...) #1

declare dso_local i32 @dll_close(i32) #1

declare dso_local i32 @CloseExtraDll(...) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
