; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_getcc.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_getcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"getcc: invalid operand size %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @getcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getcc(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 8
  br label %19

19:                                               ; preds = %16, %13, %10, %3
  %20 = phi i1 [ true, %13 ], [ true, %10 ], [ true, %3 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %21, i8* %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %7, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @getcc8(i32 %30, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %56

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @getcc16(i32 %39, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %56

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i64, i64* %6, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @getcc32(i32 %48, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %43
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @getcc64(i64 %53, i64 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %46, %37, %28
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @getcc8(i32, i32) #1

declare dso_local i32 @getcc16(i32, i32) #1

declare dso_local i32 @getcc32(i32, i32) #1

declare dso_local i32 @getcc64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
