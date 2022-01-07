; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_loadfts.c_traverse.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_loadfts.c_traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"opendir()\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, void (i8*, i8*)*)* @traverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traverse(i8* %0, i8* %1, void (i8*, i8*)* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, i8*)*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store void (i8*, i8*)* %2, void (i8*, i8*)** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @opendir(i8* %10)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @error_out(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.dirent* @readdir(i32* %17)
  store %struct.dirent* %18, %struct.dirent** %8, align 8
  br label %19

19:                                               ; preds = %58, %16
  %20 = load %struct.dirent*, %struct.dirent** %8, align 8
  %21 = icmp ne %struct.dirent* %20, null
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  %23 = load %struct.dirent*, %struct.dirent** %8, align 8
  %24 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strcmp(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.dirent*, %struct.dirent** %8, align 8
  %30 = getelementptr inbounds %struct.dirent, %struct.dirent* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @strcmp(i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  br label %58

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.dirent*, %struct.dirent** %8, align 8
  %38 = getelementptr inbounds %struct.dirent, %struct.dirent* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %36, i32 %39)
  store i8* %40, i8** %9, align 8
  %41 = load %struct.dirent*, %struct.dirent** %8, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DT_DIR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load void (i8*, i8*)*, void (i8*, i8*)** %6, align 8
  call void @traverse(i8* %48, i8* %49, void (i8*, i8*)* %50)
  br label %55

51:                                               ; preds = %35
  %52 = load void (i8*, i8*)*, void (i8*, i8*)** %6, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %9, align 8
  call void %52(i8* %53, i8* %54)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @sqlite3_free(i8* %56)
  br label %58

58:                                               ; preds = %55, %34
  %59 = load i32*, i32** %7, align 8
  %60 = call %struct.dirent* @readdir(i32* %59)
  store %struct.dirent* %60, %struct.dirent** %8, align 8
  br label %19

61:                                               ; preds = %19
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @closedir(i32* %62)
  ret void
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @error_out(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
