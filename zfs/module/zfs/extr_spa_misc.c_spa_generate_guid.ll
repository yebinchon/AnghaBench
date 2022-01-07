; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_generate_guid.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_generate_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spa_generate_guid(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i64 @spa_get_random(i64 -1)
  store i64 %4, i64* %3, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %19, %7
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @spa_guid(i32* %12)
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @spa_guid_exists(i64 %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i1 [ true, %8 ], [ %16, %11 ]
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = call i64 @spa_get_random(i64 -1)
  store i64 %20, i64* %3, align 8
  br label %8

21:                                               ; preds = %17
  br label %35

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %32, %22
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @spa_guid_exists(i64 %27, i64 0)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ true, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = call i64 @spa_get_random(i64 -1)
  store i64 %33, i64* %3, align 8
  br label %23

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i64 @spa_get_random(i64) #1

declare dso_local i64 @spa_guid_exists(i64, i64) #1

declare dso_local i64 @spa_guid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
