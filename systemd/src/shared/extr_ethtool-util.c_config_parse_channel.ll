; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_config_parse_channel.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_config_parse_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to parse channel value, ignoring: %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid %s value, ignoring: %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"RxChannels\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"TxChannels\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"OtherChannels\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"CombinedChannels\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_channel(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %22 = alloca %struct.TYPE_2__*, align 8
  %23 = alloca i32, align 4
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
  %25 = load i8*, i8** %20, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %22, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %15, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %17, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %19, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %20, align 8
  %36 = call i32 @assert(i8* %35)
  %37 = load i8*, i8** %19, align 8
  %38 = call i32 @safe_atou32(i8* %37, i32* %23)
  store i32 %38, i32* %24, align 4
  %39 = load i32, i32* %24, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %10
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %24, align 4
  %47 = load i8*, i8** %19, align 8
  %48 = call i32 (i8*, i32, i8*, i32, i32, i8*, i8*, ...) @log_syntax(i8* %42, i32 %43, i8* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %47)
  store i32 0, i32* %11, align 4
  br label %106

49:                                               ; preds = %10
  %50 = load i32, i32* %23, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* @LOG_ERR, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  %59 = load i8*, i8** %17, align 8
  %60 = load i8*, i8** %19, align 8
  %61 = call i32 (i8*, i32, i8*, i32, i32, i8*, i8*, ...) @log_syntax(i8* %53, i32 %54, i8* %55, i32 %56, i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* %60)
  store i32 0, i32* %11, align 4
  br label %106

62:                                               ; preds = %49
  %63 = load i8*, i8** %17, align 8
  %64 = call i64 @streq(i8* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* %23, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  br label %105

72:                                               ; preds = %62
  %73 = load i8*, i8** %17, align 8
  %74 = call i64 @streq(i8* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* %23, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  br label %104

82:                                               ; preds = %72
  %83 = load i8*, i8** %17, align 8
  %84 = call i64 @streq(i8* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32, i32* %23, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 5
  store i32 1, i32* %91, align 4
  br label %103

92:                                               ; preds = %82
  %93 = load i8*, i8** %17, align 8
  %94 = call i64 @streq(i8* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* %23, align 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 7
  store i32 1, i32* %101, align 4
  br label %102

102:                                              ; preds = %96, %92
  br label %103

103:                                              ; preds = %102, %86
  br label %104

104:                                              ; preds = %103, %76
  br label %105

105:                                              ; preds = %104, %66
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %105, %52, %41
  %107 = load i32, i32* %11, align 4
  ret i32 %107
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @safe_atou32(i8*, i32*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, ...) #1

declare dso_local i64 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
