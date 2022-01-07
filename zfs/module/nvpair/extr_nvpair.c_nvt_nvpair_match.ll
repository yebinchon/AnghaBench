; ModuleID = '/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvt_nvpair_match.c'
source_filename = "/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvt_nvpair_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME_TYPE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @nvt_nvpair_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvt_nvpair_match(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @B_FALSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @NV_UNIQUE_NAME_TYPE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @NVP_NAME(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @NVP_NAME(i32* %16)
  %18 = call i64 @strcmp(i32 %15, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @NVP_TYPE(i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @NVP_TYPE(i32* %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @B_TRUE, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %20, %13
  br label %50

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ true, %29 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @NVP_NAME(i32* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @NVP_NAME(i32* %43)
  %45 = call i64 @strcmp(i32 %42, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @B_TRUE, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %37
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @NVP_NAME(i32*) #1

declare dso_local i64 @NVP_TYPE(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
