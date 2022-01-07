; ModuleID = '/home/carl/AnghaBench/systemd/src/portable/extr_portablectl.c_print_changes.c'
source_filename = "/home/carl/AnghaBench/systemd/src/portable/extr_portablectl.c_print_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_quiet = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"(sss)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Created symlink %s %s %s.\00", align 1
@SPECIAL_GLYPH_ARROW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Copied %s.\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Copied %s %s %s.\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Removed %s.\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Written %s.\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Created directory %s.\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Unexpected change: %s/%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @print_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_changes(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i64, i64* @arg_quiet, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %99

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @sd_bus_message_enter_container(i32* %12, i8 signext 97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bus_log_parse_error(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %99

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %90, %19
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @sd_bus_message_read(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, i8** %6, i8** %7)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @bus_log_parse_error(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %99

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %91

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @streq(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @SPECIAL_GLYPH_ARROW, align 4
  %39 = call i32 @special_glyph(i32 %38)
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %39, i8* %40)
  br label %90

42:                                               ; preds = %32
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @streq(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @isempty(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  br label %59

53:                                               ; preds = %46
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* @SPECIAL_GLYPH_ARROW, align 4
  %56 = call i32 @special_glyph(i32 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %54, i32 %56, i8* %57)
  br label %59

59:                                               ; preds = %53, %50
  br label %89

60:                                               ; preds = %42
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @streq(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %65)
  br label %88

67:                                               ; preds = %60
  %68 = load i8*, i8** %5, align 8
  %69 = call i64 @streq(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %72)
  br label %87

74:                                               ; preds = %67
  %75 = load i8*, i8** %5, align 8
  %76 = call i64 @streq(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %79)
  br label %86

81:                                               ; preds = %74
  %82 = load i8*, i8** %5, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @log_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* %82, i8* %83, i8* %84)
  br label %86

86:                                               ; preds = %81, %78
  br label %87

87:                                               ; preds = %86, %71
  br label %88

88:                                               ; preds = %87, %64
  br label %89

89:                                               ; preds = %88, %59
  br label %90

90:                                               ; preds = %89, %36
  br label %20

91:                                               ; preds = %31
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @sd_bus_message_exit_container(i32* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %99

98:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %96, %25, %16, %10
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @sd_bus_message_enter_container(i32*, i8 signext, i8*) #1

declare dso_local i32 @bus_log_parse_error(i32) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**, i8**, i8**) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @log_info(i8*, i8*, ...) #1

declare dso_local i32 @special_glyph(i32) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @log_error(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sd_bus_message_exit_container(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
