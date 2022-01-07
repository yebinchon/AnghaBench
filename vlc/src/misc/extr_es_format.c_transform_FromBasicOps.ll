; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_es_format.c_transform_FromBasicOps.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_es_format.c_transform_FromBasicOps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRANSFORM_TRANSPOSE = common dso_local global i32 0, align 4
@TRANSFORM_R90 = common dso_local global i32 0, align 4
@TRANSFORM_VFLIP = common dso_local global i32 0, align 4
@TRANSFORM_R180 = common dso_local global i32 0, align 4
@TRANSFORM_ANTI_TRANSPOSE = common dso_local global i32 0, align 4
@TRANSFORM_R270 = common dso_local global i32 0, align 4
@TRANSFORM_HFLIP = common dso_local global i32 0, align 4
@TRANSFORM_IDENTITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @transform_FromBasicOps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transform_FromBasicOps(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %34 [
    i32 90, label %7
    i32 180, label %16
    i32 270, label %25
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, i32* @TRANSFORM_TRANSPOSE, align 4
  br label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @TRANSFORM_R90, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @TRANSFORM_VFLIP, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @TRANSFORM_R180, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @TRANSFORM_ANTI_TRANSPOSE, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @TRANSFORM_R270, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %3, align 4
  br label %43

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @TRANSFORM_HFLIP, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @TRANSFORM_IDENTITY, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %32, %23, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
