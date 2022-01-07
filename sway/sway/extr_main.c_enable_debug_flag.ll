; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_main.c_enable_debug_flag.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_main.c_enable_debug_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"damage=highlight\00", align 1
@DAMAGE_HIGHLIGHT = common dso_local global i32 0, align 4
@debug = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"damage=rerender\00", align 1
@DAMAGE_RERENDER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"noatomic\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"txn-wait\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"txn-timings\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"txn-timeout=\00", align 1
@server = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Unknown debug flag: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enable_debug_flag(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strcmp(i8* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @DAMAGE_HIGHLIGHT, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug, i32 0, i32 3), align 4
  br label %46

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @DAMAGE_RERENDER, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug, i32 0, i32 3), align 4
  br label %45

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug, i32 0, i32 0), align 4
  br label %44

19:                                               ; preds = %14
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug, i32 0, i32 1), align 4
  br label %43

24:                                               ; preds = %19
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug, i32 0, i32 2), align 4
  br label %42

29:                                               ; preds = %24
  %30 = load i8*, i8** %2, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 12)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 12
  %36 = call i32 @atoi(i8* %35)
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 4
  br label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @SWAY_ERROR, align 4
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @sway_log(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %28
  br label %43

43:                                               ; preds = %42, %23
  br label %44

44:                                               ; preds = %43, %18
  br label %45

45:                                               ; preds = %44, %12
  br label %46

46:                                               ; preds = %45, %6
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
