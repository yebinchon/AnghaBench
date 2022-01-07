; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_NtfsDumpDataRuns.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_NtfsDumpDataRuns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Dumping data runs.\0A\09Data:\0A\09\09\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\0A\09Runs:\0A\09\09Off\09\09LCN\09\09Length\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\09\09%I64d\09\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%I64u\09\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%I64u\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\09\0900\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsDumpDataRuns(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64*, i64** %4, align 8
  store i64* %9, i64** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = call i32 @DPRINT1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load i64*, i64** %4, align 8
  %15 = call i32 @NtfsDumpDataRunData(i64* %14)
  %16 = call i32 (i8*, ...) @DbgPrint(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i64*, i64** %6, align 8
  %19 = call i64* @DecodeRun(i64* %18, i32* %7, i32* %8)
  store i64* %19, i64** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i8*, ...) @DbgPrint(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 99999
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @DbgPrint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, ...) @DbgPrint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 99999
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @DbgPrint(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i8*, ...) @DbgPrint(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (i8*, ...) @DbgPrint(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %52

48:                                               ; preds = %40
  %49 = load i64*, i64** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @NtfsDumpDataRuns(i64* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %46
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @NtfsDumpDataRunData(i64*) #1

declare dso_local i32 @DbgPrint(i8*, ...) #1

declare dso_local i64* @DecodeRun(i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
