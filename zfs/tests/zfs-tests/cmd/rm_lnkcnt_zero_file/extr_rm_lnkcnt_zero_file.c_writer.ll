; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/rm_lnkcnt_zero_file/extr_rm_lnkcnt_zero_file.c_writer.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/rm_lnkcnt_zero_file/extr_rm_lnkcnt_zero_file.c_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filebase = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"fail to open test file, refreshing it\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"test\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"writing file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @writer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to i32*
  store i32* %6, i32** %3, align 8
  br label %7

7:                                                ; preds = %37, %27, %1
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @close(i32 %13)
  br label %15

15:                                               ; preds = %11, %7
  %16 = load i32, i32* @filebase, align 4
  %17 = load i32, i32* @O_APPEND, align 4
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @O_CREAT, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @open(i32 %16, i32 %21, i32 420)
  %23 = load i32*, i32** %3, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %7

29:                                               ; preds = %15
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @write(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 5
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %29
  br label %7
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
