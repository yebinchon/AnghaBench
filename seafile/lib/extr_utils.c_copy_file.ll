; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_utils.c_copy_file.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_utils.c_copy_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_file(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = load i32, i32* @O_BINARY, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @g_open(i8* %11, i32 %14, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @O_WRONLY, align 4
  %22 = load i32, i32* @O_CREAT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @O_EXCL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @O_BINARY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @g_open(i8* %20, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %19
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EEXIST, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @close(i32 %37)
  store i32 0, i32* %4, align 4
  br label %56

39:                                               ; preds = %32, %19
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @close(i32 %43)
  store i32 -1, i32* %4, align 4
  br label %56

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @copy_fd(i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @close(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %53, %42, %36, %17
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @g_open(i8*, i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @copy_fd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
