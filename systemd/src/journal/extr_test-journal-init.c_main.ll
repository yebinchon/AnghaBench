; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_test-journal-init.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_test-journal-init.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.t = private unnamed_addr constant [31 x i8] c"/var/tmp/journal-stream-XXXXXX\00", align 16
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Could not parse loop count argument. Using default.\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Running %d loops\00", align 1
@FS_NOCOW_FL = common dso_local global i32 0, align 4
@SD_JOURNAL_LOCAL_ONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REMOVE_ROOT = common dso_local global i32 0, align 4
@REMOVE_PHYSICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [31 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %9, align 4
  %11 = bitcast [31 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 getelementptr inbounds ([31 x i8], [31 x i8]* @__const.main.t, i32 0, i32 0), i64 31, i1 false)
  %12 = load i32, i32* @LOG_DEBUG, align 4
  %13 = call i32 @test_setup_logging(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @safe_atoi(i8* %19, i32* %9)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %16
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds [31 x i8], [31 x i8]* %10, i64 0, i64 0
  %30 = call i32 @mkdtemp(i8* %29)
  %31 = call i32 @assert_se(i32 %30)
  %32 = getelementptr inbounds [31 x i8], [31 x i8]* %10, i64 0, i64 0
  %33 = load i32, i32* @FS_NOCOW_FL, align 4
  %34 = load i32, i32* @FS_NOCOW_FL, align 4
  %35 = call i32 @chattr_path(i8* %32, i32 %33, i32 %34, i32* null)
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %70, %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load i32, i32* @SD_JOURNAL_LOCAL_ONLY, align 4
  %42 = call i32 @sd_journal_open(i32** %6, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @sd_journal_close(i32* %47)
  %49 = getelementptr inbounds [31 x i8], [31 x i8]* %10, i64 0, i64 0
  %50 = call i32 @sd_journal_open_directory(i32** %6, i8* %49, i32 0)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert_se(i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @sd_journal_close(i32* %55)
  store i32* null, i32** %6, align 8
  %57 = getelementptr inbounds [31 x i8], [31 x i8]* %10, i64 0, i64 0
  %58 = load i32, i32* @SD_JOURNAL_LOCAL_ONLY, align 4
  %59 = call i32 @sd_journal_open_directory(i32** %6, i8* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert_se(i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = icmp eq i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert_se(i32 %68)
  br label %70

70:                                               ; preds = %40
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %36

73:                                               ; preds = %36
  %74 = getelementptr inbounds [31 x i8], [31 x i8]* %10, i64 0, i64 0
  %75 = load i32, i32* @REMOVE_ROOT, align 4
  %76 = load i32, i32* @REMOVE_PHYSICAL, align 4
  %77 = or i32 %75, %76
  %78 = call i64 @rm_rf(i8* %74, i32 %77)
  %79 = icmp sge i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert_se(i32 %80)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_setup_logging(i32) #2

declare dso_local i32 @safe_atoi(i8*, i32*) #2

declare dso_local i32 @log_info(i8*, ...) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @mkdtemp(i8*) #2

declare dso_local i32 @chattr_path(i8*, i32, i32, i32*) #2

declare dso_local i32 @sd_journal_open(i32**, i32) #2

declare dso_local i32 @sd_journal_close(i32*) #2

declare dso_local i32 @sd_journal_open_directory(i32**, i8*, i32) #2

declare dso_local i64 @rm_rf(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
