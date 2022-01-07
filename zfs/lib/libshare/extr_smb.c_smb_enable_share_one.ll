; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_smb.c_smb_enable_share_one.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_smb.c_smb_enable_share_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMB_NAME_MAX = common dso_local global i32 0, align 4
@SMB_COMMENT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Comment: %s\00", align 1
@NET_CMD_PATH = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@NET_CMD_ARG_HOST = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"usershare\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Everyone:F\00", align 1
@SA_SYSTEM_ERR = common dso_local global i32 0, align 4
@SA_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @smb_enable_share_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_enable_share_one(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [10 x i8*], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @SMB_NAME_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @SMB_COMMENT_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = trunc i64 %14 to i32
  %22 = call i32 @strlcpy(i8* %16, i8* %20, i32 %21)
  %23 = sub i64 %14, 1
  %24 = getelementptr inbounds i8, i8* %16, i64 %23
  store i8 0, i8* %24, align 1
  store i8* %16, i8** %7, align 8
  br label %25

25:                                               ; preds = %36, %2
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %36 [
    i32 47, label %34
    i32 45, label %34
    i32 58, label %34
    i32 32, label %34
  ]

34:                                               ; preds = %30, %30, %30, %30
  %35 = load i8*, i8** %7, align 8
  store i8 95, i8* %35, align 1
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  br label %25

39:                                               ; preds = %25
  %40 = trunc i64 %18 to i32
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @snprintf(i8* %19, i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** @NET_CMD_PATH, align 8
  %44 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  store i8* %43, i8** %44, align 16
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %45, align 8
  %46 = load i8*, i8** @NET_CMD_ARG_HOST, align 8
  %47 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2
  store i8* %46, i8** %47, align 16
  %48 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %48, align 8
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %49, align 16
  %50 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5
  store i8* %16, i8** %50, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6
  store i8* %51, i8** %52, align 16
  %53 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7
  store i8* %19, i8** %53, align 8
  %54 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %54, align 16
  %55 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9
  store i8* null, i8** %55, align 8
  %56 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  %57 = load i8*, i8** %56, align 16
  %58 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  %59 = call i32 @libzfs_run_process(i8* %57, i8** %58, i32 0)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %39
  %63 = load i32, i32* @SA_SYSTEM_ERR, align 4
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %67

64:                                               ; preds = %39
  %65 = call i32 (...) @smb_retrieve_shares()
  %66 = load i32, i32* @SA_OK, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %62
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @libzfs_run_process(i8*, i8**, i32) #2

declare dso_local i32 @smb_retrieve_shares(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
