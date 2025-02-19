; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/randwritecomp/extr_randwritecomp.c_random_writes.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/randwritecomp/extr_randwritecomp.c_random_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCKSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32)* @random_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @random_writes(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %31, %4
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ true, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %34

19:                                               ; preds = %17
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @fillbuf(i8* %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @BLOCKSZ, align 4
  %25 = call i32 (...) @lrand48()
  %26 = load i32, i32* %7, align 4
  %27 = srem i32 %25, %26
  %28 = load i32, i32* @BLOCKSZ, align 4
  %29 = mul nsw i32 %27, %28
  %30 = call i32 @rwc_pwrite(i32 %22, i8* %23, i32 %24, i32 %29)
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %10

34:                                               ; preds = %17
  ret void
}

declare dso_local i32 @fillbuf(i8*) #1

declare dso_local i32 @rwc_pwrite(i32, i8*, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
