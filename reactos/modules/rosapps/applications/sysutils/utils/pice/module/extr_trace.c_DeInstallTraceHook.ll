; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_trace.c_DeInstallTraceHook.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_trace.c_DeInstallTraceHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"DeInstallTraceHook(OldInt1Handler=%0.8x)...\0A\00", align 1
@OldInt1Handler = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeInstallTraceHook() #0 {
  %1 = load i64, i64* @OldInt1Handler, align 8
  %2 = trunc i64 %1 to i32
  %3 = call i32 @DPRINT(i32 %2)
  %4 = call i32 (...) @MaskIrqs()
  %5 = load i64, i64* @OldInt1Handler, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i64, i64* @OldInt1Handler, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 @SetGlobalInt(i32 1, i32 %9)
  store i64 0, i64* @OldInt1Handler, align 8
  br label %11

11:                                               ; preds = %7, %0
  %12 = call i32 (...) @UnmaskIrqs()
  ret void
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @MaskIrqs(...) #1

declare dso_local i32 @SetGlobalInt(i32, i32) #1

declare dso_local i32 @UnmaskIrqs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
