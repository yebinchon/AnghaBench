; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTPREQ_ReadFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTPREQ_ReadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_17__, i32, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"(%p %p %u %x)\0A\00", align 1
@IRF_ASYNC = common dso_local global i32 0, align 4
@IRF_NO_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"these dwFlags aren't implemented: 0x%x\0A\00", align 1
@INTERNET_FLAG_ASYNC = common dso_local global i32 0, align 4
@INTERNET_HANDLE_IN_USE = common dso_local global i64 0, align 8
@ERROR_INTERNET_INTERNAL_ERROR = common dso_local global i64 0, align 8
@INTERNET_STATUS_RECEIVING_RESPONSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@INTERNET_STATUS_RESPONSE_RECEIVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32, i32*, i32, i32)* @HTTPREQ_ReadFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTTPREQ_ReadFile(%struct.TYPE_15__* %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %22 = bitcast %struct.TYPE_15__* %21 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %14, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %20, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %28, i8* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @IRF_ASYNC, align 4
  %35 = load i32, i32* @IRF_NO_WAIT, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %33, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %6
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @IRF_ASYNC, align 4
  %43 = load i32, i32* @IRF_NO_WAIT, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = and i32 %41, %45
  %47 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %40, %6
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @INTERNET_FLAG_ASYNC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %48
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 4
  %67 = call i64 @TryEnterCriticalSection(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %207

69:                                               ; preds = %64, %48
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 4
  %75 = call i32 @EnterCriticalSection(i32* %74)
  br label %76

76:                                               ; preds = %72, %69
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ERROR_SUCCESS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i64, i64* @INTERNET_HANDLE_IN_USE, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %97

86:                                               ; preds = %76
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @INTERNET_HANDLE_IN_USE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i64, i64* @ERROR_INTERNET_INTERNAL_ERROR, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %92, %86
  br label %97

97:                                               ; preds = %96, %82
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @min(i32 %103, i32 %106)
  store i32 %107, i32* %16, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %111, %114
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @memcpy(i8* %108, i32 %115, i32 %116)
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %102, %97
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %188

132:                                              ; preds = %128
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @IRF_NO_WAIT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %188, label %140

140:                                              ; preds = %135, %132
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %142 = call i32 @end_of_read_data(%struct.TYPE_16__* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %188, label %144

144:                                              ; preds = %140
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 4
  %147 = call i32 @LeaveCriticalSection(i32* %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @INTERNET_STATUS_RECEIVING_RESPONSE, align 4
  %155 = call i32 @INTERNET_SendCallback(%struct.TYPE_17__* %149, i32 %153, i32 %154, i32* null, i32 0)
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 4
  %158 = call i32 @EnterCriticalSection(i32* %157)
  %159 = load i32, i32* @TRUE, align 4
  store i32 %159, i32* %20, align 4
  br label %160

160:                                              ; preds = %186, %144
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %187

164:                                              ; preds = %160
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = load i32, i32* %16, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %16, align 4
  %172 = sub nsw i32 %170, %171
  %173 = load i32, i32* %19, align 4
  %174 = call i32 @HTTPREQ_Read(%struct.TYPE_16__* %165, i8* %169, i32 %172, i32* %17, i32 %173)
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* @ERROR_SUCCESS, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %185, label %182

182:                                              ; preds = %164
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %182, %164
  br label %187

186:                                              ; preds = %182
  br label %160

187:                                              ; preds = %185, %160
  br label %188

188:                                              ; preds = %187, %140, %135, %128
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @INTERNET_HANDLE_IN_USE, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i64, i64* @ERROR_SUCCESS, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  br label %203

198:                                              ; preds = %188
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %18, align 4
  br label %203

203:                                              ; preds = %198, %194
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 4
  %206 = call i32 @LeaveCriticalSection(i32* %205)
  br label %209

207:                                              ; preds = %64
  %208 = load i32, i32* @WSAEWOULDBLOCK, align 4
  store i32 %208, i32* %15, align 4
  br label %209

209:                                              ; preds = %207, %203
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %234

213:                                              ; preds = %209
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @IRF_NO_WAIT, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %213
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %220 = load i8*, i8** %9, align 8
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %16, align 4
  %223 = load i32*, i32** %11, align 8
  %224 = call i32 @async_read(%struct.TYPE_16__* %219, i8* %220, i32 %221, i32 %222, i32* %223)
  store i32 %224, i32* %7, align 4
  br label %257

225:                                              ; preds = %213
  %226 = load i32, i32* %16, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %230 = call i32 @async_read(%struct.TYPE_16__* %229, i8* null, i32 0, i32 0, i32* null)
  store i32 %230, i32* %7, align 4
  br label %257

231:                                              ; preds = %225
  %232 = load i64, i64* @ERROR_SUCCESS, align 8
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %15, align 4
  br label %234

234:                                              ; preds = %231, %209
  %235 = load i32, i32* %16, align 4
  %236 = load i32*, i32** %11, align 8
  store i32 %235, i32* %236, align 4
  %237 = load i32, i32* %15, align 4
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* @ERROR_SUCCESS, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %234
  %242 = load i32, i32* %15, align 4
  store i32 %242, i32* %7, align 4
  br label %257

243:                                              ; preds = %234
  %244 = load i32, i32* %20, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %243
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @INTERNET_STATUS_RESPONSE_RECEIVED, align 4
  %254 = call i32 @INTERNET_SendCallback(%struct.TYPE_17__* %248, i32 %252, i32 %253, i32* %16, i32 4)
  br label %255

255:                                              ; preds = %246, %243
  %256 = load i32, i32* %18, align 4
  store i32 %256, i32* %7, align 4
  br label %257

257:                                              ; preds = %255, %241, %228, %218
  %258 = load i32, i32* %7, align 4
  ret i32 %258
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_16__*, i8*, i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @TryEnterCriticalSection(i32*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @end_of_read_data(%struct.TYPE_16__*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @INTERNET_SendCallback(%struct.TYPE_17__*, i32, i32, i32*, i32) #1

declare dso_local i32 @HTTPREQ_Read(%struct.TYPE_16__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @async_read(%struct.TYPE_16__*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
