; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/tests/functional/truncate/extr_truncate_test.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/tests/functional/truncate/extr_truncate_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ftruncflag = common dso_local global i64 0, align 8
@filename = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@fsize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ftruncate\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = call i32 @parse_options(i32 %7, i8** %8)
  %10 = load i64, i64* @ftruncflag, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load i32, i32* @filename, align 4
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @open(i32 %13, i32 %16, i32 438)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %45

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @fsize, align 4
  %25 = call i64 @ftruncate(i32 %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %45

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @close(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %45

35:                                               ; preds = %29
  br label %44

36:                                               ; preds = %2
  %37 = load i32, i32* @filename, align 4
  %38 = load i32, i32* @fsize, align 4
  %39 = call i64 @truncate(i32 %37, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %45

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %35
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41, %33, %27, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @parse_options(i32, i8**) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i64 @truncate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
