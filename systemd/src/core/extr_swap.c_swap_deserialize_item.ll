; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_swap.c_swap_deserialize_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_swap.c_swap_deserialize_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to parse state value: %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to parse result value: %s\00", align 1
@SWAP_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"control-pid\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to parse control-pid value: %s\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"control-command\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Failed to parse exec-command value: %s\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Unknown serialization key: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, %struct.TYPE_6__*)* @swap_deserialize_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_deserialize_item(i32* %0, i8* %1, i8* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_6__* @SWAP(i32* %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %17 = call i32 @assert(%struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = call i32 @assert(%struct.TYPE_6__* %18)
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @streq(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @swap_state_from_string(i8* %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @log_unit_debug(i32* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %36

32:                                               ; preds = %23
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %28
  br label %109

37:                                               ; preds = %4
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @streq(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @swap_result_from_string(i8* %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32*, i32** %5, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @log_unit_debug(i32* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  br label %59

50:                                               ; preds = %41
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @SWAP_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %46
  br label %108

60:                                               ; preds = %37
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @streq(i8* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i8*, i8** %7, align 8
  %66 = call i64 @parse_pid(i8* %65, i32* %12)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32*, i32** %5, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @log_unit_debug(i32* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  br label %76

72:                                               ; preds = %64
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %68
  br label %107

77:                                               ; preds = %60
  %78 = load i8*, i8** %6, align 8
  %79 = call i64 @streq(i8* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %77
  %82 = load i8*, i8** %7, align 8
  %83 = call i64 @swap_exec_command_from_string(i8* %82)
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32*, i32** %5, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @log_unit_debug(i32* %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %88)
  br label %101

90:                                               ; preds = %81
  %91 = load i64, i64* %13, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %13, align 8
  %98 = add nsw i64 %96, %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %90, %86
  br label %106

102:                                              ; preds = %77
  %103 = load i32*, i32** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @log_unit_debug(i32* %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %102, %101
  br label %107

107:                                              ; preds = %106, %76
  br label %108

108:                                              ; preds = %107, %59
  br label %109

109:                                              ; preds = %108, %36
  ret i32 0
}

declare dso_local %struct.TYPE_6__* @SWAP(i32*) #1

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @swap_state_from_string(i8*) #1

declare dso_local i32 @log_unit_debug(i32*, i8*, i8*) #1

declare dso_local i64 @swap_result_from_string(i8*) #1

declare dso_local i64 @parse_pid(i8*, i32*) #1

declare dso_local i64 @swap_exec_command_from_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
