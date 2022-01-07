; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_nfs_disable_share_one.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_nfs_disable_share_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"/usr/sbin/exportfs\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@SA_SYSTEM_ERR = common dso_local global i32 0, align 4
@SA_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*)* @nfs_disable_share_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_disable_share_one(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [4 x i8*], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @get_linux_hostspec(i8* %16, i8** %13)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %5
  %23 = load i8*, i8** %13, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = add nsw i64 %24, 1
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = add nsw i64 %25, %27
  %29 = add nsw i64 %28, 1
  %30 = call i8* @malloc(i64 %29)
  store i8* %30, i8** %14, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @free(i8* %34)
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %22
  %38 = load i8*, i8** %14, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %40)
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @free(i8* %42)
  %44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 16
  %45 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %45, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 2
  store i8* %46, i8** %47, align 16
  %48 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 3
  store i8* null, i8** %48, align 8
  %49 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 0
  %50 = load i8*, i8** %49, align 16
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 0
  %52 = call i32 @libzfs_run_process(i8* %50, i8** %51, i32 0)
  store i32 %52, i32* %12, align 4
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %37
  %58 = load i32, i32* @SA_SYSTEM_ERR, align 4
  store i32 %58, i32* %6, align 4
  br label %61

59:                                               ; preds = %37
  %60 = load i32, i32* @SA_OK, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @get_linux_hostspec(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @libzfs_run_process(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
