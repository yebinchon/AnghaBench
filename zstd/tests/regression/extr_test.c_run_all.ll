; ModuleID = '/home/carl/AnghaBench/zstd/tests/regression/extr_test.c_run_all.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/regression/extr_test.c_run_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 (i32*)*, i32 (i32*, %struct.TYPE_9__*)*, i32* (%struct.TYPE_10__*)* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Total compressed size\0A\00", align 1
@methods = common dso_local global %struct.TYPE_12__** null, align 8
@g_method = common dso_local global i32* null, align 8
@data = common dso_local global %struct.TYPE_10__** null, align 8
@g_data = common dso_local global i32* null, align 8
@configs = common dso_local global %struct.TYPE_9__** null, align 8
@g_config = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @run_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_all(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @tprint_names(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 (i32*, i8*, ...) @tprintf(i32* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %171, %1
  %14 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @methods, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %14, i64 %15
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %19, label %174

19:                                               ; preds = %13
  %20 = load i32*, i32** @g_method, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @methods, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %23, i64 %24
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32*, i32** @g_method, align 8
  %30 = call i64 @strcmp(i8* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %171

33:                                               ; preds = %22, %19
  store i64 0, i64* %4, align 8
  br label %34

34:                                               ; preds = %167, %33
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @data, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %35, i64 %36
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %40, label %170

40:                                               ; preds = %34
  %41 = load i32*, i32** @g_data, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @data, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %44, i64 %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32*, i32** @g_data, align 8
  %51 = call i64 @strcmp(i8* %49, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %167

54:                                               ; preds = %43, %40
  %55 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @methods, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %55, i64 %56
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  %60 = load i32* (%struct.TYPE_10__*)*, i32* (%struct.TYPE_10__*)** %59, align 8
  %61 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @data, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %61, i64 %62
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = call i32* %60(%struct.TYPE_10__* %64)
  store i32* %65, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %66

66:                                               ; preds = %155, %54
  %67 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @configs, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %67, i64 %68
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = icmp ne %struct.TYPE_9__* %70, null
  br i1 %71, label %72, label %158

72:                                               ; preds = %66
  %73 = load i32*, i32** @g_config, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @configs, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %76, i64 %77
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32*, i32** @g_config, align 8
  %83 = call i64 @strcmp(i8* %81, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %155

86:                                               ; preds = %75, %72
  %87 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @configs, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %87, i64 %88
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @data, align 8
  %92 = load i64, i64* %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %91, i64 %92
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = call i64 @config_skip_data(%struct.TYPE_9__* %90, %struct.TYPE_10__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %155

98:                                               ; preds = %86
  %99 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @methods, align 8
  %100 = load i64, i64* %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %99, i64 %100
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load i32 (i32*, %struct.TYPE_9__*)*, i32 (i32*, %struct.TYPE_9__*)** %103, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @configs, align 8
  %107 = load i64, i64* %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %106, i64 %107
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = call i32 %104(i32* %105, %struct.TYPE_9__* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i64 @result_is_skip(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %98
  br label %155

115:                                              ; preds = %98
  %116 = load i32*, i32** %2, align 8
  %117 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @data, align 8
  %118 = load i64, i64* %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %117, i64 %118
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @configs, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %123, i64 %124
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @methods, align 8
  %130 = load i64, i64* %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %129, i64 %130
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @tprint_names(i32* %116, i8* %122, i8* %128, i8* %134)
  %136 = load i32, i32* %7, align 4
  %137 = call i64 @result_is_error(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %115
  %140 = load i32*, i32** %2, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i64 @result_get_error_string(i32 %141)
  %143 = call i32 (i32*, i8*, ...) @tprintf(i32* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %142)
  br label %152

144:                                              ; preds = %115
  %145 = load i32*, i32** %2, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i64 @result_get_data(i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i64 %147, i64* %148, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (i32*, i8*, ...) @tprintf(i32* %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %150)
  br label %152

152:                                              ; preds = %144, %139
  %153 = load i32*, i32** %2, align 8
  %154 = call i32 @tflush(i32* %153)
  br label %155

155:                                              ; preds = %152, %114, %97, %85
  %156 = load i64, i64* %6, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %6, align 8
  br label %66

158:                                              ; preds = %66
  %159 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @methods, align 8
  %160 = load i64, i64* %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %159, i64 %160
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32 (i32*)*, i32 (i32*)** %163, align 8
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 %164(i32* %165)
  br label %167

167:                                              ; preds = %158, %53
  %168 = load i64, i64* %4, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %4, align 8
  br label %34

170:                                              ; preds = %34
  br label %171

171:                                              ; preds = %170, %32
  %172 = load i64, i64* %3, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %3, align 8
  br label %13

174:                                              ; preds = %13
  ret i32 0
}

declare dso_local i32 @tprint_names(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @tprintf(i32*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i64 @config_skip_data(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i64 @result_is_skip(i32) #1

declare dso_local i64 @result_is_error(i32) #1

declare dso_local i64 @result_get_error_string(i32) #1

declare dso_local i64 @result_get_data(i32) #1

declare dso_local i32 @tflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
