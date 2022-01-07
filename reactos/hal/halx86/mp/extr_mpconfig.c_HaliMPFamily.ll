; ModuleID = '/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_mpconfig.c_HaliMPFamily.c'
source_filename = "/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_mpconfig.c_HaliMPFamily.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HaliMPFamily.str = internal global [64 x i8] zeroinitializer, align 16
@HaliMPFamily.CPUs = internal global [9 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"80486DX\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"80486SX\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"80486DX/2 or 80487\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"80486SL\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Intel5X2(tm)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"80486DX/4\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Pentium(tm) Pro\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Pentium(tm)\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Special controller\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Pentium 4(tm)\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Unknown CPU with family ID %ld and model ID %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @HaliMPFamily(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %42

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %42

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 15
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 15
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %42

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %42

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 9
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [9 x i8*], [9 x i8*]* @HaliMPFamily.CPUs, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %3, align 8
  br label %42

38:                                               ; preds = %30, %27
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @sprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @HaliMPFamily.str, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i32 %39, i32 %40)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @HaliMPFamily.str, i64 0, i64 0), i8** %3, align 8
  br label %42

42:                                               ; preds = %38, %33, %26, %19, %12, %8
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
