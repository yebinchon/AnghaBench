; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest1.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"testdb-%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%d.testdb-%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s-journal\00", align 1
@worker_bee = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@thread_cnt = common dso_local global i64 0, align 8
@sig = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [200 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [200 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  store i32 1, i32* @verbose, align 4
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %5, align 8
  br label %27

27:                                               ; preds = %22, %16, %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @atoi(i8* %33)
  store i32 %34, i32* %8, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %27
  store i32 10, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %30
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = sdiv i32 %45, 2
  %47 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %49 = call i32 @unlink(i8* %48)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %38

53:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %86, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %89

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = srem i32 %59, 2
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 2
  %64 = sdiv i32 %63, 2
  %65 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %64)
  store i8* %65, i8** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = srem i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %58
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  store i8* %71, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  store i8* %73, i8** %12, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @unlink(i8* %74)
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @unlink(i8* %76)
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %69, %58
  %81 = load i32, i32* @worker_bee, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @pthread_create(i32* %9, i32 0, i32 %81, i8* %82)
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @pthread_detach(i32 %84)
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %54

89:                                               ; preds = %54
  %90 = call i32 @pthread_mutex_lock(i32* @lock)
  br label %91

91:                                               ; preds = %94, %89
  %92 = load i64, i64* @thread_cnt, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 @pthread_cond_wait(i32* @sig, i32* @lock)
  br label %91

96:                                               ; preds = %91
  %97 = call i32 @pthread_mutex_unlock(i32* @lock)
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %110, %96
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  %106 = sdiv i32 %105, 2
  %107 = call i32 @sprintf(i8* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %109 = call i32 @unlink(i8* %108)
  br label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %98

113:                                              ; preds = %98
  ret i32 0
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32, i32, i8*) #1

declare dso_local i32 @pthread_detach(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
