; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_pathType.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_pathType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@R_OK = common dso_local global i32 0, align 4
@PATH_NEXIST = common dso_local global i32 0, align 4
@PATH_OTHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/00\00", align 1
@PATH_DIR = common dso_local global i32 0, align 4
@PATH_TREE = common dso_local global i32 0, align 4
@PATH_DB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pathType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pathType(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @R_OK, align 4
  %9 = call i64 @access(i8* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @PATH_NEXIST, align 4
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = call i32 @memset(%struct.stat* %4, i32 0, i32 8)
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @stat(i8* %15, %struct.stat* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @PATH_OTHER, align 4
  store i32 %20, i32* %2, align 4
  br label %56

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @S_ISDIR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i8* %28, i8** %6, align 8
  %29 = call i32 @memset(%struct.stat* %4, i32 0, i32 8)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @stat(i8* %30, %struct.stat* %4)
  store i32 %31, i32* %5, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @sqlite3_free(i8* %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @PATH_DIR, align 4
  store i32 %37, i32* %2, align 4
  br label %56

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @S_ISDIR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @PATH_TREE, align 4
  store i32 %44, i32* %2, align 4
  br label %56

45:                                               ; preds = %38
  %46 = load i32, i32* @PATH_DIR, align 4
  store i32 %46, i32* %2, align 4
  br label %56

47:                                               ; preds = %21
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = srem i32 %49, 512
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @PATH_DB, align 4
  store i32 %53, i32* %2, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @PATH_OTHER, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %52, %45, %43, %36, %19, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
