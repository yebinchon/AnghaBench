; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_pager.c_show_man_page.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_pager.c_show_man_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"man\00", align 1
@__const.show_man_page.args = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i8* null], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"(man)\00", align 1
@FORK_RESET_SIGNALS = common dso_local global i32 0, align 4
@FORK_DEATHSIG = common dso_local global i32 0, align 4
@FORK_NULL_STDIO = common dso_local global i32 0, align 4
@FORK_RLIMIT_NOFILE_SAFE = common dso_local global i32 0, align 4
@FORK_LOG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to execute man: %m\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_man_page(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8*], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = bitcast [4 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i8*]* @__const.show_man_page.args to i8*), i64 32, i1 false)
  store i8* null, i8** %7, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %9, align 8
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 41
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @strrchr(i8* %24, i8 signext 40)
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %26
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = call i8* @strndupa(i8* %30, i32 %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8*, i8** %7, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sub nsw i64 %46, 2
  %48 = trunc i64 %47 to i32
  %49 = call i8* @strndupa(i8* %39, i32 %48)
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 1
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 2
  store i8* %52, i8** %53, align 16
  br label %57

54:                                               ; preds = %26
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 1
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %54, %29
  %58 = load i32, i32* @FORK_RESET_SIGNALS, align 4
  %59 = load i32, i32* @FORK_DEATHSIG, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @FORK_NULL_STDIO, align 4
  br label %66

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = or i32 %60, %67
  %69 = load i32, i32* @FORK_RLIMIT_NOFILE_SAFE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @FORK_LOG, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @safe_fork(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32* %8)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  br label %93

78:                                               ; preds = %66
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %83 = load i8*, i8** %82, align 16
  %84 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %85 = call i32 @execvp(i8* %83, i8** %84)
  %86 = load i32, i32* @errno, align 4
  %87 = call i32 @log_error_errno(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @EXIT_FAILURE, align 4
  %89 = call i32 @_exit(i32 %88) #4
  unreachable

90:                                               ; preds = %78
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @wait_for_terminate_and_check(i32* null, i32 %91, i32 0)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %76
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i8* @strndupa(i8*, i32) #2

declare dso_local i32 @safe_fork(i8*, i32, i32*) #2

declare dso_local i32 @execvp(i8*, i8**) #2

declare dso_local i32 @log_error_errno(i32, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @wait_for_terminate_and_check(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
