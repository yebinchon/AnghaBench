; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/nfs/extr_nfs41_debug.c_print_open_error.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/nfs/extr_nfs41_debug.c_print_open_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"[ERROR] nfs41_Create: STATUS_ACCESS_DENIED\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"[ERROR] nfs41_Create: STATUS_NETWORK_ACCESS_DENIED\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"[ERROR] nfs41_Create: STATUS_OBJECT_NAME_INVALID\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"[ERROR] nfs41_Create: STATUS_OBJECT_NAME_COLLISION\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"[ERROR] nfs41_Create: STATUS_FILE_INVALID\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"[ERROR] nfs41_Create: STATUS_OBJECT_NAME_NOT_FOUND\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"[ERROR] nfs41_Create: STATUS_NAME_TOO_LONG\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"[ERROR] nfs41_Create: STATUS_OBJECT_PATH_NOT_FOUND\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"[ERROR] nfs41_Create: STATUS_BAD_NETWORK_PATH\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"[ERROR] nfs41_Create: STATUS_SHARING_VIOLATION\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"[ERROR] nfs41_Create: STATUS_REPARSE\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"[ERROR] nfs41_Create: STATUS_TOO_MANY_LINKS\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"[ERROR] nfs41_Create: STATUS_FILE_IS_A_DIRECTORY\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"[ERROR] nfs41_Create: STATUS_NOT_A_DIRECTORY\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"[ERROR] nfs41_Create: STATUS_INSUFFICIENT_RESOURCES\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_open_error(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %40

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %38 [
    i32 137, label %10
    i32 133, label %12
    i32 131, label %14
    i32 132, label %16
    i32 135, label %18
    i32 130, label %20
    i32 134, label %22
    i32 129, label %24
    i32 136, label %26
    i32 128, label %28
    i32 139, label %30
    i32 138, label %32
    i32 140, label %34
    i32 141, label %36
  ]

10:                                               ; preds = %8
  %11 = call i32 @DbgP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %40

12:                                               ; preds = %8
  %13 = call i32 @DbgP(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %40

14:                                               ; preds = %8
  %15 = call i32 @DbgP(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %40

16:                                               ; preds = %8
  %17 = call i32 @DbgP(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %40

18:                                               ; preds = %8
  %19 = call i32 @DbgP(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %40

20:                                               ; preds = %8
  %21 = call i32 @DbgP(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %40

22:                                               ; preds = %8
  %23 = call i32 @DbgP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %40

24:                                               ; preds = %8
  %25 = call i32 @DbgP(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %40

26:                                               ; preds = %8
  %27 = call i32 @DbgP(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  br label %40

28:                                               ; preds = %8
  %29 = call i32 @DbgP(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  br label %40

30:                                               ; preds = %8
  %31 = call i32 @DbgP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  br label %40

32:                                               ; preds = %8
  %33 = call i32 @DbgP(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  br label %40

34:                                               ; preds = %8
  %35 = call i32 @DbgP(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  br label %40

36:                                               ; preds = %8
  %37 = call i32 @DbgP(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0))
  br label %40

38:                                               ; preds = %8
  %39 = call i32 @DbgP(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0))
  br label %40

40:                                               ; preds = %7, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10
  ret void
}

declare dso_local i32 @DbgP(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
