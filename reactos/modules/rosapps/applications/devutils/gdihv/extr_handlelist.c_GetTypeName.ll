; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/gdihv/extr_handlelist.c_GetTypeName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/gdihv/extr_handlelist.c_GetTypeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i32] [i32 68, i32 67, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 82, i32 101, i32 103, i32 105, i32 111, i32 110, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 66, i32 105, i32 116, i32 109, i32 97, i32 112, i32 0], align 4
@.str.3 = private unnamed_addr constant [8 x i32] [i32 80, i32 97, i32 108, i32 101, i32 116, i32 116, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [5 x i32] [i32 70, i32 111, i32 110, i32 116, i32 0], align 4
@.str.5 = private unnamed_addr constant [6 x i32] [i32 66, i32 114, i32 117, i32 115, i32 104, i32 0], align 4
@.str.6 = private unnamed_addr constant [4 x i32] [i32 69, i32 77, i32 70, i32 0], align 4
@.str.7 = private unnamed_addr constant [4 x i32] [i32 80, i32 101, i32 110, i32 0], align 4
@.str.8 = private unnamed_addr constant [7 x i32] [i32 69, i32 120, i32 116, i32 80, i32 101, i32 110, i32 0], align 4
@.str.9 = private unnamed_addr constant [9 x i32] [i32 67, i32 111, i32 108, i32 83, i32 112, i32 97, i32 99, i32 101, i32 0], align 4
@.str.10 = private unnamed_addr constant [7 x i32] [i32 77, i32 101, i32 116, i32 97, i32 68, i32 67, i32 0], align 4
@.str.11 = private unnamed_addr constant [9 x i32] [i32 77, i32 101, i32 116, i32 97, i32 102, i32 105, i32 108, i32 101, i32 0], align 4
@.str.12 = private unnamed_addr constant [5 x i32] [i32 69, i32 77, i32 68, i32 67, i32 0], align 4
@.str.13 = private unnamed_addr constant [6 x i32] [i32 77, i32 101, i32 109, i32 68, i32 67, i32 0], align 4
@.str.14 = private unnamed_addr constant [4 x i32] [i32 68, i32 67, i32 69, i32 0], align 4
@.str.15 = private unnamed_addr constant [4 x i32] [i32 80, i32 70, i32 69, i32 0], align 4
@.str.16 = private unnamed_addr constant [9 x i32] [i32 97, i32 110, i32 121, i32 116, i32 104, i32 105, i32 110, i32 103, i32 0], align 4
@.str.17 = private unnamed_addr constant [8 x i32] [i32 117, i32 110, i32 107, i32 110, i32 111, i32 119, i32 110, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetTypeName(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @GDI_HANDLE_GET_TYPE(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %27 [
    i32 143, label %8
    i32 129, label %9
    i32 146, label %10
    i32 132, label %11
    i32 136, label %12
    i32 145, label %13
    i32 140, label %14
    i32 131, label %15
    i32 137, label %16
    i32 144, label %17
    i32 134, label %18
    i32 133, label %19
    i32 138, label %20
    i32 139, label %21
    i32 135, label %22
    i32 142, label %23
    i32 130, label %24
    i32 141, label %25
    i32 128, label %26
  ]

8:                                                ; preds = %1
  store i8* bitcast ([3 x i32]* @.str to i8*), i8** %3, align 8
  br label %28

9:                                                ; preds = %1
  store i8* bitcast ([7 x i32]* @.str.1 to i8*), i8** %3, align 8
  br label %28

10:                                               ; preds = %1
  store i8* bitcast ([7 x i32]* @.str.2 to i8*), i8** %3, align 8
  br label %28

11:                                               ; preds = %1
  store i8* bitcast ([8 x i32]* @.str.3 to i8*), i8** %3, align 8
  br label %28

12:                                               ; preds = %1
  store i8* bitcast ([5 x i32]* @.str.4 to i8*), i8** %3, align 8
  br label %28

13:                                               ; preds = %1
  store i8* bitcast ([6 x i32]* @.str.5 to i8*), i8** %3, align 8
  br label %28

14:                                               ; preds = %1
  store i8* bitcast ([4 x i32]* @.str.6 to i8*), i8** %3, align 8
  br label %28

15:                                               ; preds = %1
  store i8* bitcast ([4 x i32]* @.str.7 to i8*), i8** %3, align 8
  br label %28

16:                                               ; preds = %1
  store i8* bitcast ([7 x i32]* @.str.8 to i8*), i8** %3, align 8
  br label %28

17:                                               ; preds = %1
  store i8* bitcast ([9 x i32]* @.str.9 to i8*), i8** %3, align 8
  br label %28

18:                                               ; preds = %1
  store i8* bitcast ([7 x i32]* @.str.10 to i8*), i8** %3, align 8
  br label %28

19:                                               ; preds = %1
  store i8* bitcast ([9 x i32]* @.str.11 to i8*), i8** %3, align 8
  br label %28

20:                                               ; preds = %1
  store i8* bitcast ([4 x i32]* @.str.6 to i8*), i8** %3, align 8
  br label %28

21:                                               ; preds = %1
  store i8* bitcast ([5 x i32]* @.str.12 to i8*), i8** %3, align 8
  br label %28

22:                                               ; preds = %1
  store i8* bitcast ([6 x i32]* @.str.13 to i8*), i8** %3, align 8
  br label %28

23:                                               ; preds = %1
  store i8* bitcast ([4 x i32]* @.str.14 to i8*), i8** %3, align 8
  br label %28

24:                                               ; preds = %1
  store i8* bitcast ([4 x i32]* @.str.15 to i8*), i8** %3, align 8
  br label %28

25:                                               ; preds = %1
  store i8* bitcast ([9 x i32]* @.str.16 to i8*), i8** %3, align 8
  br label %28

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %1, %26
  store i8* bitcast ([8 x i32]* @.str.17 to i8*), i8** %3, align 8
  br label %28

28:                                               ; preds = %27, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

declare dso_local i32 @GDI_HANDLE_GET_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
