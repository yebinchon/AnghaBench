; ModuleID = '/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_nfs_enable_share_one.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libshare/extr_nfs.c_nfs_enable_share_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"sec=%s,%s,%s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"/usr/sbin/exportfs\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@SA_SYSTEM_ERR = common dso_local global i32 0, align 4
@SA_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*)* @nfs_enable_share_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_enable_share_one(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [6 x i8*], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  store i8* %18, i8** %16, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @get_linux_hostspec(i8* %19, i8** %13)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %5
  %26 = load i8*, i8** %13, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = add nsw i64 %27, 1
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add nsw i64 %28, %30
  %32 = add nsw i64 %31, 1
  %33 = call i8* @malloc(i64 %32)
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @free(i8* %37)
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %25
  %41 = load i8*, i8** %14, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i8*, i8** %16, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i8*, i8** %9, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = add nsw i64 4, %52
  %54 = add nsw i64 %53, 4
  %55 = load i8*, i8** %16, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = add nsw i64 %54, %56
  %58 = add nsw i64 %57, 1
  %59 = call i8* @malloc(i64 %58)
  store i8* %59, i8** %15, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %50
  %65 = load i8*, i8** %15, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %66, i8* %67, i8* %68)
  %70 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %70, align 16
  %71 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %71, align 8
  %72 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %72, align 16
  %73 = load i8*, i8** %15, align 8
  %74 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 3
  store i8* %73, i8** %74, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 4
  store i8* %75, i8** %76, align 16
  %77 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 5
  store i8* null, i8** %77, align 8
  %78 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 0
  %79 = load i8*, i8** %78, align 16
  %80 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 0
  %81 = call i32 @libzfs_run_process(i8* %79, i8** %80, i32 0)
  store i32 %81, i32* %12, align 4
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i8*, i8** %15, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %64
  %89 = load i32, i32* @SA_SYSTEM_ERR, align 4
  store i32 %89, i32* %6, align 4
  br label %92

90:                                               ; preds = %64
  %91 = load i32, i32* @SA_OK, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @get_linux_hostspec(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @libzfs_run_process(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
