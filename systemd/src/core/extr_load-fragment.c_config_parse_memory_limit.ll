; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_memory_limit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_memory_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i8*, i8* }

@CGROUP_LIMIT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Invalid memory limit '%s', ignoring: %m\00", align 1
@UINT64_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"MemorySwapMax\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"MemoryLow\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"MemoryMin\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"DefaultMemoryLow\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"DefaultMemoryMin\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Memory limit '%s' out of range, ignoring.\00", align 1
@CGROUP_LIMIT_MIN = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"MemoryHigh\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"MemoryMax\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"MemoryLimit\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_memory_limit(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %23 = alloca i64, align 8
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
  %27 = load i64, i64* @CGROUP_LIMIT_MAX, align 8
  store i64 %27, i64* %23, align 8
  %28 = load i8*, i8** %19, align 8
  %29 = call i64 @isempty(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %76, label %31

31:                                               ; preds = %10
  %32 = load i8*, i8** %19, align 8
  %33 = call i64 @streq(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %76, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %19, align 8
  %37 = call i32 @parse_permille(i8* %36)
  store i32 %37, i32* %24, align 4
  %38 = load i32, i32* %24, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i8*, i8** %19, align 8
  %42 = call i32 @parse_size(i8* %41, i32 1024, i64* %23)
  store i32 %42, i32* %24, align 4
  %43 = load i32, i32* %24, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* @LOG_ERR, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %24, align 4
  %51 = load i8*, i8** %19, align 8
  %52 = call i32 @log_syntax(i8* %46, i32 %47, i8* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  store i32 0, i32* %11, align 4
  br label %179

53:                                               ; preds = %40
  br label %57

54:                                               ; preds = %35
  %55 = load i32, i32* %24, align 4
  %56 = call i64 @physical_memory_scale(i32 %55, i32 1000)
  store i64 %56, i64* %23, align 8
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i64, i64* %23, align 8
  %59 = load i64, i64* @UINT64_MAX, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %23, align 8
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i8*, i8** %17, align 8
  %66 = call i32 @STR_IN_SET(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64, %57
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* @LOG_ERR, align 4
  %71 = load i8*, i8** %13, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i8*, i8** %19, align 8
  %74 = call i32 @log_syntax(i8* %69, i32 %70, i8* %71, i32 %72, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %73)
  store i32 0, i32* %11, align 4
  br label %179

75:                                               ; preds = %64, %61
  br label %76

76:                                               ; preds = %75, %31, %10
  %77 = load i8*, i8** %17, align 8
  %78 = call i64 @streq(i8* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = call i64 @isempty(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i8*, i8** @CGROUP_LIMIT_MIN, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 11
  store i8* %87, i8** %89, align 8
  br label %95

90:                                               ; preds = %80
  %91 = load i64, i64* %23, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 11
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %90, %86
  br label %178

96:                                               ; preds = %76
  %97 = load i8*, i8** %17, align 8
  %98 = call i64 @streq(i8* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %96
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = load i8*, i8** %19, align 8
  %104 = call i64 @isempty(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i8*, i8** @CGROUP_LIMIT_MIN, align 8
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 10
  store i8* %107, i8** %109, align 8
  br label %115

110:                                              ; preds = %100
  %111 = load i64, i64* %23, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 10
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %110, %106
  br label %177

116:                                              ; preds = %96
  %117 = load i8*, i8** %17, align 8
  %118 = call i64 @streq(i8* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i64, i64* %23, align 8
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 9
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  store i32 1, i32* %125, align 8
  br label %176

126:                                              ; preds = %116
  %127 = load i8*, i8** %17, align 8
  %128 = call i64 @streq(i8* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i64, i64* %23, align 8
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 8
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 3
  store i32 1, i32* %135, align 4
  br label %175

136:                                              ; preds = %126
  %137 = load i8*, i8** %17, align 8
  %138 = call i64 @streq(i8* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i64, i64* %23, align 8
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 7
  store i64 %141, i64* %143, align 8
  br label %174

144:                                              ; preds = %136
  %145 = load i8*, i8** %17, align 8
  %146 = call i64 @streq(i8* %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i64, i64* %23, align 8
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 6
  store i64 %149, i64* %151, align 8
  br label %173

152:                                              ; preds = %144
  %153 = load i8*, i8** %17, align 8
  %154 = call i64 @streq(i8* %153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i64, i64* %23, align 8
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 5
  store i64 %157, i64* %159, align 8
  br label %172

160:                                              ; preds = %152
  %161 = load i8*, i8** %17, align 8
  %162 = call i64 @streq(i8* %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i64, i64* %23, align 8
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 4
  store i64 %165, i64* %167, align 8
  br label %171

168:                                              ; preds = %160
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %11, align 4
  br label %179

171:                                              ; preds = %164
  br label %172

172:                                              ; preds = %171, %156
  br label %173

173:                                              ; preds = %172, %148
  br label %174

174:                                              ; preds = %173, %140
  br label %175

175:                                              ; preds = %174, %130
  br label %176

176:                                              ; preds = %175, %120
  br label %177

177:                                              ; preds = %176, %115
  br label %178

178:                                              ; preds = %177, %95
  store i32 0, i32* %11, align 4
  br label %179

179:                                              ; preds = %178, %168, %68, %45
  %180 = load i32, i32* %11, align 4
  ret i32 %180
}

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @parse_permille(i8*) #1

declare dso_local i32 @parse_size(i8*, i32, i64*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i64 @physical_memory_scale(i32, i32) #1

declare dso_local i32 @STR_IN_SET(i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
