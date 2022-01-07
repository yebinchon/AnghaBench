; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_emergency_action.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_emergency_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%s= in user mode specified as \22%s\22, using \22exit-force\22 instead.\00", align 1
@EMERGENCY_ACTION_EXIT_FORCE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s= specified as %s mode action, ignoring: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to parse %s=, ignoring: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_emergency_action(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
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
  store i32* null, i32** %22, align 8
  %25 = load i8*, i8** %20, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %23, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %17, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %19, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %20, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %10
  %38 = load i8*, i8** %21, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %22, align 8
  br label %45

42:                                               ; preds = %10
  %43 = load i8*, i8** %20, align 8
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %22, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i8*, i8** %19, align 8
  %47 = load i32*, i32** %22, align 8
  %48 = call i64 @MANAGER_IS_SYSTEM(i32* %47)
  %49 = load i32*, i32** %23, align 8
  %50 = call i32 @parse_emergency_action(i8* %46, i64 %48, i32* %49)
  store i32 %50, i32* %24, align 4
  %51 = load i32, i32* %24, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %102

53:                                               ; preds = %45
  %54 = load i32, i32* %24, align 4
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i32*, i32** %22, align 8
  %60 = call i64 @MANAGER_IS_USER(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* @LOG_INFO, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %24, align 4
  %68 = load i8*, i8** %17, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = call i32 (i8*, i32, i8*, i32, i32, i8*, i8*, i8*, ...) @log_syntax(i8* %63, i32 %64, i8* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %68, i8* %69)
  %71 = load i32, i32* @EMERGENCY_ACTION_EXIT_FORCE, align 4
  %72 = load i32*, i32** %23, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %11, align 4
  br label %103

73:                                               ; preds = %58, %53
  %74 = load i32, i32* %24, align 4
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %73
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* @LOG_ERR, align 4
  %81 = load i8*, i8** %13, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %24, align 4
  %84 = load i8*, i8** %17, align 8
  %85 = load i32*, i32** %22, align 8
  %86 = call i64 @MANAGER_IS_SYSTEM(i32* %85)
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %90 = load i8*, i8** %19, align 8
  %91 = call i32 (i8*, i32, i8*, i32, i32, i8*, i8*, i8*, ...) @log_syntax(i8* %79, i32 %80, i8* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %84, i8* %89, i8* %90)
  br label %101

92:                                               ; preds = %73
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* @LOG_ERR, align 4
  %95 = load i8*, i8** %13, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %24, align 4
  %98 = load i8*, i8** %17, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = call i32 (i8*, i32, i8*, i32, i32, i8*, i8*, i8*, ...) @log_syntax(i8* %93, i32 %94, i8* %95, i32 %96, i32 %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %98, i8* %99)
  br label %101

101:                                              ; preds = %92, %78
  store i32 0, i32* %11, align 4
  br label %103

102:                                              ; preds = %45
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %102, %101, %62
  %104 = load i32, i32* %11, align 4
  ret i32 %104
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @parse_emergency_action(i8*, i64, i32*) #1

declare dso_local i64 @MANAGER_IS_SYSTEM(i32*) #1

declare dso_local i64 @MANAGER_IS_USER(i32*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
