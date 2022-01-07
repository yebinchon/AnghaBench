; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_test-journal-interleaving.c_test_skip.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_test-journal-interleaving.c_test_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_skip.t = private unnamed_addr constant [29 x i8] c"/var/tmp/journal-skip-XXXXXX\00", align 16
@.str = private unnamed_addr constant [8 x i8] c"Done...\00", align 1
@arg_keep = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Not removing %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@REMOVE_ROOT = common dso_local global i32 0, align 4
@REMOVE_PHYSICAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"------------------------------------------------------------\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void ()*)* @test_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_skip(void ()* %0) #0 {
  %2 = alloca void ()*, align 8
  %3 = alloca [29 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store void ()* %0, void ()** %2, align 8
  %6 = bitcast [29 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.test_skip.t, i32 0, i32 0), i64 29, i1 false)
  %7 = getelementptr inbounds [29 x i8], [29 x i8]* %3, i64 0, i64 0
  %8 = call i32 @mkdtemp_chdir_chattr(i8* %7)
  %9 = load void ()*, void ()** %2, align 8
  call void %9()
  %10 = getelementptr inbounds [29 x i8], [29 x i8]* %3, i64 0, i64 0
  %11 = call i32 @sd_journal_open_directory(i32** %4, i8* %10, i32 0)
  %12 = call i32 @assert_ret(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @sd_journal_seek_head(i32* %13)
  %15 = call i32 @assert_ret(i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @sd_journal_next(i32* %16)
  %18 = call i32 @assert_ret(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @test_check_numbers_down(i32* %19, i32 4)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @sd_journal_close(i32* %21)
  %23 = getelementptr inbounds [29 x i8], [29 x i8]* %3, i64 0, i64 0
  %24 = call i32 @sd_journal_open_directory(i32** %4, i8* %23, i32 0)
  %25 = call i32 @assert_ret(i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @sd_journal_seek_tail(i32* %26)
  %28 = call i32 @assert_ret(i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @sd_journal_previous(i32* %29)
  %31 = call i32 @assert_ret(i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @test_check_numbers_up(i32* %32, i32 4)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @sd_journal_close(i32* %34)
  %36 = getelementptr inbounds [29 x i8], [29 x i8]* %3, i64 0, i64 0
  %37 = call i32 @sd_journal_open_directory(i32** %4, i8* %36, i32 0)
  %38 = call i32 @assert_ret(i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @sd_journal_seek_tail(i32* %39)
  %41 = call i32 @assert_ret(i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @sd_journal_previous_skip(i32* %42, i32 4)
  store i32 %43, i32* %5, align 4
  %44 = call i32 @assert_ret(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 4
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert_se(i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @test_check_numbers_down(i32* %49, i32 4)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @sd_journal_close(i32* %51)
  %53 = getelementptr inbounds [29 x i8], [29 x i8]* %3, i64 0, i64 0
  %54 = call i32 @sd_journal_open_directory(i32** %4, i8* %53, i32 0)
  %55 = call i32 @assert_ret(i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @sd_journal_seek_head(i32* %56)
  %58 = call i32 @assert_ret(i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @sd_journal_next_skip(i32* %59, i32 4)
  store i32 %60, i32* %5, align 4
  %61 = call i32 @assert_ret(i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 4
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert_se(i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @test_check_numbers_up(i32* %66, i32 4)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @sd_journal_close(i32* %68)
  %70 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %71 = load i64, i64* @arg_keep, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %1
  %74 = getelementptr inbounds [29 x i8], [29 x i8]* %3, i64 0, i64 0
  %75 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %74)
  br label %86

76:                                               ; preds = %1
  %77 = call i32 @journal_directory_vacuum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 3000000, i32 0, i32 0, i32* null, i32 1)
  %78 = getelementptr inbounds [29 x i8], [29 x i8]* %3, i64 0, i64 0
  %79 = load i32, i32* @REMOVE_ROOT, align 4
  %80 = load i32, i32* @REMOVE_PHYSICAL, align 4
  %81 = or i32 %79, %80
  %82 = call i64 @rm_rf(i8* %78, i32 %81)
  %83 = icmp sge i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert_se(i32 %84)
  br label %86

86:                                               ; preds = %76, %73
  %87 = call i32 @puts(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mkdtemp_chdir_chattr(i8*) #2

declare dso_local i32 @assert_ret(i32) #2

declare dso_local i32 @sd_journal_open_directory(i32**, i8*, i32) #2

declare dso_local i32 @sd_journal_seek_head(i32*) #2

declare dso_local i32 @sd_journal_next(i32*) #2

declare dso_local i32 @test_check_numbers_down(i32*, i32) #2

declare dso_local i32 @sd_journal_close(i32*) #2

declare dso_local i32 @sd_journal_seek_tail(i32*) #2

declare dso_local i32 @sd_journal_previous(i32*) #2

declare dso_local i32 @test_check_numbers_up(i32*, i32) #2

declare dso_local i32 @sd_journal_previous_skip(i32*, i32) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @sd_journal_next_skip(i32*, i32) #2

declare dso_local i32 @log_info(i8*, ...) #2

declare dso_local i32 @journal_directory_vacuum(i8*, i32, i32, i32, i32*, i32) #2

declare dso_local i64 @rm_rf(i8*, i32) #2

declare dso_local i32 @puts(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
