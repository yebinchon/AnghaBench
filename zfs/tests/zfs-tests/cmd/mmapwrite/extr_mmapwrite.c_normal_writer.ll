; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mmapwrite/extr_mmapwrite.c_normal_writer.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mmapwrite/extr_mmapwrite.c_normal_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"write failed!\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @normal_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @normal_writer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %4, align 8
  store i32 -1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %10 = call i32 (...) @getpagesize()
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = load i32, i32* @O_CREAT, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @open(i8* %11, i32 %14, i32 511)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = call i8* @malloc(i32 1)
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %21, %31
  %24 = load i32, i32* %5, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @write(i32 %24, i8* %25, i32 1)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %36

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SEEK_CUR, align 4
  %35 = call i32 @lseek(i32 %32, i32 %33, i32 %34)
  br label %23

36:                                               ; preds = %29
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @free(i8* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
