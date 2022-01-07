; ModuleID = '/home/carl/AnghaBench/tg/extr_main.c_running_for_first_time.c'
source_filename = "/home/carl/AnghaBench/tg/extr_main.c_running_for_first_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_filename = common dso_local global i8* null, align 8
@config_directory = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@CONFIG_FILE = common dso_local global i32 0, align 4
@disable_output = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"I: config dir=[%s]\0A\00", align 1
@CONFIG_DIRECTORY_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"[%s] created\0A\00", align 1
@R_OK = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"open[config_file]\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"I: config_file=[%s]\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@DEFAULT_CONFIG_CONTENTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"write[config_file]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @running_for_first_time() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @check_type_sizes()
  %3 = load i8*, i8** @config_filename, align 8
  %4 = call i64 @str_empty(i8* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %71

7:                                                ; preds = %0
  %8 = load i8*, i8** @config_directory, align 8
  %9 = call i64 @str_empty(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i8* (...) @get_config_directory()
  store i8* %12, i8** @config_directory, align 8
  br label %13

13:                                               ; preds = %11, %7
  %14 = load i8*, i8** @config_directory, align 8
  %15 = load i32, i32* @CONFIG_FILE, align 4
  %16 = call i32 @tasprintf(i8** @config_filename, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  %17 = load i8*, i8** @config_filename, align 8
  %18 = call i8* @make_full_path(i8* %17)
  store i8* %18, i8** @config_filename, align 8
  %19 = load i32, i32* @disable_output, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i8*, i8** @config_directory, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %13
  %25 = load i8*, i8** @config_directory, align 8
  %26 = load i32, i32* @CONFIG_DIRECTORY_MODE, align 4
  %27 = call i32 @mkdir(i8* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @disable_output, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** @config_directory, align 8
  %34 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i8*, i8** @config_directory, align 8
  %38 = call i32 @tfree_str(i8* %37)
  store i8* null, i8** @config_directory, align 8
  %39 = load i8*, i8** @config_filename, align 8
  %40 = load i32, i32* @R_OK, align 4
  %41 = call i64 @access(i8* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %36
  %44 = load i8*, i8** @config_filename, align 8
  %45 = load i32, i32* @O_CREAT, align 4
  %46 = load i32, i32* @O_RDWR, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @open(i8* %44, i32 %47, i32 384)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i8*, i8** @config_filename, align 8
  %54 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @EXIT_FAILURE, align 4
  %56 = call i32 @exit(i32 %55) #3
  unreachable

57:                                               ; preds = %43
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @DEFAULT_CONFIG_CONTENTS, align 4
  %60 = load i32, i32* @DEFAULT_CONFIG_CONTENTS, align 4
  %61 = call i32 @strlen(i32 %60)
  %62 = call i64 @write(i32 %58, i32 %59, i32 %61)
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i32, i32* @EXIT_FAILURE, align 4
  %67 = call i32 @exit(i32 %66) #3
  unreachable

68:                                               ; preds = %57
  %69 = load i32, i32* %1, align 4
  %70 = call i32 @close(i32 %69)
  br label %71

71:                                               ; preds = %6, %68, %36
  ret void
}

declare dso_local i32 @check_type_sizes(...) #1

declare dso_local i64 @str_empty(i8*) #1

declare dso_local i8* @get_config_directory(...) #1

declare dso_local i32 @tasprintf(i8**, i8*, i8*, i32) #1

declare dso_local i8* @make_full_path(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @tfree_str(i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @write(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
