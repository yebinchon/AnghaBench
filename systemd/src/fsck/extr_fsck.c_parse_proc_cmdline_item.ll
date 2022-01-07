; ModuleID = '/home/carl/AnghaBench/systemd/src/fsck/extr_fsck.c_parse_proc_cmdline_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/fsck/extr_fsck.c_parse_proc_cmdline_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"fsck.mode\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@arg_skip = common dso_local global i32 0, align 4
@arg_force = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Invalid fsck.mode= parameter '%s'. Ignoring.\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"fsck.repair\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"preen\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@arg_repair = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Invalid fsck.repair= parameter '%s'. Ignoring.\00", align 1
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
  %12 = call i64 @streq(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @proc_cmdline_value_missing(i8* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %74

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @streq(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* @arg_skip, align 4
  store i32 0, i32* @arg_force, align 4
  br label %40

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @streq(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* @arg_force, align 4
  br label %39

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @streq(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* @arg_skip, align 4
  br label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 (i8*, ...) @log_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %34
  br label %39

39:                                               ; preds = %38, %29
  br label %40

40:                                               ; preds = %39, %24
  br label %73

41:                                               ; preds = %3
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @streq(i8* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @proc_cmdline_value_missing(i8* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %74

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @streq(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** @arg_repair, align 8
  br label %71

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @parse_boolean(i8* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** @arg_repair, align 8
  br label %70

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** @arg_repair, align 8
  br label %69

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 (i8*, ...) @log_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %65
  br label %70

70:                                               ; preds = %69, %61
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71, %41
  br label %73

73:                                               ; preds = %72, %40
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %50, %19
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @proc_cmdline_value_missing(i8*, i8*) #1

declare dso_local i32 @log_warning(i8*, ...) #1

declare dso_local i32 @parse_boolean(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
