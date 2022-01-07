; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_exception_class.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_exception_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_INTINFO_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"intinfo must be valid: %#llx\00", align 1
@VM_INTINFO_TYPE = common dso_local global i32 0, align 4
@EXC_BENIGN = common dso_local global i32 0, align 4
@EXC_PAGEFAULT = common dso_local global i32 0, align 4
@EXC_CONTRIBUTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @exception_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exception_class(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @VM_INTINFO_VALID, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @KASSERT(i32 %8, i8* %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @VM_INTINFO_TYPE, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 255
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %21 [
    i32 130, label %19
    i32 128, label %19
    i32 129, label %19
  ]

19:                                               ; preds = %1, %1, %1
  %20 = load i32, i32* @EXC_BENIGN, align 4
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %28 [
    i32 134, label %24
    i32 131, label %24
    i32 137, label %26
    i32 132, label %26
    i32 135, label %26
    i32 133, label %26
    i32 136, label %26
  ]

24:                                               ; preds = %22, %22
  %25 = load i32, i32* @EXC_PAGEFAULT, align 4
  store i32 %25, i32* %2, align 4
  br label %30

26:                                               ; preds = %22, %22, %22, %22, %22
  %27 = load i32, i32* @EXC_CONTRIBUTORY, align 4
  store i32 %27, i32* %2, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @EXC_BENIGN, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %26, %24, %19
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
