; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-escape.c_test_shell_maybe_quote.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-escape.c_test_shell_maybe_quote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ESCAPE_BACKSLASH = common dso_local global i32 0, align 4
@ESCAPE_POSIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\22\\\\\22\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"$'\\\\'\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\22\\\22\22\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"$'\22'\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"foo bar\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"\22foo bar\22\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"$'foo bar'\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"foo\09bar\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"\22foo\09bar\22\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"$'foo\\tbar'\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"foo\0Abar\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"\22foo\0Abar\22\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"$'foo\\nbar'\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"foo \22bar\22 waldo\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"\22foo \\\22bar\\\22 waldo\22\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"$'foo \22bar\22 waldo'\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"foo$bar\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"\22foo\\$bar\22\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"$'foo$bar'\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"a\0Ab\01\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\22a\0Ab\01\22\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"$'a\\nb\01'\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"foo!bar\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"\22foo!bar\22\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"$'foo!bar'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_shell_maybe_quote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_shell_maybe_quote() #0 {
  %1 = load i32, i32* @ESCAPE_BACKSLASH, align 4
  %2 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @ESCAPE_POSIX, align 4
  %4 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @ESCAPE_BACKSLASH, align 4
  %6 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @ESCAPE_POSIX, align 4
  %8 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @ESCAPE_BACKSLASH, align 4
  %10 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %11 = load i32, i32* @ESCAPE_POSIX, align 4
  %12 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %13 = load i32, i32* @ESCAPE_BACKSLASH, align 4
  %14 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %15 = load i32, i32* @ESCAPE_POSIX, align 4
  %16 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %17 = load i32, i32* @ESCAPE_BACKSLASH, align 4
  %18 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %19 = load i32, i32* @ESCAPE_POSIX, align 4
  %20 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %21 = load i32, i32* @ESCAPE_BACKSLASH, align 4
  %22 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %23 = load i32, i32* @ESCAPE_POSIX, align 4
  %24 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %25 = load i32, i32* @ESCAPE_BACKSLASH, align 4
  %26 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %27 = load i32, i32* @ESCAPE_POSIX, align 4
  %28 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %29 = load i32, i32* @ESCAPE_BACKSLASH, align 4
  %30 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %31 = load i32, i32* @ESCAPE_POSIX, align 4
  %32 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  %33 = load i32, i32* @ESCAPE_BACKSLASH, align 4
  %34 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %35 = load i32, i32* @ESCAPE_POSIX, align 4
  %36 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %37 = load i32, i32* @ESCAPE_BACKSLASH, align 4
  %38 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %39 = load i32, i32* @ESCAPE_POSIX, align 4
  %40 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  %41 = load i32, i32* @ESCAPE_BACKSLASH, align 4
  %42 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  %43 = load i32, i32* @ESCAPE_POSIX, align 4
  %44 = call i32 @test_shell_maybe_quote_one(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  ret void
}

declare dso_local i32 @test_shell_maybe_quote_one(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
