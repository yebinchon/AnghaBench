; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_proxy_protocol.c_ngx_proxy_protocol_read.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_proxy_protocol.c_ngx_proxy_protocol_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32* }

@ngx_proxy_protocol_read.signature = internal constant [13 x i8] c"\0D\0A\0D\0A\00\0D\0AQUIT\0A\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"PROXY \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"PROXY protocol unknown protocol\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"PROXY protocol address: %V %d\00", align 1
@CR = common dso_local global i8 0, align 1
@LF = common dso_local global i8 0, align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"broken header: \22%*s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_proxy_protocol_read(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp uge i64 %20, 4
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load i8*, i8** %10, align 8
  %24 = call i64 @memcmp(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @ngx_proxy_protocol_read.signature, i64 0, i64 0), i32 12)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @ngx_proxy_protocol_v2_read(%struct.TYPE_5__* %27, i8* %28, i8* %29)
  store i8* %30, i8** %4, align 8
  br label %269

31:                                               ; preds = %22, %3
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %32, 8
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @ngx_strncmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %31
  br label %257

39:                                               ; preds = %34
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 6
  store i8* %41, i8** %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 %42, 6
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp uge i64 %44, 7
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @ngx_strncmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ngx_log_debug0(i32 %51, i32 %54, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 7
  store i8* %57, i8** %10, align 8
  br label %227

58:                                               ; preds = %46, %39
  %59 = load i64, i64* %8, align 8
  %60 = icmp ult i64 %59, 5
  br i1 %60, label %83, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %10, align 8
  %63 = call i64 @ngx_strncmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 52
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 54
  br i1 %76, label %83, label %77

77:                                               ; preds = %71, %65
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 32
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %71, %61, %58
  br label %257

84:                                               ; preds = %77
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 5
  store i8* %86, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  store i8* %87, i8** %11, align 8
  br label %88

88:                                               ; preds = %134, %84
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %257

93:                                               ; preds = %88
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %10, align 8
  %96 = load i8, i8* %94, align 1
  store i8 %96, i8* %9, align 1
  %97 = load i8, i8* %9, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 32
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %135

101:                                              ; preds = %93
  %102 = load i8, i8* %9, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 58
  br i1 %104, label %105, label %134

105:                                              ; preds = %101
  %106 = load i8, i8* %9, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 46
  br i1 %108, label %109, label %134

109:                                              ; preds = %105
  %110 = load i8, i8* %9, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp slt i32 %111, 97
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i8, i8* %9, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp sgt i32 %115, 102
  br i1 %116, label %117, label %134

117:                                              ; preds = %113, %109
  %118 = load i8, i8* %9, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp slt i32 %119, 65
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i8, i8* %9, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp sgt i32 %123, 70
  br i1 %124, label %125, label %134

125:                                              ; preds = %121, %117
  %126 = load i8, i8* %9, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp slt i32 %127, 48
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load i8, i8* %9, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp sgt i32 %131, 57
  br i1 %132, label %133, label %134

133:                                              ; preds = %129, %125
  br label %257

134:                                              ; preds = %129, %121, %113, %105, %101
  br label %88

135:                                              ; preds = %100
  %136 = load i8*, i8** %10, align 8
  %137 = load i8*, i8** %11, align 8
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sub nsw i64 %140, 1
  store i64 %141, i64* %8, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i64, i64* %8, align 8
  %146 = call i32* @ngx_pnalloc(i32 %144, i64 %145)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  store i32* %146, i32** %149, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %135
  store i8* null, i8** %4, align 8
  br label %269

156:                                              ; preds = %135
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i8*, i8** %11, align 8
  %162 = load i64, i64* %8, align 8
  %163 = call i32 @ngx_memcpy(i32* %160, i8* %161, i64 %162)
  %164 = load i64, i64* %8, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  store i64 %164, i64* %167, align 8
  br label %168

168:                                              ; preds = %180, %156
  %169 = load i8*, i8** %10, align 8
  %170 = load i8*, i8** %7, align 8
  %171 = icmp eq i8* %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %257

173:                                              ; preds = %168
  %174 = load i8*, i8** %10, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %10, align 8
  %176 = load i8, i8* %174, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 32
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %181

180:                                              ; preds = %173
  br label %168

181:                                              ; preds = %179
  %182 = load i8*, i8** %10, align 8
  store i8* %182, i8** %12, align 8
  br label %183

183:                                              ; preds = %195, %181
  %184 = load i8*, i8** %10, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = icmp eq i8* %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %257

188:                                              ; preds = %183
  %189 = load i8*, i8** %10, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %10, align 8
  %191 = load i8, i8* %189, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 32
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  br label %196

195:                                              ; preds = %188
  br label %183

196:                                              ; preds = %194
  %197 = load i8*, i8** %10, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = ptrtoint i8* %197 to i64
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %199, %200
  %202 = sub nsw i64 %201, 1
  store i64 %202, i64* %8, align 8
  %203 = load i8*, i8** %12, align 8
  %204 = load i64, i64* %8, align 8
  %205 = call i32 @ngx_atoi(i8* %203, i64 %204)
  store i32 %205, i32* %13, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %196
  %209 = load i32, i32* %13, align 4
  %210 = icmp sgt i32 %209, 65535
  br i1 %210, label %211, label %212

211:                                              ; preds = %208, %196
  br label %257

212:                                              ; preds = %208
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  %217 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @ngx_log_debug2(i32 %217, i32 %220, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_6__* %222, i64 %225)
  br label %227

227:                                              ; preds = %212, %50
  br label %228

228:                                              ; preds = %253, %227
  %229 = load i8*, i8** %10, align 8
  %230 = load i8*, i8** %7, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 -1
  %232 = icmp ult i8* %229, %231
  br i1 %232, label %233, label %256

233:                                              ; preds = %228
  %234 = load i8*, i8** %10, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 0
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = load i8, i8* @CR, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %237, %239
  br i1 %240, label %241, label %252

241:                                              ; preds = %233
  %242 = load i8*, i8** %10, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 1
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = load i8, i8* @LF, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %245, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = load i8*, i8** %10, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 2
  store i8* %251, i8** %4, align 8
  br label %269

252:                                              ; preds = %241, %233
  br label %253

253:                                              ; preds = %252
  %254 = load i8*, i8** %10, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %10, align 8
  br label %228

256:                                              ; preds = %228
  br label %257

257:                                              ; preds = %256, %211, %187, %172, %133, %92, %83, %38
  %258 = load i32, i32* @NGX_LOG_ERR, align 4
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i8*, i8** %7, align 8
  %263 = load i8*, i8** %6, align 8
  %264 = ptrtoint i8* %262 to i64
  %265 = ptrtoint i8* %263 to i64
  %266 = sub i64 %264, %265
  %267 = load i8*, i8** %6, align 8
  %268 = call i32 @ngx_log_error(i32 %258, i32 %261, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %266, i8* %267)
  store i8* null, i8** %4, align 8
  br label %269

269:                                              ; preds = %257, %249, %155, %26
  %270 = load i8*, i8** %4, align 8
  ret i8* %270
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @ngx_proxy_protocol_v2_read(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i8*, i64) #1

declare dso_local i32 @ngx_atoi(i8*, i64) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
