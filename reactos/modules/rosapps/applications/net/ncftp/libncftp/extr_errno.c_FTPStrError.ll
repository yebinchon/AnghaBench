; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_errno.c_FTPStrError.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_errno.c_FTPStrError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kErrGeneric = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"miscellaneous error\00", align 1
@kNoErr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"no error\00", align 1
@kErrFirst = common dso_local global i32 0, align 4
@kErrLast = common dso_local global i32 0, align 4
@gErrList = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"unrecognized error number\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FTPStrError(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @kErrGeneric, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %38

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @kNoErr, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %38

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @kErrFirst, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @kErrLast, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i8**, i8*** @gErrList, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @kErrFirst, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %28, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %2, align 8
  br label %38

35:                                               ; preds = %23, %19
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %38

38:                                               ; preds = %37, %27, %12, %7
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
