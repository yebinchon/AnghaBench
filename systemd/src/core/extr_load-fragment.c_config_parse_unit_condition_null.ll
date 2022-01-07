; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_unit_condition_null.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_unit_condition_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s= is deprecated, please do not use.\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Failed to parse boolean value in condition, ignoring: %s\00", align 1
@CONDITION_NULL = common dso_local global i32 0, align 4
@conditions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_unit_condition_null(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %22 = alloca i32**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
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
  %27 = load i8*, i8** %20, align 8
  %28 = bitcast i8* %27 to i32**
  store i32** %28, i32*** %22, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %17, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %19, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %20, align 8
  %36 = call i32 @assert(i8* %35)
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* @LOG_WARNING, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i8*, i8** %17, align 8
  %42 = call i32 @log_syntax(i8* %37, i32 %38, i8* %39, i32 %40, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %19, align 8
  %44 = call i64 @isempty(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %10
  %47 = load i32**, i32*** %22, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = call i32* @condition_free_list(i32* %48)
  %50 = load i32**, i32*** %22, align 8
  store i32* %49, i32** %50, align 8
  store i32 0, i32* %11, align 4
  br label %111

51:                                               ; preds = %10
  %52 = load i8*, i8** %19, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 124
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %24, align 4
  %58 = load i32, i32* %24, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i8*, i8** %19, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %19, align 8
  br label %63

63:                                               ; preds = %60, %51
  %64 = load i8*, i8** %19, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 33
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %25, align 4
  %70 = load i32, i32* %25, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i8*, i8** %19, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %19, align 8
  br label %75

75:                                               ; preds = %72, %63
  %76 = load i8*, i8** %19, align 8
  %77 = call i32 @parse_boolean(i8* %76)
  store i32 %77, i32* %26, align 4
  %78 = load i32, i32* %26, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* @LOG_ERR, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %26, align 4
  %86 = load i8*, i8** %19, align 8
  %87 = call i32 @log_syntax(i8* %81, i32 %82, i8* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  store i32 0, i32* %11, align 4
  br label %111

88:                                               ; preds = %75
  %89 = load i32, i32* %26, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %25, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %25, align 4
  br label %96

96:                                               ; preds = %91, %88
  %97 = load i32, i32* @CONDITION_NULL, align 4
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %25, align 4
  %100 = call i32* @condition_new(i32 %97, i32* null, i32 %98, i32 %99)
  store i32* %100, i32** %23, align 8
  %101 = load i32*, i32** %23, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %96
  %104 = call i32 (...) @log_oom()
  store i32 %104, i32* %11, align 4
  br label %111

105:                                              ; preds = %96
  %106 = load i32, i32* @conditions, align 4
  %107 = load i32**, i32*** %22, align 8
  %108 = load i32*, i32** %107, align 8
  %109 = load i32*, i32** %23, align 8
  %110 = call i32 @LIST_PREPEND(i32 %106, i32* %108, i32* %109)
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %105, %103, %80, %46
  %112 = load i32, i32* %11, align 4
  ret i32 %112
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32* @condition_free_list(i32*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32* @condition_new(i32, i32*, i32, i32) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @LIST_PREPEND(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
