; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_timer.c_timer_deserialize_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_timer.c_timer_deserialize_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to parse state value: %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to parse result value: %s\00", align 1
@TIMER_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"last-trigger-realtime\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"last-trigger-monotonic\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Unknown serialization key: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @timer_deserialize_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_deserialize_item(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.TYPE_5__* @TIMER(i8* %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @assert(i8* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @assert(i8* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @assert(i8* %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @assert(i8* %20)
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @streq(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @timer_state_from_string(i8* %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @log_unit_debug(i8* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %38

34:                                               ; preds = %25
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %30
  br label %89

39:                                               ; preds = %4
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @streq(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @timer_result_from_string(i8* %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @log_unit_debug(i8* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  br label %61

52:                                               ; preds = %43
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @TIMER_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %48
  br label %88

62:                                               ; preds = %39
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @streq(i8* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = call i32 @deserialize_usec(i8* %67, i32* %70)
  br label %87

72:                                               ; preds = %62
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @streq(i8* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @deserialize_usec(i8* %77, i32* %80)
  br label %86

82:                                               ; preds = %72
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @log_unit_debug(i8* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %66
  br label %88

88:                                               ; preds = %87, %61
  br label %89

89:                                               ; preds = %88, %38
  ret i32 0
}

declare dso_local %struct.TYPE_5__* @TIMER(i8*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @timer_state_from_string(i8*) #1

declare dso_local i32 @log_unit_debug(i8*, i8*, i8*) #1

declare dso_local i64 @timer_result_from_string(i8*) #1

declare dso_local i32 @deserialize_usec(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
