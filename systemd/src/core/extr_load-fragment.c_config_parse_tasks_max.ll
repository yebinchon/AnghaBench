; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_tasks_max.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_tasks_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@UINT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@CGROUP_LIMIT_MAX = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Invalid maximum tasks value '%s', ignoring: %m\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Maximum tasks value '%s' out of range, ignoring.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_tasks_max(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_4__*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %26 = load i8*, i8** %20, align 8
  %27 = bitcast i8* %26 to i64*
  store i64* %27, i64** %22, align 8
  %28 = load i8*, i8** %21, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %24, align 8
  %30 = load i8*, i8** %19, align 8
  %31 = call i64 @isempty(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %10
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  br label %44

42:                                               ; preds = %33
  %43 = load i64, i64* @UINT64_MAX, align 8
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i64 [ %41, %36 ], [ %43, %42 ]
  %46 = load i64*, i64** %22, align 8
  store i64 %45, i64* %46, align 8
  store i32 0, i32* %11, align 4
  br label %93

47:                                               ; preds = %10
  %48 = load i8*, i8** %19, align 8
  %49 = call i64 @streq(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i64, i64* @CGROUP_LIMIT_MAX, align 8
  %53 = load i64*, i64** %22, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %11, align 4
  br label %93

54:                                               ; preds = %47
  %55 = load i8*, i8** %19, align 8
  %56 = call i32 @parse_permille(i8* %55)
  store i32 %56, i32* %25, align 4
  %57 = load i32, i32* %25, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load i8*, i8** %19, align 8
  %61 = call i32 @safe_atou64(i8* %60, i64* %23)
  store i32 %61, i32* %25, align 4
  %62 = load i32, i32* %25, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* @LOG_ERR, align 4
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %25, align 4
  %70 = load i8*, i8** %19, align 8
  %71 = call i32 @log_syntax(i8* %65, i32 %66, i8* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  store i32 0, i32* %11, align 4
  br label %93

72:                                               ; preds = %59
  br label %76

73:                                               ; preds = %54
  %74 = load i32, i32* %25, align 4
  %75 = call i64 @system_tasks_max_scale(i32 %74, i32 1000)
  store i64 %75, i64* %23, align 8
  br label %76

76:                                               ; preds = %73, %72
  %77 = load i64, i64* %23, align 8
  %78 = icmp sle i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %23, align 8
  %81 = load i64, i64* @UINT64_MAX, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79, %76
  %84 = load i8*, i8** %12, align 8
  %85 = load i32, i32* @LOG_ERR, align 4
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i8*, i8** %19, align 8
  %89 = call i32 @log_syntax(i8* %84, i32 %85, i8* %86, i32 %87, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  store i32 0, i32* %11, align 4
  br label %93

90:                                               ; preds = %79
  %91 = load i64, i64* %23, align 8
  %92 = load i64*, i64** %22, align 8
  store i64 %91, i64* %92, align 8
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %90, %83, %64, %51, %44
  %94 = load i32, i32* %11, align 4
  ret i32 %94
}

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @parse_permille(i8*) #1

declare dso_local i32 @safe_atou64(i8*, i64*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i64 @system_tasks_max_scale(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
