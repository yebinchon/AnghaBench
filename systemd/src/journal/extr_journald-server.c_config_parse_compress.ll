; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_config_parse_compress.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_config_parse_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"Compress= ambiguously specified as 1, enabling compression with default threshold\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Compress= ambiguously specified as 0, disabling compression\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed to parse Compress= value, ignoring: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_compress(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_2__*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %23 = load i8*, i8** %19, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %21, align 8
  %25 = load i8*, i8** %18, align 8
  %26 = call i64 @isempty(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %10
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 -1, i64* %32, align 8
  br label %88

33:                                               ; preds = %10
  %34 = load i8*, i8** %18, align 8
  %35 = call i64 @streq(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* @LOG_WARNING, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 (i8*, i32, i8*, i32, i32, i8*, ...) @log_syntax(i8* %38, i32 %39, i8* %40, i32 %41, i32 0, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %87

45:                                               ; preds = %33
  %46 = load i8*, i8** %18, align 8
  %47 = call i64 @streq(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* @LOG_WARNING, align 4
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 (i8*, i32, i8*, i32, i32, i8*, ...) @log_syntax(i8* %50, i32 %51, i8* %52, i32 %53, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %86

57:                                               ; preds = %45
  %58 = load i8*, i8** %18, align 8
  %59 = call i32 @parse_boolean(i8* %58)
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %22, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load i8*, i8** %18, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = call i32 @parse_size(i8* %63, i32 1024, i64* %65)
  store i32 %66, i32* %22, align 4
  %67 = load i32, i32* %22, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* @LOG_ERR, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %22, align 4
  %75 = load i8*, i8** %18, align 8
  %76 = call i32 (i8*, i32, i8*, i32, i32, i8*, ...) @log_syntax(i8* %70, i32 %71, i8* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  br label %80

77:                                               ; preds = %62
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %69
  br label %85

81:                                               ; preds = %57
  %82 = load i32, i32* %22, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %80
  br label %86

86:                                               ; preds = %85, %49
  br label %87

87:                                               ; preds = %86, %37
  br label %88

88:                                               ; preds = %87, %28
  ret i32 0
}

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, ...) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32 @parse_size(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
