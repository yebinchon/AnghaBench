; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_get_diff_status_str.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_get_diff_status_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIFF_STATUS_ADDED = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@DIFF_STATUS_DELETED = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@DIFF_STATUS_MODIFIED = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@DIFF_STATUS_RENAMED = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mov\00", align 1
@DIFF_STATUS_DIR_ADDED = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"newdir\00", align 1
@DIFF_STATUS_DIR_DELETED = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"deldir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8)* @get_diff_status_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_diff_status_str(i8 signext %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = load i8, i8* @DIFF_STATUS_ADDED, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %46

10:                                               ; preds = %1
  %11 = load i8, i8* %3, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8, i8* @DIFF_STATUS_DELETED, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %46

17:                                               ; preds = %10
  %18 = load i8, i8* %3, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* @DIFF_STATUS_MODIFIED, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %46

24:                                               ; preds = %17
  %25 = load i8, i8* %3, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @DIFF_STATUS_RENAMED, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %46

31:                                               ; preds = %24
  %32 = load i8, i8* %3, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @DIFF_STATUS_DIR_ADDED, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %46

38:                                               ; preds = %31
  %39 = load i8, i8* %3, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @DIFF_STATUS_DIR_DELETED, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %46

45:                                               ; preds = %38
  store i8* null, i8** %2, align 8
  br label %46

46:                                               ; preds = %45, %44, %37, %30, %23, %16, %9
  %47 = load i8*, i8** %2, align 8
  ret i8* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
