; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_read.c_processBulkItem.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_read.c_processBulkItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8*, i32, i32, i8*, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i8* (%struct.TYPE_12__*, i8*, i64)*, i8* (%struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { i64 }

@REDIS_ERR = common dso_local global i64 0, align 8
@REDIS_ERR_PROTOCOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Bad bulk string length\00", align 1
@LLONG_MAX = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Bulk string length out of range\00", align 1
@REDIS_REPLY_NIL = common dso_local global i64 0, align 8
@REDIS_REPLY_VERB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [76 x i8] c"Verbatim string 4 bytes of content type are missing or incorrectly encoded.\00", align 1
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @processBulkItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processBulkItem(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i64 %16
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  %34 = call i8* @seekNewline(i8* %26, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %220

37:                                               ; preds = %1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = ptrtoint i8* %46 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = add nsw i64 %57, 2
  store i64 %58, i64* %9, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub i64 %60, 2
  %62 = call i64 @string2ll(i8* %59, i64 %61, i64* %8)
  %63 = load i64, i64* @REDIS_ERR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %37
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = load i32, i32* @REDIS_ERR_PROTOCOL, align 4
  %68 = call i32 @__redisReaderSetError(%struct.TYPE_11__* %66, i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %69 = load i64, i64* @REDIS_ERR, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %2, align 4
  br label %223

71:                                               ; preds = %37
  %72 = load i64, i64* %8, align 8
  %73 = icmp slt i64 %72, -1
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* @LLONG_MAX, align 8
  %76 = load i64, i64* @SIZE_MAX, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @SIZE_MAX, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78, %71
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = load i32, i32* @REDIS_ERR_PROTOCOL, align 4
  %85 = call i32 @__redisReaderSetError(%struct.TYPE_11__* %83, i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i64, i64* @REDIS_ERR, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %2, align 4
  br label %223

88:                                               ; preds = %78, %74
  %89 = load i64, i64* %8, align 8
  %90 = icmp eq i64 %89, -1
  br i1 %90, label %91, label %115

91:                                               ; preds = %88
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = icmp ne %struct.TYPE_10__* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i8* (%struct.TYPE_12__*)*, i8* (%struct.TYPE_12__*)** %100, align 8
  %102 = icmp ne i8* (%struct.TYPE_12__*)* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i8* (%struct.TYPE_12__*)*, i8* (%struct.TYPE_12__*)** %107, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = call i8* %108(%struct.TYPE_12__* %109)
  store i8* %110, i8** %5, align 8
  br label %114

111:                                              ; preds = %96, %91
  %112 = load i64, i64* @REDIS_REPLY_NIL, align 8
  %113 = inttoptr i64 %112 to i8*
  store i8* %113, i8** %5, align 8
  br label %114

114:                                              ; preds = %111, %103
  store i32 1, i32* %10, align 4
  br label %188

115:                                              ; preds = %88
  %116 = load i64, i64* %8, align 8
  %117 = add nsw i64 %116, 2
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %9, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %9, align 8
  %125 = add i64 %123, %124
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp ule i64 %125, %129
  br i1 %130, label %131, label %187

131:                                              ; preds = %115
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @REDIS_REPLY_VERB, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i64, i64* %8, align 8
  %139 = icmp slt i64 %138, 4
  br i1 %139, label %152, label %140

140:                                              ; preds = %137, %131
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @REDIS_REPLY_VERB, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %140
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 5
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 58
  br i1 %151, label %152, label %158

152:                                              ; preds = %146, %137
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %154 = load i32, i32* @REDIS_ERR_PROTOCOL, align 4
  %155 = call i32 @__redisReaderSetError(%struct.TYPE_11__* %153, i32 %154, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  %156 = load i64, i64* @REDIS_ERR, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %2, align 4
  br label %223

158:                                              ; preds = %146, %140
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = icmp ne %struct.TYPE_10__* %161, null
  br i1 %162, label %163, label %181

163:                                              ; preds = %158
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 5
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i8* (%struct.TYPE_12__*, i8*, i64)*, i8* (%struct.TYPE_12__*, i8*, i64)** %167, align 8
  %169 = icmp ne i8* (%struct.TYPE_12__*, i8*, i64)* %168, null
  br i1 %169, label %170, label %181

170:                                              ; preds = %163
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 5
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i8* (%struct.TYPE_12__*, i8*, i64)*, i8* (%struct.TYPE_12__*, i8*, i64)** %174, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 2
  %179 = load i64, i64* %8, align 8
  %180 = call i8* %175(%struct.TYPE_12__* %176, i8* %178, i64 %179)
  store i8* %180, i8** %5, align 8
  br label %186

181:                                              ; preds = %163, %158
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = inttoptr i64 %184 to i8*
  store i8* %185, i8** %5, align 8
  br label %186

186:                                              ; preds = %181, %170
  store i32 1, i32* %10, align 4
  br label %187

187:                                              ; preds = %186, %115
  br label %188

188:                                              ; preds = %187, %114
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %219

191:                                              ; preds = %188
  %192 = load i8*, i8** %5, align 8
  %193 = icmp eq i8* %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %196 = call i32 @__redisReaderSetErrorOOM(%struct.TYPE_11__* %195)
  %197 = load i64, i64* @REDIS_ERR, align 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %2, align 4
  br label %223

199:                                              ; preds = %191
  %200 = load i64, i64* %9, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = add i64 %204, %200
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %202, align 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %199
  %212 = load i8*, i8** %5, align 8
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 4
  store i8* %212, i8** %214, align 8
  br label %215

215:                                              ; preds = %211, %199
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %217 = call i32 @moveToNextTask(%struct.TYPE_11__* %216)
  %218 = load i32, i32* @REDIS_OK, align 4
  store i32 %218, i32* %2, align 4
  br label %223

219:                                              ; preds = %188
  br label %220

220:                                              ; preds = %219, %1
  %221 = load i64, i64* @REDIS_ERR, align 8
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %220, %215, %194, %152, %82, %65
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i8* @seekNewline(i8*, i32) #1

declare dso_local i64 @string2ll(i8*, i64, i64*) #1

declare dso_local i32 @__redisReaderSetError(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @__redisReaderSetErrorOOM(%struct.TYPE_11__*) #1

declare dso_local i32 @moveToNextTask(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
