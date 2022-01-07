; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_vc-utils.c_seaf_remove_empty_dir.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_vc-utils.c_seaf_remove_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to open dir %s: %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to remove file %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to remove dir %s: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_remove_empty_dir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @seaf_stat(i8* %9, %struct.TYPE_5__* %4)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @S_ISDIR(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %71

18:                                               ; preds = %12
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @seaf_util_rmdir(i8* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = call i32* @g_dir_open(i8* %23, i32 0, %struct.TYPE_6__** %8)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @seaf_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %31)
  store i32 -1, i32* %2, align 4
  br label %71

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i32*, i32** %5, align 8
  %36 = call i8* @g_dir_read_name(i32* %35)
  store i8* %36, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @seaf_repo_manager_is_ignored_hidden_file(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i8*, i8** %3, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @g_build_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44, i32* null)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @seaf_util_unlink(i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @seaf_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %52)
  br label %54

54:                                               ; preds = %49, %42
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @g_free(i8* %55)
  br label %57

57:                                               ; preds = %54, %38
  br label %34

58:                                               ; preds = %34
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @g_dir_close(i32* %59)
  %61 = load i8*, i8** %3, align 8
  %62 = call i64 @seaf_util_rmdir(i8* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @strerror(i32 %66)
  %68 = call i32 @seaf_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %65, i32 %67)
  store i32 -1, i32* %2, align 4
  br label %71

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %18
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %64, %27, %17
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @seaf_stat(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @seaf_util_rmdir(i8*) #1

declare dso_local i32* @g_dir_open(i8*, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local i8* @g_dir_read_name(i32*) #1

declare dso_local i64 @seaf_repo_manager_is_ignored_hidden_file(i8*) #1

declare dso_local i8* @g_build_path(i8*, i8*, i8*, i32*) #1

declare dso_local i64 @seaf_util_unlink(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_dir_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
