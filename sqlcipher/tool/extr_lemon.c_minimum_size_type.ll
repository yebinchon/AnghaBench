; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_minimum_size_type.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_minimum_size_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"unsigned short int\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32*)* @minimum_size_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @minimum_size_type(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32 4, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 255
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i32 1, i32* %8, align 4
  br label %21

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 65535
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  store i32 2, i32* %8, align 4
  br label %20

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  store i32 4, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %18
  br label %21

21:                                               ; preds = %20, %14
  br label %38

22:                                               ; preds = %3
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, -127
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp sle i32 %26, 127
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  store i32 1, i32* %8, align 4
  br label %37

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, -32767
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 32767
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  store i32 2, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %32, %29
  br label %37

37:                                               ; preds = %36, %28
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i8*, i8** %7, align 8
  ret i8* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
