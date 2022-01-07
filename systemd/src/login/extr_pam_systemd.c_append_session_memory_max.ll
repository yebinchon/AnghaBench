; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_append_session_memory_max.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_append_session_memory_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(sv)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"MemoryMax\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to append to bus message: %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"MemoryMaxScale\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"Failed to parse systemd.memory_max: %s, ignoring.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @append_session_memory_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_session_memory_max(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @isempty(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @streq(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @sd_bus_message_append(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @LOG_ERR, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @strerror_safe(i32 %26)
  %28 = call i32 @pam_syslog(i32* %24, i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %80

30:                                               ; preds = %18
  br label %79

31:                                               ; preds = %14
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @parse_permille(i8* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @UINT32_MAX, align 4
  %40 = mul i32 %38, %39
  %41 = udiv i32 %40, 1000
  %42 = call i32 @sd_bus_message_append(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @LOG_ERR, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @strerror_safe(i32 %48)
  %50 = call i32 @pam_syslog(i32* %46, i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %80

52:                                               ; preds = %36
  br label %78

53:                                               ; preds = %31
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @parse_size(i8* %54, i32 1024, i32* %8)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @sd_bus_message_append(i32* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @LOG_ERR, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i8* @strerror_safe(i32 %67)
  %69 = call i32 @pam_syslog(i32* %65, i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %80

71:                                               ; preds = %58
  br label %77

72:                                               ; preds = %53
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @LOG_WARNING, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @pam_syslog(i32* %73, i32 %74, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %72, %71
  br label %78

78:                                               ; preds = %77, %52
  br label %79

79:                                               ; preds = %78, %30
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %64, %45, %23, %13
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @pam_syslog(i32*, i32, i8*, i8*) #1

declare dso_local i8* @strerror_safe(i32) #1

declare dso_local i32 @parse_permille(i8*) #1

declare dso_local i32 @parse_size(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
