; ModuleID = '/home/carl/AnghaBench/systemd/src/run-generator/extr_run-generator.c_parse.c'
source_filename = "/home/carl/AnghaBench/systemd/src/run-generator/extr_run-generator.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"systemd.run\00", align 1
@arg_commands = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"systemd.run_success_action\00", align 1
@arg_success_action = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"systemd.run_failure_action\00", align 1
@arg_failure_action = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @proc_cmdline_key_streq(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @proc_cmdline_value_missing(i8* %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %63

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strv_extend(i32* @arg_commands, i8* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (...) @log_oom()
  store i32 %24, i32* %4, align 4
  br label %63

25:                                               ; preds = %18
  br label %62

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @proc_cmdline_key_streq(i8* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @proc_cmdline_value_missing(i8* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %63

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @free_and_strdup(i32* @arg_success_action, i8* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (...) @log_oom()
  store i32 %41, i32* %4, align 4
  br label %63

42:                                               ; preds = %36
  br label %61

43:                                               ; preds = %26
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @proc_cmdline_key_streq(i8* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @proc_cmdline_value_missing(i8* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %63

53:                                               ; preds = %47
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @free_and_strdup(i32* @arg_failure_action, i8* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 (...) @log_oom()
  store i32 %58, i32* %4, align 4
  br label %63

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %43
  br label %61

61:                                               ; preds = %60, %42
  br label %62

62:                                               ; preds = %61, %25
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %57, %52, %40, %35, %23, %17
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @proc_cmdline_key_streq(i8*, i8*) #1

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i32 @strv_extend(i32*, i8*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i64 @free_and_strdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
