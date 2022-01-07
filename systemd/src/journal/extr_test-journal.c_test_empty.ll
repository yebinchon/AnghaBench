; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_test-journal.c_test_empty.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_test-journal.c_test_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_empty.t = private unnamed_addr constant [24 x i8] c"/var/tmp/journal-XXXXXX\00", align 16
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"test.journal\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"test-compress.journal\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"test-seal.journal\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"test-seal-compress.journal\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Done...\00", align 1
@arg_keep = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"Not removing %s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@REMOVE_ROOT = common dso_local global i32 0, align 4
@REMOVE_PHYSICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_empty() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [24 x i8], align 16
  %6 = bitcast [24 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([24 x i8], [24 x i8]* @__const.test_empty.t, i32 0, i32 0), i64 24, i1 false)
  %7 = load i32, i32* @LOG_DEBUG, align 4
  %8 = call i32 @test_setup_logging(i32 %7)
  %9 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %10 = call i32 @mkdtemp_chdir_chattr(i8* %9)
  %11 = load i32, i32* @O_RDWR, align 4
  %12 = load i32, i32* @O_CREAT, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @journal_file_open(i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13, i32 438, i32 0, i32 -1, i32 0, i32* null, i32* null, i32* null, i32* null, i32** %1)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert_se(i32 %16)
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = load i32, i32* @O_CREAT, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @journal_file_open(i32 -1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 438, i32 1, i32 -1, i32 0, i32* null, i32* null, i32* null, i32* null, i32** %2)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert_se(i32 %23)
  %25 = load i32, i32* @O_RDWR, align 4
  %26 = load i32, i32* @O_CREAT, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @journal_file_open(i32 -1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 438, i32 0, i32 -1, i32 1, i32* null, i32* null, i32* null, i32* null, i32** %3)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  %32 = load i32, i32* @O_RDWR, align 4
  %33 = load i32, i32* @O_CREAT, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @journal_file_open(i32 -1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %34, i32 438, i32 1, i32 -1, i32 1, i32* null, i32* null, i32* null, i32* null, i32** %4)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert_se(i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @journal_file_print_header(i32* %39)
  %41 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @journal_file_print_header(i32* %42)
  %44 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @journal_file_print_header(i32* %45)
  %47 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @journal_file_print_header(i32* %48)
  %50 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i64, i64* @arg_keep, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %0
  %55 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %56 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %55)
  br label %67

57:                                               ; preds = %0
  %58 = call i32 @journal_directory_vacuum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 3000000, i32 0, i32 0, i32* null, i32 1)
  %59 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %60 = load i32, i32* @REMOVE_ROOT, align 4
  %61 = load i32, i32* @REMOVE_PHYSICAL, align 4
  %62 = or i32 %60, %61
  %63 = call i64 @rm_rf(i8* %59, i32 %62)
  %64 = icmp sge i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert_se(i32 %65)
  br label %67

67:                                               ; preds = %57, %54
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @journal_file_close(i32* %68)
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @journal_file_close(i32* %70)
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @journal_file_close(i32* %72)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @journal_file_close(i32* %74)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_setup_logging(i32) #2

declare dso_local i32 @mkdtemp_chdir_chattr(i8*) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i64 @journal_file_open(i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32**) #2

declare dso_local i32 @journal_file_print_header(i32*) #2

declare dso_local i32 @puts(i8*) #2

declare dso_local i32 @log_info(i8*, ...) #2

declare dso_local i32 @journal_directory_vacuum(i8*, i32, i32, i32, i32*, i32) #2

declare dso_local i64 @rm_rf(i8*, i32) #2

declare dso_local i32 @journal_file_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
