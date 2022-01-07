; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_OP_EX.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_OP_EX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mod = common dso_local global i32 0, align 4
@REX_EXTZ = common dso_local global i32 0, align 4
@rex = common dso_local global i32 0, align 4
@MODRM_CHECK = common dso_local global i32 0, align 4
@codep = common dso_local global i32 0, align 4
@scratchbuf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%%xmm%d\00", align 1
@rm = common dso_local global i32 0, align 4
@intel_syntax = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_EX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_EX(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @mod, align 4
  %7 = icmp ne i32 %6, 3
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @OP_E(i32 %9, i32 %10)
  br label %33

12:                                               ; preds = %2
  %13 = load i32, i32* @REX_EXTZ, align 4
  %14 = call i32 @USED_REX(i32 %13)
  %15 = load i32, i32* @rex, align 4
  %16 = load i32, i32* @REX_EXTZ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 8, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %12
  %21 = load i32, i32* @MODRM_CHECK, align 4
  %22 = load i32, i32* @codep, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @codep, align 4
  %24 = load i64, i64* @scratchbuf, align 8
  %25 = load i32, i32* @rm, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @sprintf(i64 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* @scratchbuf, align 8
  %30 = load i64, i64* @intel_syntax, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @oappend(i64 %31)
  br label %33

33:                                               ; preds = %20, %8
  ret void
}

declare dso_local i32 @OP_E(i32, i32) #1

declare dso_local i32 @USED_REX(i32) #1

declare dso_local i32 @sprintf(i64, i8*, i32) #1

declare dso_local i32 @oappend(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
