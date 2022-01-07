; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }

@run.verbs = internal constant [26 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 154, i32 154, i32 0, i32 133 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 154, i32 1, i32 153, i32 149 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 154, i32 1, i32 0, i32 152 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 154, i32 154, i32 0, i32 151 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 154, i32 1, i32 0, i32 150 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 154, i32 154, i32 0, i32 143 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 154, i32 2, i32 0, i32 135 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 154, i32 2, i32 0, i32 134 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 2, i32 2, i32 0, i32 131 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 154, i32 1, i32 0, i32 137 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 2, i32 2, i32 0, i32 130 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 154, i32 1, i32 0, i32 136 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 154, i32 1, i32 0, i32 142 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 2, i32 154, i32 0, i32 148 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 154, i32 154, i32 0, i32 145 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 1, i32 1, i32 0, i32 138 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 154, i32 154, i32 0, i32 141 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 154, i32 154, i32 0, i32 140 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 2, i32 154, i32 0, i32 147 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 2, i32 154, i32 0, i32 144 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 2, i32 154, i32 0, i32 129 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 2, i32 154, i32 0, i32 128 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 2, i32 154, i32 0, i32 139 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 154, i32 2, i32 0, i32 132 }, %struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 154, i32 154, i32 0, i32 146 }, %struct.TYPE_3__ zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"blame\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"critical-chain\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"plot\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dot\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"log-level\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"log-target\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"set-log-level\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"get-log-level\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"set-log-target\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"get-log-target\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"cat-config\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"unit-files\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"unit-paths\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"exit-status\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"syscall-filter\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"calendar\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"timespan\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"service-watchdogs\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"security\00", align 1
@LC_ALL = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LC_NUMERIC = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @LC_ALL, align 4
  %8 = call i32 @setlocale(i32 %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0))
  %9 = load i32, i32* @LC_NUMERIC, align 4
  %10 = call i32 @setlocale(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %11 = call i32 @log_show_color(i32 1)
  %12 = call i32 (...) @log_parse_environment()
  %13 = call i32 (...) @log_open()
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @parse_argv(i32 %14, i8** %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @dispatch_verb(i32 %22, i8** %23, %struct.TYPE_3__* getelementptr inbounds ([26 x %struct.TYPE_3__], [26 x %struct.TYPE_3__]* @run.verbs, i64 0, i64 0), i32* null)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @log_show_color(i32) #1

declare dso_local i32 @log_parse_environment(...) #1

declare dso_local i32 @log_open(...) #1

declare dso_local i32 @parse_argv(i32, i8**) #1

declare dso_local i32 @dispatch_verb(i32, i8**, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
