; ModuleID = '/home/carl/AnghaBench/systemd/src/firstboot/extr_firstboot.c_process_locale.c'
source_filename = "/home/carl/AnghaBench/systemd/src/firstboot/extr_firstboot.c_process_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_root = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"/etc/locale.conf\00", align 1
@F_OK = common dso_local global i32 0, align 4
@arg_copy_locale = common dso_local global i64 0, align 8
@COPY_REFLINK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to copy %s: %m\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s copied.\00", align 1
@arg_locale = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"LANG=\00", align 1
@arg_locale_messages = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"LC_MESSAGES=\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Failed to write %s: %m\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s written.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @process_locale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_locale() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [3 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %6 = load i64, i64* @arg_root, align 8
  %7 = call i8* @prefix_roota(i64 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* @F_OK, align 4
  %10 = call i64 @laccess(i8* %8, i32 %9)
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %95

13:                                               ; preds = %0
  %14 = load i64, i64* @arg_copy_locale, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %13
  %17 = load i64, i64* @arg_root, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @mkdir_parents(i8* %20, i32 493)
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* @COPY_REFLINK, align 4
  %24 = call i32 @copy_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %22, i32 0, i32 420, i32 0, i32 0, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @log_error_errno(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 %35, i32* %1, align 4
  br label %95

36:                                               ; preds = %29
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @log_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  store i32 0, i32* %1, align 4
  br label %95

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39, %16, %13
  %41 = call i32 (...) @prompt_locale()
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %1, align 4
  br label %95

46:                                               ; preds = %40
  %47 = load i32, i32* @arg_locale, align 4
  %48 = call i32 @isempty(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @arg_locale, align 4
  %52 = call i8* @strjoina(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %55
  store i8* %52, i8** %56, align 8
  br label %57

57:                                               ; preds = %50, %46
  %58 = load i32, i32* @arg_locale_messages, align 4
  %59 = call i32 @isempty(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @arg_locale_messages, align 4
  %63 = load i32, i32* @arg_locale, align 4
  %64 = call i32 @streq(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @arg_locale_messages, align 4
  %68 = call i8* @strjoina(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %4, align 4
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %71
  store i8* %68, i8** %72, align 8
  br label %73

73:                                               ; preds = %66, %61, %57
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %1, align 4
  br label %95

77:                                               ; preds = %73
  %78 = load i32, i32* %4, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %79
  store i8* null, i8** %80, align 8
  %81 = load i8*, i8** %2, align 8
  %82 = call i32 @mkdir_parents(i8* %81, i32 493)
  %83 = load i8*, i8** %2, align 8
  %84 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %85 = call i32 @write_env_file(i8* %83, i8** %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %77
  %89 = load i32, i32* %5, align 4
  %90 = load i8*, i8** %2, align 8
  %91 = call i32 @log_error_errno(i32 %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %90)
  store i32 %91, i32* %1, align 4
  br label %95

92:                                               ; preds = %77
  %93 = load i8*, i8** %2, align 8
  %94 = call i32 @log_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  store i32 0, i32* %1, align 4
  br label %95

95:                                               ; preds = %92, %88, %76, %44, %36, %32, %12
  %96 = load i32, i32* %1, align 4
  ret i32 %96
}

declare dso_local i8* @prefix_roota(i64, i8*) #1

declare dso_local i64 @laccess(i8*, i32) #1

declare dso_local i32 @mkdir_parents(i8*, i32) #1

declare dso_local i32 @copy_file(i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @log_info(i8*, i8*) #1

declare dso_local i32 @prompt_locale(...) #1

declare dso_local i32 @isempty(i32) #1

declare dso_local i8* @strjoina(i8*, i32) #1

declare dso_local i32 @streq(i32, i32) #1

declare dso_local i32 @write_env_file(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
