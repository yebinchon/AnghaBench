; ModuleID = '/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-upload.c_open_journal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-upload.c_open_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_directory = common dso_local global i8* null, align 8
@arg_journal_type = common dso_local global i64 0, align 8
@arg_file = common dso_local global i64 0, align 8
@arg_machine = common dso_local global i64 0, align 8
@arg_merge = common dso_local global i32 0, align 4
@SD_JOURNAL_LOCAL_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to open %s: %m\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"journal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @open_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_journal(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  %4 = load i8*, i8** @arg_directory, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32**, i32*** %2, align 8
  %8 = load i8*, i8** @arg_directory, align 8
  %9 = load i64, i64* @arg_journal_type, align 8
  %10 = call i32 @sd_journal_open_directory(i32** %7, i8* %8, i64 %9)
  store i32 %10, i32* %3, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load i64, i64* @arg_file, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32**, i32*** %2, align 8
  %16 = load i64, i64* @arg_file, align 8
  %17 = inttoptr i64 %16 to i8**
  %18 = call i32 @sd_journal_open_files(i32** %15, i8** %17, i32 0)
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %11
  %20 = load i64, i64* @arg_machine, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32**, i32*** %2, align 8
  %24 = load i64, i64* @arg_machine, align 8
  %25 = call i32 @sd_journal_open_container(i32** %23, i64 %24, i32 0)
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %19
  %27 = load i32**, i32*** %2, align 8
  %28 = load i32, i32* @arg_merge, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @SD_JOURNAL_LOCAL_ONLY, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @arg_journal_type, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @sd_journal_open(i32** %27, i64 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %26, %22
  br label %39

39:                                               ; preds = %38, %14
  br label %40

40:                                               ; preds = %39, %6
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = load i8*, i8** @arg_directory, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i8*, i8** @arg_directory, align 8
  br label %54

49:                                               ; preds = %43
  %50 = load i64, i64* @arg_file, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  br label %54

54:                                               ; preds = %49, %47
  %55 = phi i8* [ %48, %47 ], [ %53, %49 ]
  %56 = call i32 @log_error_errno(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %40
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @sd_journal_open_directory(i32**, i8*, i64) #1

declare dso_local i32 @sd_journal_open_files(i32**, i8**, i32) #1

declare dso_local i32 @sd_journal_open_container(i32**, i64, i32) #1

declare dso_local i32 @sd_journal_open(i32**, i64) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
