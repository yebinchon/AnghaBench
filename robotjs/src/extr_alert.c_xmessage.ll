; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_alert.c_xmessage.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_alert.c_xmessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xmessage.MSG_PROGS = internal constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"gmessage\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"gxmessage\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"kmessage\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"xmessage\00", align 1
@xmessage.PREV_MSG_INDEX = internal global i32 -1, align 4
@EXEC_FAILED = common dso_local global i32 0, align 4
@TASK_SUCCESS = common dso_local global i32 0, align 4
@MSG_PROGS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @xmessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmessage(i8** %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load i32, i32* @xmessage.PREV_MSG_INDEX, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i32, i32* @xmessage.PREV_MSG_INDEX, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 4
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @xmessage.PREV_MSG_INDEX, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* @xmessage.MSG_PROGS, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = load i8**, i8*** %3, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  store i8* %19, i8** %21, align 8
  store i8* %19, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8**, i8*** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @runTask(i8* %22, i8** %23, i32* %24)
  store i32 %25, i32* %6, align 4
  br label %56

26:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %28, 4
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds [4 x i8*], [4 x i8*]* @xmessage.MSG_PROGS, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** %3, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  store i8* %33, i8** %35, align 8
  store i8* %33, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i8**, i8*** %3, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @runTask(i8* %36, i8** %37, i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @EXEC_FAILED, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %48

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %27

48:                                               ; preds = %43, %27
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @TASK_SUCCESS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* @xmessage.PREV_MSG_INDEX, align 4
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %10
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @runTask(i8*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
