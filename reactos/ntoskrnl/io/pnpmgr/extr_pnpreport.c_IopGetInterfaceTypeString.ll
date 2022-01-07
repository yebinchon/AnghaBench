; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/io/pnpmgr/extr_pnpreport.c_IopGetInterfaceTypeString.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/io/pnpmgr/extr_pnpreport.c_IopGetInterfaceTypeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i32] [i32 73, i32 110, i32 116, i32 101, i32 114, i32 110, i32 97, i32 108, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 73, i32 115, i32 97, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 69, i32 105, i32 115, i32 97, i32 0], align 4
@.str.3 = private unnamed_addr constant [13 x i32] [i32 77, i32 105, i32 99, i32 114, i32 111, i32 67, i32 104, i32 97, i32 110, i32 110, i32 101, i32 108, i32 0], align 4
@.str.4 = private unnamed_addr constant [13 x i32] [i32 84, i32 117, i32 114, i32 98, i32 111, i32 67, i32 104, i32 97, i32 110, i32 110, i32 101, i32 108, i32 0], align 4
@.str.5 = private unnamed_addr constant [7 x i32] [i32 80, i32 67, i32 73, i32 66, i32 117, i32 115, i32 0], align 4
@.str.6 = private unnamed_addr constant [7 x i32] [i32 86, i32 77, i32 69, i32 66, i32 117, i32 115, i32 0], align 4
@.str.7 = private unnamed_addr constant [6 x i32] [i32 78, i32 117, i32 66, i32 117, i32 115, i32 0], align 4
@.str.8 = private unnamed_addr constant [10 x i32] [i32 80, i32 67, i32 77, i32 67, i32 73, i32 65, i32 66, i32 117, i32 115, i32 0], align 4
@.str.9 = private unnamed_addr constant [5 x i32] [i32 67, i32 66, i32 117, i32 115, i32 0], align 4
@.str.10 = private unnamed_addr constant [7 x i32] [i32 77, i32 80, i32 73, i32 66, i32 117, i32 115, i32 0], align 4
@.str.11 = private unnamed_addr constant [8 x i32] [i32 77, i32 80, i32 83, i32 65, i32 66, i32 117, i32 115, i32 0], align 4
@.str.12 = private unnamed_addr constant [18 x i32] [i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 111, i32 114, i32 73, i32 110, i32 116, i32 101, i32 114, i32 110, i32 97, i32 108, i32 0], align 4
@.str.13 = private unnamed_addr constant [10 x i32] [i32 80, i32 78, i32 80, i32 73, i32 83, i32 65, i32 66, i32 117, i32 115, i32 0], align 4
@.str.14 = private unnamed_addr constant [7 x i32] [i32 80, i32 78, i32 80, i32 66, i32 117, i32 115, i32 0], align 4
@.str.15 = private unnamed_addr constant [5 x i32] [i32 86, i32 109, i32 99, i32 115, i32 0], align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"Invalid bus type: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @IopGetInterfaceTypeString(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %21 [
    i32 141, label %5
    i32 140, label %6
    i32 142, label %7
    i32 137, label %8
    i32 130, label %9
    i32 135, label %10
    i32 129, label %11
    i32 136, label %12
    i32 134, label %13
    i32 143, label %14
    i32 139, label %15
    i32 138, label %16
    i32 131, label %17
    i32 132, label %18
    i32 133, label %19
    i32 128, label %20
  ]

5:                                                ; preds = %1
  store i8* bitcast ([9 x i32]* @.str to i8*), i8** %2, align 8
  br label %24

6:                                                ; preds = %1
  store i8* bitcast ([4 x i32]* @.str.1 to i8*), i8** %2, align 8
  br label %24

7:                                                ; preds = %1
  store i8* bitcast ([5 x i32]* @.str.2 to i8*), i8** %2, align 8
  br label %24

8:                                                ; preds = %1
  store i8* bitcast ([13 x i32]* @.str.3 to i8*), i8** %2, align 8
  br label %24

9:                                                ; preds = %1
  store i8* bitcast ([13 x i32]* @.str.4 to i8*), i8** %2, align 8
  br label %24

10:                                               ; preds = %1
  store i8* bitcast ([7 x i32]* @.str.5 to i8*), i8** %2, align 8
  br label %24

11:                                               ; preds = %1
  store i8* bitcast ([7 x i32]* @.str.6 to i8*), i8** %2, align 8
  br label %24

12:                                               ; preds = %1
  store i8* bitcast ([6 x i32]* @.str.7 to i8*), i8** %2, align 8
  br label %24

13:                                               ; preds = %1
  store i8* bitcast ([10 x i32]* @.str.8 to i8*), i8** %2, align 8
  br label %24

14:                                               ; preds = %1
  store i8* bitcast ([5 x i32]* @.str.9 to i8*), i8** %2, align 8
  br label %24

15:                                               ; preds = %1
  store i8* bitcast ([7 x i32]* @.str.10 to i8*), i8** %2, align 8
  br label %24

16:                                               ; preds = %1
  store i8* bitcast ([8 x i32]* @.str.11 to i8*), i8** %2, align 8
  br label %24

17:                                               ; preds = %1
  store i8* bitcast ([18 x i32]* @.str.12 to i8*), i8** %2, align 8
  br label %24

18:                                               ; preds = %1
  store i8* bitcast ([10 x i32]* @.str.13 to i8*), i8** %2, align 8
  br label %24

19:                                               ; preds = %1
  store i8* bitcast ([7 x i32]* @.str.14 to i8*), i8** %2, align 8
  br label %24

20:                                               ; preds = %1
  store i8* bitcast ([5 x i32]* @.str.15 to i8*), i8** %2, align 8
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %22)
  store i8* null, i8** %2, align 8
  br label %24

24:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %25 = load i8*, i8** %2, align 8
  ret i8* %25
}

declare dso_local i32 @DPRINT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
