; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_append_session_runtime_max_sec.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_append_session_runtime_max_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(sv)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"RuntimeMaxUSec\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to append to bus message: %s\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"Failed to parse systemd.runtime_max_sec: %s, ignoring.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @append_session_runtime_max_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_session_runtime_max_sec(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @isempty(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @streq(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %44

18:                                               ; preds = %13
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @parse_sec(i8* %19, i64* %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @sd_bus_message_append(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @LOG_ERR, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @strerror_safe(i32 %33)
  %35 = call i32 @pam_syslog(i32* %31, i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %44

37:                                               ; preds = %23
  br label %43

38:                                               ; preds = %18
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @LOG_WARNING, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @pam_syslog(i32* %39, i32 %40, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %38, %37
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %30, %17
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @parse_sec(i8*, i64*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @pam_syslog(i32*, i32, i8*, i8*) #1

declare dso_local i8* @strerror_safe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
