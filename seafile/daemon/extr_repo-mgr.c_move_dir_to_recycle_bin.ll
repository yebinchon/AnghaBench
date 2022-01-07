; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_move_dir_to_recycle_bin.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_move_dir_to_recycle_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@seaf = common dso_local global %struct.TYPE_2__* null, align 8
@SEAFILE_RECYCLE_BIN_FOLDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Seafile trash folder %s doesn't exist and cannot be created.\0A\00", align 1
@G_FILE_TEST_EXISTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s(%d)\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to move %s to Seafile recycle bin %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Moved folder %s to Seafile recyle bin %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @move_dir_to_recycle_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_dir_to_recycle_bin(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SEAFILE_RECYCLE_BIN_FOLDER, align 4
  %14 = call i8* (i8*, i32, i32, i8*, ...) @g_build_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i8* null)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @checkdir_with_mkdir(i8* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @g_free(i8* %21)
  store i32 -1, i32* %2, align 4
  br label %74

23:                                               ; preds = %1
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @g_free(i8* %24)
  %26 = load i8*, i8** %3, align 8
  %27 = call i8* @g_path_get_basename(i8* %26)
  store i8* %27, i8** %5, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @seaf, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SEAFILE_RECYCLE_BIN_FOLDER, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* (i8*, i32, i32, i8*, ...) @g_build_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i8* %32, i8* null)
  store i8* %33, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %50, %23
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 10
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %40 = call i64 @g_file_test(i8* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %43, i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @g_free(i8* %46)
  %48 = load i8*, i8** %9, align 8
  store i8* %48, i8** %6, align 8
  br label %50

49:                                               ; preds = %37
  br label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %34

53:                                               ; preds = %49, %34
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @seaf_util_rename(i8* %54, i8* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i8*, i8** %3, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @strerror(i32 %61)
  %63 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %59, i8* %60, i32 %62)
  store i32 -1, i32* %7, align 4
  br label %68

64:                                               ; preds = %53
  %65 = load i8*, i8** %3, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @seaf_message(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %65, i8* %66)
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @g_free(i8* %69)
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @g_free(i8* %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %68, %18
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i8* @g_build_path(i8*, i32, i32, i8*, ...) #1

declare dso_local i64 @checkdir_with_mkdir(i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_path_get_basename(i8*) #1

declare dso_local i64 @g_file_test(i8*, i32) #1

declare dso_local i8* @g_strdup_printf(i8*, i8*, i32) #1

declare dso_local i64 @seaf_util_rename(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @seaf_message(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
