; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mmap_exec/extr_mmap_exec.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mmap_exec/extr_mmap_exec.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Error: missing binary name.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Usage:\0A\09%s <binary name>\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  store i32 1, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  store i32 0, i32* @errno, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @open(i8* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @errno, align 4
  store i32 %25, i32* %6, align 4
  %26 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %50

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @fstat(i32 %29, %struct.stat* %8)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %6, align 4
  %34 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %50

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PROT_EXEC, align 4
  %40 = load i32, i32* @MAP_SHARED, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @mmap(i32 0, i32 %38, i32 %39, i32 %40, i32 %41, i32 0)
  %43 = load i64, i64* @MAP_FAILED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @errno, align 4
  store i32 %46, i32* %6, align 4
  %47 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %45, %32, %24, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
