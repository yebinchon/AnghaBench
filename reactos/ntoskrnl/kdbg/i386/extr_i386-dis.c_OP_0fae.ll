; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_OP_0fae.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_OP_0fae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mod = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@obuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sfence\00", align 1
@rm = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_0fae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_0fae(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @mod, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  %8 = load i32, i32* @reg, align 4
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32, i32* @obuf, align 4
  %12 = load i32, i32* @obuf, align 4
  %13 = call i32 @strlen(i32 %12)
  %14 = add nsw i32 %11, %13
  %15 = sext i32 %14 to i64
  %16 = sub i64 %15, 8
  %17 = add i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = call i32 @strcpy(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %10, %7
  %21 = load i32, i32* @reg, align 4
  %22 = icmp slt i32 %21, 5
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @rm, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %20
  %27 = call i32 (...) @BadOp()
  br label %39

28:                                               ; preds = %23
  br label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @reg, align 4
  %31 = icmp ne i32 %30, 7
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @BadOp()
  br label %39

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @OP_E(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %32, %26
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @BadOp(...) #1

declare dso_local i32 @OP_E(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
