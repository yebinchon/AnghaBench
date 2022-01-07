; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerNodeGetJSON.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerNodeGetJSON.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8**, i64, i8**, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [164 x i8] c"  {\0A    \22name\22: \22%s\22,\0A    \22host\22: \22%s\22,\0A    \22port\22: %d,\0A    \22replicate\22: %s,\0A    \22slots\22: [%s],\0A    \22slots_count\22: %d,\0A    \22flags\22: \22%s\22,\0A    \22current_epoch\22: %llu\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c",\0A    \22cluster_errors\22: %lu\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\22%S\22: \22%S\22\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c",\0A    \22migrating\22: {%S}\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c",\0A    \22importing\22: {%S}\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0A  }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i64)* @clusterManagerNodeGetJSON to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @clusterManagerNodeGetJSON(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %18 = call i8* (...) @sdsempty()
  store i8* %18, i8** %5, align 8
  %19 = call i8* (...) @sdsempty()
  store i8* %19, i8** %6, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i8* (i8*, i8*, i64, ...) @sdscatprintf(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %28)
  store i8* %29, i8** %6, align 8
  br label %33

30:                                               ; preds = %2
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @sdscat(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = call i8* @clusterManagerNodeSlotsString(%struct.TYPE_5__* %34)
  store i8* %35, i8** %7, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = call i8* @clusterManagerNodeFlagString(%struct.TYPE_5__* %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %7, align 8
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %43, %33
  %40 = load i8*, i8** %9, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 45)
  store i8* %41, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  store i8 44, i8* %44, align 1
  br label %39

46:                                               ; preds = %39
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = call i8* (i8*, i8*, i64, ...) @sdscatprintf(i8* %47, i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.2, i64 0, i64 0), i64 %51, i32 %54, i32 %57, i8* %58, i8* %59, i32 %62, i8* %63, i64 %66)
  store i8* %67, i8** %5, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp ugt i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %46
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i8* (i8*, i8*, i64, ...) @sdscatprintf(i8* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %72)
  store i8* %73, i8** %5, align 8
  br label %74

74:                                               ; preds = %70, %46
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %141

79:                                               ; preds = %74
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i8**, i8*** %81, align 8
  %83 = icmp ne i8** %82, null
  br i1 %83, label %84, label %141

84:                                               ; preds = %79
  store i32 0, i32* %10, align 4
  %85 = call i8* (...) @sdsempty()
  store i8* %85, i8** %11, align 8
  br label %86

86:                                               ; preds = %127, %84
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %130

93:                                               ; preds = %86
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %12, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %103, i64 %106
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %13, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %126

111:                                              ; preds = %93
  %112 = load i8*, i8** %13, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = load i8*, i8** %11, align 8
  %116 = call i64 @sdslen(i8* %115)
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i8*, i8** %11, align 8
  %120 = call i8* @sdscat(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %120, i8** %11, align 8
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i8*, i8** %11, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = call i8* (i8*, i8*, i8*, ...) @sdscatfmt(i8* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %123, i8* %124)
  store i8* %125, i8** %11, align 8
  br label %126

126:                                              ; preds = %121, %111, %93
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 2
  store i32 %129, i32* %10, align 4
  br label %86

130:                                              ; preds = %86
  %131 = load i8*, i8** %11, align 8
  %132 = call i64 @sdslen(i8* %131)
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i8*, i8** %5, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = call i8* (i8*, i8*, i8*, ...) @sdscatfmt(i8* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %136)
  store i8* %137, i8** %5, align 8
  br label %138

138:                                              ; preds = %134, %130
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @sdsfree(i8* %139)
  br label %141

141:                                              ; preds = %138, %79, %74
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %208

146:                                              ; preds = %141
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 4
  %149 = load i8**, i8*** %148, align 8
  %150 = icmp ne i8** %149, null
  br i1 %150, label %151, label %208

151:                                              ; preds = %146
  store i32 0, i32* %14, align 4
  %152 = call i8* (...) @sdsempty()
  store i8* %152, i8** %15, align 8
  br label %153

153:                                              ; preds = %194, %151
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp slt i64 %155, %158
  br i1 %159, label %160, label %197

160:                                              ; preds = %153
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 4
  %163 = load i8**, i8*** %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %16, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 4
  %170 = load i8**, i8*** %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %170, i64 %173
  %175 = load i8*, i8** %174, align 8
  store i8* %175, i8** %17, align 8
  %176 = load i8*, i8** %16, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %193

178:                                              ; preds = %160
  %179 = load i8*, i8** %17, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %193

181:                                              ; preds = %178
  %182 = load i8*, i8** %15, align 8
  %183 = call i64 @sdslen(i8* %182)
  %184 = icmp sgt i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i8*, i8** %15, align 8
  %187 = call i8* @sdscat(i8* %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %187, i8** %15, align 8
  br label %188

188:                                              ; preds = %185, %181
  %189 = load i8*, i8** %15, align 8
  %190 = load i8*, i8** %16, align 8
  %191 = load i8*, i8** %17, align 8
  %192 = call i8* (i8*, i8*, i8*, ...) @sdscatfmt(i8* %189, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %190, i8* %191)
  store i8* %192, i8** %15, align 8
  br label %193

193:                                              ; preds = %188, %178, %160
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %195, 2
  store i32 %196, i32* %14, align 4
  br label %153

197:                                              ; preds = %153
  %198 = load i8*, i8** %15, align 8
  %199 = call i64 @sdslen(i8* %198)
  %200 = icmp sgt i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i8*, i8** %5, align 8
  %203 = load i8*, i8** %15, align 8
  %204 = call i8* (i8*, i8*, i8*, ...) @sdscatfmt(i8* %202, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %203)
  store i8* %204, i8** %5, align 8
  br label %205

205:                                              ; preds = %201, %197
  %206 = load i8*, i8** %15, align 8
  %207 = call i32 @sdsfree(i8* %206)
  br label %208

208:                                              ; preds = %205, %146, %141
  %209 = load i8*, i8** %5, align 8
  %210 = call i8* @sdscat(i8* %209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i8* %210, i8** %5, align 8
  %211 = load i8*, i8** %6, align 8
  %212 = call i32 @sdsfree(i8* %211)
  %213 = load i8*, i8** %7, align 8
  %214 = call i32 @sdsfree(i8* %213)
  %215 = load i8*, i8** %8, align 8
  %216 = call i32 @sdsfree(i8* %215)
  %217 = load i8*, i8** %5, align 8
  ret i8* %217
}

declare dso_local i8* @sdsempty(...) #1

declare dso_local i8* @sdscatprintf(i8*, i8*, i64, ...) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i8* @clusterManagerNodeSlotsString(%struct.TYPE_5__*) #1

declare dso_local i8* @clusterManagerNodeFlagString(%struct.TYPE_5__*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i8* @sdscatfmt(i8*, i8*, i8*, ...) #1

declare dso_local i32 @sdsfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
