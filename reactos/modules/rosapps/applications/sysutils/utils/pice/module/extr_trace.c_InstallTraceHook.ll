; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_trace.c_InstallTraceHook.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_trace.c_InstallTraceHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"InstallTraceHook(OldInt1Handler=%0.8x)...\0A\00", align 1
@OldInt1Handler = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InstallTraceHook() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @OldInt1Handler, align 8
  %3 = trunc i64 %2 to i32
  %4 = call i32 @DPRINT(i32 %3)
  %5 = call i32 (...) @MaskIrqs()
  %6 = load i64, i64* @OldInt1Handler, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = call i64 asm "mov $$NewInt1Handler,$0", "=r,~{eax},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = call i64 @SetGlobalInt(i32 1, i64 %10)
  store i64 %11, i64* @OldInt1Handler, align 8
  br label %12

12:                                               ; preds = %8, %0
  %13 = call i32 (...) @UnmaskIrqs()
  %14 = load i32, i32* @TRUE, align 4
  ret i32 %14
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @MaskIrqs(...) #1

declare dso_local i64 @SetGlobalInt(i32, i64) #1

declare dso_local i32 @UnmaskIrqs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 522}
