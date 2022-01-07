; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_append_session_cg_weight.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_append_session_cg_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"(sv)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to append to bus message: %s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CPUWeight\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Failed to parse systemd.cpu_weight: %s, ignoring.\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Failed to parse systemd.io_weight: %s, ignoring.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*)* @append_session_cg_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_session_cg_weight(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i64 @isempty(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %52

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @cg_weight_parse(i8* %17, i32* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load i32*, i32** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @sd_bus_message_append(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @LOG_ERR, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i8* @strerror_safe(i32 %31)
  %33 = call i32 @pam_syslog(i32* %29, i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %52

35:                                               ; preds = %21
  br label %51

36:                                               ; preds = %16
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @streq(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @LOG_WARNING, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @pam_syslog(i32* %41, i32 %42, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  br label %50

45:                                               ; preds = %36
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @LOG_WARNING, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @pam_syslog(i32* %46, i32 %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %35
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %28, %15
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @cg_weight_parse(i8*, i32*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @pam_syslog(i32*, i32, i8*, i8*) #1

declare dso_local i8* @strerror_safe(i32) #1

declare dso_local i64 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
