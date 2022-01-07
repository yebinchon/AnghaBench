; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfileop.c_init_shfo_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfileop.c_init_shfo_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@CURR_DIR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"test1.txt\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"test2.txt\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"test3.txt\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"test_5.txt\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"test4.txt\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"testdir2\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"testdir2\\nested\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"testdir2\\one.txt\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"testdir2\\nested\\two.txt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_shfo_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_shfo_tests() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MAX_PATH, align 4
  %3 = load i8*, i8** @CURR_DIR, align 8
  %4 = call i32 @GetCurrentDirectoryA(i32 %2, i8* %3)
  %5 = load i8*, i8** @CURR_DIR, align 8
  %6 = call i32 @lstrlenA(i8* %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %0
  %10 = load i8*, i8** @CURR_DIR, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 92
  br i1 %17, label %18, label %24

18:                                               ; preds = %9
  %19 = load i8*, i8** @CURR_DIR, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8 0, i8* %23, align 1
  br label %24

24:                                               ; preds = %18, %9, %0
  %25 = call i32 @createTestFile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @createTestFile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @createTestFile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @createTestFile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %30 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %31 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %32 = call i32 @createTestFile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %33 = call i32 @createTestFile(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @GetCurrentDirectoryA(i32, i8*) #1

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i32 @createTestFile(i8*) #1

declare dso_local i32 @CreateDirectoryA(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
