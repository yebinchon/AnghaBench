; ModuleID = '/home/carl/AnghaBench/systemd/src/gpt-auto-generator/extr_gpt-auto-generator.c_parse_proc_cmdline_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/gpt-auto-generator/extr_gpt-auto-generator.c_parse_proc_cmdline_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"systemd.gpt_auto\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"rd.systemd.gpt_auto\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Failed to parse gpt-auto switch \22%s\22, ignoring: %m\00", align 1
@arg_enabled = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"gpt-auto\00", align 1
@arg_root_enabled = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"roothash\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@arg_root_rw = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @parse_proc_cmdline_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_proc_cmdline_item(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @proc_cmdline_key_streq(i8* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @proc_cmdline_key_streq(i8* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %14, %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @parse_boolean(i8* %22)
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 1, %24 ]
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @log_warning_errno(i32 %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  br label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* @arg_enabled, align 4
  br label %35

35:                                               ; preds = %33, %29
  br label %80

36:                                               ; preds = %14
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @proc_cmdline_key_streq(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @proc_cmdline_value_missing(i8* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %81

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @streq(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %48, i32* @arg_root_enabled, align 4
  br label %79

49:                                               ; preds = %36
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @proc_cmdline_key_streq(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @proc_cmdline_value_missing(i8* %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %81

59:                                               ; preds = %53
  store i32 0, i32* @arg_root_enabled, align 4
  br label %78

60:                                               ; preds = %49
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @proc_cmdline_key_streq(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 1, i32* @arg_root_rw, align 4
  br label %77

68:                                               ; preds = %64, %60
  %69 = load i8*, i8** %5, align 8
  %70 = call i64 @proc_cmdline_key_streq(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i8*, i8** %6, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 0, i32* @arg_root_rw, align 4
  br label %76

76:                                               ; preds = %75, %72, %68
  br label %77

77:                                               ; preds = %76, %67
  br label %78

78:                                               ; preds = %77, %59
  br label %79

79:                                               ; preds = %78, %46
  br label %80

80:                                               ; preds = %79, %35
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %58, %45
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @proc_cmdline_key_streq(i8*, i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32 @log_warning_errno(i32, i8*, i8*) #1

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i32 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
