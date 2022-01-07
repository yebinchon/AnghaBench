; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_timer_property.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_timer_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"WakeSystem\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"RemainAfterElapse\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Persistent\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"OnTimezoneChange\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"OnClockChange\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"AccuracySec\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"RandomizedDelaySec\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"OnActiveSec\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"OnBootSec\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"OnStartupSec\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"OnUnitActiveSec\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"OnUnitInactiveSec\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"(sv)\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"TimersMonotonic\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"a(st)\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Failed to parse %s=%s: %m\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"OnCalendar\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"TimersCalendar\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"a(ss)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @bus_append_timer_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_append_timer_property(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @bus_append_parse_boolean(i32* %14, i8* %15, i8* %16)
  store i32 %17, i32* %4, align 4
  br label %84

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @bus_append_parse_sec_rename(i32* %23, i8* %24, i8* %25)
  store i32 %26, i32* %4, align 4
  br label %84

27:                                               ; preds = %18
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @isempty(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 (i32*, i8*, i8*, i8*, i32, ...) @sd_bus_message_append(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 0)
  store i32 %37, i32* %8, align 4
  br label %53

38:                                               ; preds = %31
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @parse_sec(i8* %39, i8** %9)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @log_error_errno(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i8* %45, i8* %46)
  store i32 %47, i32* %4, align 4
  br label %84

48:                                               ; preds = %38
  %49 = load i32*, i32** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 (i32*, i8*, i8*, i8*, i32, ...) @sd_bus_message_append(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 1, i8* %50, i8* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %48, %35
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @bus_log_create_error(i32 %57)
  store i32 %58, i32* %4, align 4
  br label %84

59:                                               ; preds = %53
  store i32 1, i32* %4, align 4
  br label %84

60:                                               ; preds = %27
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @streq(i8* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = load i8*, i8** %7, align 8
  %66 = call i64 @isempty(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 (i32*, i8*, i8*, i8*, i32, ...) @sd_bus_message_append(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 0)
  store i32 %70, i32* %8, align 4
  br label %76

71:                                               ; preds = %64
  %72 = load i32*, i32** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 (i32*, i8*, i8*, i8*, i32, ...) @sd_bus_message_append(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 1, i8* %73, i8* %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @bus_log_create_error(i32 %80)
  store i32 %81, i32* %4, align 4
  br label %84

82:                                               ; preds = %76
  store i32 1, i32* %4, align 4
  br label %84

83:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %82, %79, %59, %56, %43, %22, %13
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*, ...) #1

declare dso_local i32 @bus_append_parse_boolean(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_parse_sec_rename(i32*, i8*, i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i8*, i8*, i32, ...) #1

declare dso_local i32 @parse_sec(i8*, i8**) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*, i8*) #1

declare dso_local i32 @bus_log_create_error(i32) #1

declare dso_local i64 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
