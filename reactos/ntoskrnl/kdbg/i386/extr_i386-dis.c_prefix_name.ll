; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_prefix_name.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/i386/extr_i386-dis.c_prefix_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"rex\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rexZ\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rexY\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rexYZ\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"rexX\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"rexXZ\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"rexXY\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"rexXYZ\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"rex64\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"rex64Z\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"rex64Y\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"rex64YZ\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"rex64X\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"rex64XZ\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"rex64XY\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"rex64XYZ\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"repz\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"repnz\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"ds\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"gs\00", align 1
@DFLAG = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"data16\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"data32\00", align 1
@mode_64bit = common dso_local global i32 0, align 4
@AFLAG = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"addr32\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"addr64\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"addr16\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"fwait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @prefix_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @prefix_name(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %63 [
    i32 64, label %7
    i32 65, label %8
    i32 66, label %9
    i32 67, label %10
    i32 68, label %11
    i32 69, label %12
    i32 70, label %13
    i32 71, label %14
    i32 72, label %15
    i32 73, label %16
    i32 74, label %17
    i32 75, label %18
    i32 76, label %19
    i32 77, label %20
    i32 78, label %21
    i32 79, label %22
    i32 243, label %23
    i32 242, label %24
    i32 240, label %25
    i32 46, label %26
    i32 54, label %27
    i32 62, label %28
    i32 38, label %29
    i32 100, label %30
    i32 101, label %31
    i32 102, label %32
    i32 103, label %39
    i32 128, label %62
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %64

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %64

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %64

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %64

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %64

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %64

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %64

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %64

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %64

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %64

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %64

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %64

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %64

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %64

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %64

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %64

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %64

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %64

25:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %64

26:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %64

27:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %64

28:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %64

29:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %64

30:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %64

31:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %64

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @DFLAG, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)
  store i8* %38, i8** %3, align 8
  br label %64

39:                                               ; preds = %2
  %40 = load i32, i32* @mode_64bit, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @AFLAG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0)
  store i8* %48, i8** %3, align 8
  br label %64

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @AFLAG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @mode_64bit, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %54, %49
  %59 = phi i1 [ false, %49 ], [ %57, %54 ]
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)
  store i8* %61, i8** %3, align 8
  br label %64

62:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %64

63:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %64

64:                                               ; preds = %63, %62, %58, %42, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %65 = load i8*, i8** %3, align 8
  ret i8* %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
