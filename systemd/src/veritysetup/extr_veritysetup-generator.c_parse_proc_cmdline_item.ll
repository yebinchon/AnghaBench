; ModuleID = '/home/carl/AnghaBench/systemd/src/veritysetup/extr_veritysetup-generator.c_parse_proc_cmdline_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/veritysetup/extr_veritysetup-generator.c_parse_proc_cmdline_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"systemd.verity\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Failed to parse verity= kernel command line switch %s. Ignoring.\00", align 1
@arg_enabled = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"roothash\00", align 1
@arg_root_hash = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"systemd.verity_root_data\00", align 1
@arg_data_what = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"systemd.verity_root_hash\00", align 1
@arg_hash_what = common dso_local global i32 0, align 4
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
  %10 = call i64 @proc_cmdline_key_streq(i8* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @parse_boolean(i8* %16)
  br label %19

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i32 [ %17, %15 ], [ 1, %18 ]
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @log_warning(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* @arg_enabled, align 4
  br label %28

28:                                               ; preds = %26, %23
  br label %86

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @proc_cmdline_key_streq(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @proc_cmdline_value_missing(i8* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %87

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @free_and_strdup(i32* @arg_root_hash, i8* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (...) @log_oom()
  store i32 %45, i32* %4, align 4
  br label %87

46:                                               ; preds = %39
  br label %85

47:                                               ; preds = %29
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @proc_cmdline_key_streq(i8* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @proc_cmdline_value_missing(i8* %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %87

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @free_and_strdup(i32* @arg_data_what, i8* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 (...) @log_oom()
  store i32 %63, i32* %4, align 4
  br label %87

64:                                               ; preds = %57
  br label %84

65:                                               ; preds = %47
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @proc_cmdline_key_streq(i8* %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @proc_cmdline_value_missing(i8* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %87

75:                                               ; preds = %69
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @free_and_strdup(i32* @arg_hash_what, i8* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 (...) @log_oom()
  store i32 %81, i32* %4, align 4
  br label %87

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83, %64
  br label %85

85:                                               ; preds = %84, %46
  br label %86

86:                                               ; preds = %85, %28
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %80, %74, %62, %56, %44, %38
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @proc_cmdline_key_streq(i8*, i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32 @log_warning(i8*, i8*) #1

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i32 @free_and_strdup(i32*, i8*) #1

declare dso_local i32 @log_oom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
