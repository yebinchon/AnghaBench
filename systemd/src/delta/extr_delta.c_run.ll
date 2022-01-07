; ModuleID = '/home/carl/AnghaBench/systemd/src/delta/extr_delta.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/delta/extr_delta.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_flags = common dso_local global i32 0, align 4
@SHOW_DEFAULTS = common dso_local global i32 0, align 4
@arg_diff = common dso_local global i32 0, align 4
@SHOW_OVERRIDDEN = common dso_local global i32 0, align 4
@arg_pager_flags = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s%i overridden configuration files found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = call i32 @log_show_color(i32 1)
  %11 = call i32 (...) @log_parse_environment()
  %12 = call i32 (...) @log_open()
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @parse_argv(i32 %13, i8** %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %105

20:                                               ; preds = %2
  %21 = load i32, i32* @arg_flags, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @SHOW_DEFAULTS, align 4
  store i32 %24, i32* @arg_flags, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* @arg_diff, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* @arg_flags, align 4
  %30 = load i32, i32* @SHOW_OVERRIDDEN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* @arg_diff, align 4
  br label %44

36:                                               ; preds = %25
  %37 = load i32, i32* @arg_diff, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @SHOW_OVERRIDDEN, align 4
  %41 = load i32, i32* @arg_flags, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* @arg_flags, align 4
  br label %43

43:                                               ; preds = %39, %36
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* @arg_pager_flags, align 4
  %46 = call i32 @pager_open(i32 %45)
  %47 = load i32, i32* @optind, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %44
  %51 = load i32, i32* @optind, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %78, %50
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @path_simplify(i8* %61, i32 0)
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @process_suffix_chop(i8* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %6, align 4
  br label %77

73:                                               ; preds = %56
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %71
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %52

81:                                               ; preds = %52
  br label %93

82:                                               ; preds = %44
  %83 = call i32 @process_suffixes(i32* null)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %6, align 4
  br label %92

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %88, %86
  br label %93

93:                                               ; preds = %92, %81
  %94 = load i32, i32* %6, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %93
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %18
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @log_show_color(i32) #1

declare dso_local i32 @log_parse_environment(...) #1

declare dso_local i32 @log_open(...) #1

declare dso_local i32 @parse_argv(i32, i8**) #1

declare dso_local i32 @pager_open(i32) #1

declare dso_local i32 @path_simplify(i8*, i32) #1

declare dso_local i32 @process_suffix_chop(i8*) #1

declare dso_local i32 @process_suffixes(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
