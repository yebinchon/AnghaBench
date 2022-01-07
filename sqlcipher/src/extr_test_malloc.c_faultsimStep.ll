; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_malloc.c_faultsimStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_malloc.c_faultsimStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i32, i32, i32 }

@memfault = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @faultsimStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @faultsimStep() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 4), align 8
  %3 = icmp ne i64 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i64 @likely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 7), align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 7), align 8
  store i32 0, i32* %1, align 4
  br label %40

11:                                               ; preds = %0
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 0), align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 0), align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 0), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 6), align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 6), align 4
  store i32 0, i32* %1, align 4
  br label %40

19:                                               ; preds = %11
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 1), align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @sqlite3FirstFault()
  br label %24

24:                                               ; preds = %22, %19
  %25 = call i32 (...) @sqlite3Fault()
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 1), align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 1), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 2), align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 5), align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 5), align 8
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 3), align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 3), align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 3), align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memfault, i32 0, i32 4), align 8
  br label %39

39:                                               ; preds = %38, %33
  store i32 1, i32* %1, align 4
  br label %40

40:                                               ; preds = %39, %14, %8
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sqlite3FirstFault(...) #1

declare dso_local i32 @sqlite3Fault(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
