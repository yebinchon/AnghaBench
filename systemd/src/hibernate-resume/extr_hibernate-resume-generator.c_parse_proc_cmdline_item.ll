; ModuleID = '/home/carl/AnghaBench/systemd/src/hibernate-resume/extr_hibernate-resume-generator.c_parse_proc_cmdline_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/hibernate-resume/extr_hibernate-resume-generator.c_parse_proc_cmdline_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@arg_resume_device = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"resumeflags\00", align 1
@arg_resume_options = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"rootflags\00", align 1
@arg_root_options = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"noresume\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"\22noresume\22 kernel command line switch specified with an argument, ignoring.\00", align 1
@arg_noresume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @parse_proc_cmdline_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_proc_cmdline_item(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @streq(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @proc_cmdline_value_missing(i8* %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %77

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @fstab_node_to_udev_node(i8* %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 (...) @log_oom()
  store i32 %24, i32* %4, align 4
  br label %77

25:                                               ; preds = %18
  %26 = load i32, i32* @arg_resume_device, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @free_and_replace(i32 %26, i8* %27)
  br label %76

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @streq(i8* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @proc_cmdline_value_missing(i8* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %77

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strextend_with_separator(i32* @arg_resume_options, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32* null)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = call i32 (...) @log_oom()
  store i32 %44, i32* %4, align 4
  br label %77

45:                                               ; preds = %39
  br label %75

46:                                               ; preds = %29
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @streq(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @proc_cmdline_value_missing(i8* %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %77

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strextend_with_separator(i32* @arg_root_options, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %57, i32* null)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call i32 (...) @log_oom()
  store i32 %61, i32* %4, align 4
  br label %77

62:                                               ; preds = %56
  br label %74

63:                                               ; preds = %46
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @streq(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @log_warning(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %77

72:                                               ; preds = %67
  store i32 1, i32* @arg_noresume, align 4
  br label %73

73:                                               ; preds = %72, %63
  br label %74

74:                                               ; preds = %73, %62
  br label %75

75:                                               ; preds = %74, %45
  br label %76

76:                                               ; preds = %75, %25
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %70, %60, %55, %43, %38, %23, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i8* @fstab_node_to_udev_node(i8*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @free_and_replace(i32, i8*) #1

declare dso_local i32 @strextend_with_separator(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @log_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
