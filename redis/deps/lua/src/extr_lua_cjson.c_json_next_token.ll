; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_next_token.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_next_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, i64* }
%struct.TYPE_15__ = type { i64, i8** }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_14__, i64* }
%struct.TYPE_14__ = type { i32 }

@T_WHITESPACE = common dso_local global i8* null, align 8
@T_ERROR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"invalid token\00", align 1
@T_END = common dso_local global i8* null, align 8
@T_UNKNOWN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@T_BOOLEAN = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@T_NULL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*)* @json_next_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_next_token(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %11 = load i8**, i8*** %10, align 8
  store i8** %11, i8*** %5, align 8
  br label %12

12:                                               ; preds = %2, %32
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i8
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** @T_WHITESPACE, align 8
  %30 = icmp ne i8* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %12
  br label %37

32:                                               ; preds = %12
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %34, align 8
  br label %12

37:                                               ; preds = %31
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds i64, i64* %40, i64 %45
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  store i64* %46, i64** %48, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** @T_ERROR, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %37
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = call i32 @json_set_token_error(%struct.TYPE_16__* %55, %struct.TYPE_17__* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %183

58:                                               ; preds = %37
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** @T_END, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %183

65:                                               ; preds = %58
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** @T_UNKNOWN, align 8
  %70 = icmp ne i8* %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i32 1
  store i64* %75, i64** %73, align 8
  br label %183

76:                                               ; preds = %65
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 34
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = call i32 @json_next_string_token(%struct.TYPE_17__* %80, %struct.TYPE_16__* %81)
  br label %183

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 45
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = icmp sle i32 48, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = icmp sle i32 %90, 57
  br i1 %91, label %92, label %111

92:                                               ; preds = %89, %83
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %92
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = call i64 @json_is_invalid_number(%struct.TYPE_17__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = call i32 @json_set_token_error(%struct.TYPE_16__* %104, %struct.TYPE_17__* %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %183

107:                                              ; preds = %99, %92
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %110 = call i32 @json_next_number_token(%struct.TYPE_17__* %108, %struct.TYPE_16__* %109)
  br label %183

111:                                              ; preds = %89, %86
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = call i32 @strncmp(i64* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %111
  %118 = load i8*, i8** @T_BOOLEAN, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 4
  store i64* %127, i64** %125, align 8
  br label %183

128:                                              ; preds = %111
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 2
  %131 = load i64*, i64** %130, align 8
  %132 = call i32 @strncmp(i64* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %128
  %135 = load i8*, i8** @T_BOOLEAN, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  store i32 0, i32* %140, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 5
  store i64* %144, i64** %142, align 8
  br label %183

145:                                              ; preds = %128
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  %148 = load i64*, i64** %147, align 8
  %149 = call i32 @strncmp(i64* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %145
  %152 = load i8*, i8** @T_NULL, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 4
  store i64* %158, i64** %156, align 8
  br label %183

159:                                              ; preds = %145
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %159
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %168 = call i64 @json_is_invalid_number(%struct.TYPE_17__* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %173 = call i32 @json_next_number_token(%struct.TYPE_17__* %171, %struct.TYPE_16__* %172)
  br label %183

174:                                              ; preds = %166, %159
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %182 = call i32 @json_set_token_error(%struct.TYPE_16__* %180, %struct.TYPE_17__* %181, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %183

183:                                              ; preds = %179, %170, %151, %134, %117, %107, %103, %79, %71, %64, %54
  ret void
}

declare dso_local i32 @json_set_token_error(%struct.TYPE_16__*, %struct.TYPE_17__*, i8*) #1

declare dso_local i32 @json_next_string_token(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i64 @json_is_invalid_number(%struct.TYPE_17__*) #1

declare dso_local i32 @json_next_number_token(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @strncmp(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
