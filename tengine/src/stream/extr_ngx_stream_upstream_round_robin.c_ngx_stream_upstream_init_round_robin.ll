; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_round_robin.c_ngx_stream_upstream_init_round_robin.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_round_robin.c_ngx_stream_upstream_init_round_robin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_19__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i32, i64, i32, i64, %struct.TYPE_24__*, i32*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i64, i64, i32, i32, %struct.TYPE_24__*, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@ngx_stream_upstream_init_round_robin_peer = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"no servers in upstream \22%V\22 in %s:%ui\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"no port in upstream \22%V\22 in %s:%ui\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s in upstream \22%V\22 in %s:%ui\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_stream_upstream_init_round_robin(%struct.TYPE_15__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_24__**, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %16 = load i32, i32* @ngx_stream_upstream_init_round_robin_peer, align 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %24, label %537

24:                                               ; preds = %2
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %11, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %30

30:                                               ; preds = %67, %24
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %31, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %30
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %67

46:                                               ; preds = %38
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %9, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = mul i64 %58, %63
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %46, %45
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %7, align 8
  br label %30

70:                                               ; preds = %30
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load i32, i32* @NGX_LOG_EMERG, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 2
  %80 = ptrtoint i32* %79 to i32
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i32*
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i32, i32, i8*, i32, i32*, i32, ...) @ngx_log_error(i32 %74, i32 %77, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %80, i32* %85, i32 %88)
  %90 = load i64, i64* @NGX_ERROR, align 8
  store i64 %90, i64* %3, align 8
  br label %720

91:                                               ; preds = %70
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @ngx_pcalloc(i32 %94, i32 56)
  %96 = bitcast i8* %95 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %96, %struct.TYPE_23__** %14, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %98 = icmp eq %struct.TYPE_23__* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i64, i64* @NGX_ERROR, align 8
  store i64 %100, i64* %3, align 8
  br label %720

101:                                              ; preds = %91
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %9, align 8
  %106 = mul i64 72, %105
  %107 = trunc i64 %106 to i32
  %108 = call i8* @ngx_pcalloc(i32 %104, i32 %107)
  %109 = bitcast i8* %108 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %109, %struct.TYPE_24__** %12, align 8
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %111 = icmp eq %struct.TYPE_24__* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = load i64, i64* @NGX_ERROR, align 8
  store i64 %113, i64* %3, align 8
  br label %720

114:                                              ; preds = %101
  %115 = load i64, i64* %9, align 8
  %116 = icmp eq i64 %115, 1
  %117 = zext i1 %116 to i32
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %9, align 8
  %125 = icmp ne i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 3
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 5
  store i32* %133, i32** %135, align 8
  store i64 0, i64* %9, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 4
  store %struct.TYPE_24__** %137, %struct.TYPE_24__*** %13, align 8
  store i64 0, i64* %7, align 8
  br label %138

138:                                              ; preds = %284, %114
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ult i64 %139, %144
  br i1 %145, label %146, label %287

146:                                              ; preds = %138
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %148 = load i64, i64* %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %284

154:                                              ; preds = %146
  store i64 0, i64* %8, align 8
  br label %155

155:                                              ; preds = %280, %154
  %156 = load i64, i64* %8, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %158 = load i64, i64* %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ult i64 %156, %161
  br i1 %162, label %163, label %283

163:                                              ; preds = %155
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 7
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  %169 = load i64, i64* %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %174 = load i64, i64* %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 9
  store i32 %172, i32* %176, align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %178 = load i64, i64* %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 7
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = load i64, i64* %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 8
  store i32 %185, i32* %189, align 4
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %191 = load i64, i64* %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 7
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %193, align 8
  %195 = load i64, i64* %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %200 = load i64, i64* %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 7
  store i32 %198, i32* %202, align 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %204 = load i64, i64* %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %209 = load i64, i64* %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  store i64 %207, i64* %211, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %213 = load i64, i64* %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %218 = load i64, i64* %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 1
  store i64 %216, i64* %220, align 8
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %222 = load i64, i64* %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 6
  store i64 0, i64* %224, align 8
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %226 = load i64, i64* %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 6
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %231 = load i64, i64* %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 5
  store i64 %229, i64* %233, align 8
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %235 = load i64, i64* %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %240 = load i64, i64* %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 2
  store i32 %238, i32* %242, align 8
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %244 = load i64, i64* %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %249 = load i64, i64* %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 3
  store i32 %247, i32* %251, align 4
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %253 = load i64, i64* %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %258 = load i64, i64* %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 11
  store i32 %256, i32* %260, align 8
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %262 = load i64, i64* %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %267 = load i64, i64* %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 10
  store i32 %265, i32* %269, align 4
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %271 = load i64, i64* %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i64 %271
  %273 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %13, align 8
  store %struct.TYPE_24__* %272, %struct.TYPE_24__** %273, align 8
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %275 = load i64, i64* %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 4
  store %struct.TYPE_24__** %277, %struct.TYPE_24__*** %13, align 8
  %278 = load i64, i64* %9, align 8
  %279 = add i64 %278, 1
  store i64 %279, i64* %9, align 8
  br label %280

280:                                              ; preds = %163
  %281 = load i64, i64* %8, align 8
  %282 = add i64 %281, 1
  store i64 %282, i64* %8, align 8
  br label %155

283:                                              ; preds = %155
  br label %284

284:                                              ; preds = %283, %153
  %285 = load i64, i64* %7, align 8
  %286 = add i64 %285, 1
  store i64 %286, i64* %7, align 8
  br label %138

287:                                              ; preds = %138
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 0
  store %struct.TYPE_23__* %288, %struct.TYPE_23__** %291, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %292

292:                                              ; preds = %329, %287
  %293 = load i64, i64* %7, align 8
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 5
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp ult i64 %293, %298
  br i1 %299, label %300, label %332

300:                                              ; preds = %292
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %302 = load i64, i64* %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 8
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %300
  br label %329

308:                                              ; preds = %300
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %310 = load i64, i64* %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* %9, align 8
  %315 = add i64 %314, %313
  store i64 %315, i64* %9, align 8
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %317 = load i64, i64* %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %322 = load i64, i64* %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = mul i64 %320, %325
  %327 = load i64, i64* %10, align 8
  %328 = add i64 %327, %326
  store i64 %328, i64* %10, align 8
  br label %329

329:                                              ; preds = %308, %307
  %330 = load i64, i64* %7, align 8
  %331 = add i64 %330, 1
  store i64 %331, i64* %7, align 8
  br label %292

332:                                              ; preds = %292
  %333 = load i64, i64* %9, align 8
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %332
  %336 = load i64, i64* @NGX_OK, align 8
  store i64 %336, i64* %3, align 8
  br label %720

337:                                              ; preds = %332
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i8* @ngx_pcalloc(i32 %340, i32 56)
  %342 = bitcast i8* %341 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %342, %struct.TYPE_23__** %15, align 8
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %344 = icmp eq %struct.TYPE_23__* %343, null
  br i1 %344, label %345, label %347

345:                                              ; preds = %337
  %346 = load i64, i64* @NGX_ERROR, align 8
  store i64 %346, i64* %3, align 8
  br label %720

347:                                              ; preds = %337
  %348 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = load i64, i64* %9, align 8
  %352 = mul i64 72, %351
  %353 = trunc i64 %352 to i32
  %354 = call i8* @ngx_pcalloc(i32 %350, i32 %353)
  %355 = bitcast i8* %354 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %355, %struct.TYPE_24__** %12, align 8
  %356 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %357 = icmp eq %struct.TYPE_24__* %356, null
  br i1 %357, label %358, label %360

358:                                              ; preds = %347
  %359 = load i64, i64* @NGX_ERROR, align 8
  store i64 %359, i64* %3, align 8
  br label %720

360:                                              ; preds = %347
  %361 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %362 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %361, i32 0, i32 0
  store i32 0, i32* %362, align 8
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 0
  store i32 0, i32* %364, align 8
  %365 = load i64, i64* %9, align 8
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 1
  store i64 %365, i64* %367, align 8
  %368 = load i64, i64* %10, align 8
  %369 = load i64, i64* %9, align 8
  %370 = icmp ne i64 %368, %369
  %371 = zext i1 %370 to i32
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %372, i32 0, i32 2
  store i32 %371, i32* %373, align 8
  %374 = load i64, i64* %10, align 8
  %375 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %376 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %375, i32 0, i32 3
  store i64 %374, i64* %376, align 8
  %377 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %377, i32 0, i32 2
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %379, i32 0, i32 5
  store i32* %378, i32** %380, align 8
  store i64 0, i64* %9, align 8
  %381 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %382 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %381, i32 0, i32 4
  store %struct.TYPE_24__** %382, %struct.TYPE_24__*** %13, align 8
  store i64 0, i64* %7, align 8
  br label %383

383:                                              ; preds = %529, %360
  %384 = load i64, i64* %7, align 8
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 5
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = icmp ult i64 %384, %389
  br i1 %390, label %391, label %532

391:                                              ; preds = %383
  %392 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %393 = load i64, i64* %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %392, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %394, i32 0, i32 8
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %391
  br label %529

399:                                              ; preds = %391
  store i64 0, i64* %8, align 8
  br label %400

400:                                              ; preds = %525, %399
  %401 = load i64, i64* %8, align 8
  %402 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %403 = load i64, i64* %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %402, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = icmp ult i64 %401, %406
  br i1 %407, label %408, label %528

408:                                              ; preds = %400
  %409 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %410 = load i64, i64* %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %409, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %411, i32 0, i32 7
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %412, align 8
  %414 = load i64, i64* %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %419 = load i64, i64* %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %418, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %420, i32 0, i32 9
  store i32 %417, i32* %421, align 8
  %422 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %423 = load i64, i64* %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %424, i32 0, i32 7
  %426 = load %struct.TYPE_17__*, %struct.TYPE_17__** %425, align 8
  %427 = load i64, i64* %8, align 8
  %428 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %426, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %432 = load i64, i64* %9, align 8
  %433 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %431, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %433, i32 0, i32 8
  store i32 %430, i32* %434, align 4
  %435 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %436 = load i64, i64* %7, align 8
  %437 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %435, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %437, i32 0, i32 7
  %439 = load %struct.TYPE_17__*, %struct.TYPE_17__** %438, align 8
  %440 = load i64, i64* %8, align 8
  %441 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %439, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %445 = load i64, i64* %9, align 8
  %446 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %444, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %446, i32 0, i32 7
  store i32 %443, i32* %447, align 8
  %448 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %449 = load i64, i64* %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %448, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %454 = load i64, i64* %9, align 8
  %455 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %453, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %455, i32 0, i32 0
  store i64 %452, i64* %456, align 8
  %457 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %458 = load i64, i64* %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %457, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %459, i32 0, i32 1
  %461 = load i64, i64* %460, align 8
  %462 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %463 = load i64, i64* %9, align 8
  %464 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %462, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %464, i32 0, i32 1
  store i64 %461, i64* %465, align 8
  %466 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %467 = load i64, i64* %9, align 8
  %468 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %466, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %468, i32 0, i32 6
  store i64 0, i64* %469, align 8
  %470 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %471 = load i64, i64* %7, align 8
  %472 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %470, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %472, i32 0, i32 6
  %474 = load i64, i64* %473, align 8
  %475 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %476 = load i64, i64* %9, align 8
  %477 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %475, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %477, i32 0, i32 5
  store i64 %474, i64* %478, align 8
  %479 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %480 = load i64, i64* %7, align 8
  %481 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %479, i64 %480
  %482 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %481, i32 0, i32 2
  %483 = load i32, i32* %482, align 8
  %484 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %485 = load i64, i64* %9, align 8
  %486 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %484, i64 %485
  %487 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %486, i32 0, i32 2
  store i32 %483, i32* %487, align 8
  %488 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %489 = load i64, i64* %7, align 8
  %490 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %488, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 4
  %493 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %494 = load i64, i64* %9, align 8
  %495 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %493, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %495, i32 0, i32 3
  store i32 %492, i32* %496, align 4
  %497 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %498 = load i64, i64* %7, align 8
  %499 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %497, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %499, i32 0, i32 5
  %501 = load i32, i32* %500, align 4
  %502 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %503 = load i64, i64* %9, align 8
  %504 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %502, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %504, i32 0, i32 11
  store i32 %501, i32* %505, align 8
  %506 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %507 = load i64, i64* %7, align 8
  %508 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %506, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %508, i32 0, i32 4
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %512 = load i64, i64* %9, align 8
  %513 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %511, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %513, i32 0, i32 10
  store i32 %510, i32* %514, align 4
  %515 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %516 = load i64, i64* %9, align 8
  %517 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %515, i64 %516
  %518 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %13, align 8
  store %struct.TYPE_24__* %517, %struct.TYPE_24__** %518, align 8
  %519 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %520 = load i64, i64* %9, align 8
  %521 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %519, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %521, i32 0, i32 4
  store %struct.TYPE_24__** %522, %struct.TYPE_24__*** %13, align 8
  %523 = load i64, i64* %9, align 8
  %524 = add i64 %523, 1
  store i64 %524, i64* %9, align 8
  br label %525

525:                                              ; preds = %408
  %526 = load i64, i64* %8, align 8
  %527 = add i64 %526, 1
  store i64 %527, i64* %8, align 8
  br label %400

528:                                              ; preds = %400
  br label %529

529:                                              ; preds = %528, %398
  %530 = load i64, i64* %7, align 8
  %531 = add i64 %530, 1
  store i64 %531, i64* %7, align 8
  br label %383

532:                                              ; preds = %383
  %533 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %534 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %535 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %534, i32 0, i32 6
  store %struct.TYPE_23__* %533, %struct.TYPE_23__** %535, align 8
  %536 = load i64, i64* @NGX_OK, align 8
  store i64 %536, i64* %3, align 8
  br label %720

537:                                              ; preds = %2
  %538 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %539 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %538, i32 0, i32 0
  %540 = load i64, i64* %539, align 8
  %541 = icmp eq i64 %540, 0
  br i1 %541, label %542, label %560

542:                                              ; preds = %537
  %543 = load i32, i32* @NGX_LOG_EMERG, align 4
  %544 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %545 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 4
  %547 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %548 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %547, i32 0, i32 2
  %549 = ptrtoint i32* %548 to i32
  %550 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %551 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %550, i32 0, i32 4
  %552 = load i32, i32* %551, align 8
  %553 = sext i32 %552 to i64
  %554 = inttoptr i64 %553 to i32*
  %555 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %556 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %555, i32 0, i32 3
  %557 = load i32, i32* %556, align 4
  %558 = call i32 (i32, i32, i32, i8*, i32, i32*, i32, ...) @ngx_log_error(i32 %543, i32 %546, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %549, i32* %554, i32 %557)
  %559 = load i64, i64* @NGX_ERROR, align 8
  store i64 %559, i64* %3, align 8
  br label %720

560:                                              ; preds = %537
  %561 = call i32 @ngx_memzero(%struct.TYPE_20__* %6, i32 32)
  %562 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %563 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %562, i32 0, i32 2
  %564 = load i32, i32* %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 4
  store i32 %564, i32* %565, align 4
  %566 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %567 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i64 %568, i64* %569, align 8
  %570 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %571 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 4
  %573 = call i64 @ngx_inet_resolve_host(i32 %572, %struct.TYPE_20__* %6)
  %574 = load i64, i64* @NGX_OK, align 8
  %575 = icmp ne i64 %573, %574
  br i1 %575, label %576, label %598

576:                                              ; preds = %560
  %577 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  %578 = load i32, i32* %577, align 8
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %596

580:                                              ; preds = %576
  %581 = load i32, i32* @NGX_LOG_EMERG, align 4
  %582 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %583 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  %585 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  %586 = load i32, i32* %585, align 8
  %587 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %588 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %587, i32 0, i32 2
  %589 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %590 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %589, i32 0, i32 4
  %591 = load i32, i32* %590, align 8
  %592 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %593 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %592, i32 0, i32 3
  %594 = load i32, i32* %593, align 4
  %595 = call i32 (i32, i32, i32, i8*, i32, i32*, i32, ...) @ngx_log_error(i32 %581, i32 %584, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %586, i32* %588, i32 %591, i32 %594)
  br label %596

596:                                              ; preds = %580, %576
  %597 = load i64, i64* @NGX_ERROR, align 8
  store i64 %597, i64* %3, align 8
  br label %720

598:                                              ; preds = %560
  %599 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %600 = load i64, i64* %599, align 8
  store i64 %600, i64* %9, align 8
  %601 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %602 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %601, i32 0, i32 0
  %603 = load i32, i32* %602, align 4
  %604 = call i8* @ngx_pcalloc(i32 %603, i32 56)
  %605 = bitcast i8* %604 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %605, %struct.TYPE_23__** %14, align 8
  %606 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %607 = icmp eq %struct.TYPE_23__* %606, null
  br i1 %607, label %608, label %610

608:                                              ; preds = %598
  %609 = load i64, i64* @NGX_ERROR, align 8
  store i64 %609, i64* %3, align 8
  br label %720

610:                                              ; preds = %598
  %611 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %612 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 4
  %614 = load i64, i64* %9, align 8
  %615 = mul i64 72, %614
  %616 = trunc i64 %615 to i32
  %617 = call i8* @ngx_pcalloc(i32 %613, i32 %616)
  %618 = bitcast i8* %617 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %618, %struct.TYPE_24__** %12, align 8
  %619 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %620 = icmp eq %struct.TYPE_24__* %619, null
  br i1 %620, label %621, label %623

621:                                              ; preds = %610
  %622 = load i64, i64* @NGX_ERROR, align 8
  store i64 %622, i64* %3, align 8
  br label %720

623:                                              ; preds = %610
  %624 = load i64, i64* %9, align 8
  %625 = icmp eq i64 %624, 1
  %626 = zext i1 %625 to i32
  %627 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %628 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %627, i32 0, i32 0
  store i32 %626, i32* %628, align 8
  %629 = load i64, i64* %9, align 8
  %630 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %631 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %630, i32 0, i32 1
  store i64 %629, i64* %631, align 8
  %632 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %633 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %632, i32 0, i32 2
  store i32 0, i32* %633, align 8
  %634 = load i64, i64* %9, align 8
  %635 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %636 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %635, i32 0, i32 3
  store i64 %634, i64* %636, align 8
  %637 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %638 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %637, i32 0, i32 2
  %639 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %640 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %639, i32 0, i32 5
  store i32* %638, i32** %640, align 8
  %641 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %642 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %641, i32 0, i32 4
  store %struct.TYPE_24__** %642, %struct.TYPE_24__*** %13, align 8
  store i64 0, i64* %7, align 8
  br label %643

643:                                              ; preds = %711, %623
  %644 = load i64, i64* %7, align 8
  %645 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %646 = load i64, i64* %645, align 8
  %647 = icmp ult i64 %644, %646
  br i1 %647, label %648, label %714

648:                                              ; preds = %643
  %649 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %650 = load %struct.TYPE_18__*, %struct.TYPE_18__** %649, align 8
  %651 = load i64, i64* %7, align 8
  %652 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %650, i64 %651
  %653 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %652, i32 0, i32 2
  %654 = load i32, i32* %653, align 4
  %655 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %656 = load i64, i64* %7, align 8
  %657 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %655, i64 %656
  %658 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %657, i32 0, i32 9
  store i32 %654, i32* %658, align 8
  %659 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %660 = load %struct.TYPE_18__*, %struct.TYPE_18__** %659, align 8
  %661 = load i64, i64* %7, align 8
  %662 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %660, i64 %661
  %663 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %662, i32 0, i32 1
  %664 = load i32, i32* %663, align 4
  %665 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %666 = load i64, i64* %7, align 8
  %667 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %665, i64 %666
  %668 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %667, i32 0, i32 8
  store i32 %664, i32* %668, align 4
  %669 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %670 = load %struct.TYPE_18__*, %struct.TYPE_18__** %669, align 8
  %671 = load i64, i64* %7, align 8
  %672 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %670, i64 %671
  %673 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %672, i32 0, i32 0
  %674 = load i32, i32* %673, align 4
  %675 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %676 = load i64, i64* %7, align 8
  %677 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %675, i64 %676
  %678 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %677, i32 0, i32 7
  store i32 %674, i32* %678, align 8
  %679 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %680 = load i64, i64* %7, align 8
  %681 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %679, i64 %680
  %682 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %681, i32 0, i32 0
  store i64 1, i64* %682, align 8
  %683 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %684 = load i64, i64* %7, align 8
  %685 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %683, i64 %684
  %686 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %685, i32 0, i32 1
  store i64 1, i64* %686, align 8
  %687 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %688 = load i64, i64* %7, align 8
  %689 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %687, i64 %688
  %690 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %689, i32 0, i32 6
  store i64 0, i64* %690, align 8
  %691 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %692 = load i64, i64* %7, align 8
  %693 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %691, i64 %692
  %694 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %693, i32 0, i32 5
  store i64 0, i64* %694, align 8
  %695 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %696 = load i64, i64* %7, align 8
  %697 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %695, i64 %696
  %698 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %697, i32 0, i32 2
  store i32 1, i32* %698, align 8
  %699 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %700 = load i64, i64* %7, align 8
  %701 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %699, i64 %700
  %702 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %701, i32 0, i32 3
  store i32 10, i32* %702, align 4
  %703 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %704 = load i64, i64* %7, align 8
  %705 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %703, i64 %704
  %706 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %13, align 8
  store %struct.TYPE_24__* %705, %struct.TYPE_24__** %706, align 8
  %707 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %708 = load i64, i64* %7, align 8
  %709 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %707, i64 %708
  %710 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %709, i32 0, i32 4
  store %struct.TYPE_24__** %710, %struct.TYPE_24__*** %13, align 8
  br label %711

711:                                              ; preds = %648
  %712 = load i64, i64* %7, align 8
  %713 = add i64 %712, 1
  store i64 %713, i64* %7, align 8
  br label %643

714:                                              ; preds = %643
  %715 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %716 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %717 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %716, i32 0, i32 1
  %718 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %717, i32 0, i32 0
  store %struct.TYPE_23__* %715, %struct.TYPE_23__** %718, align 8
  %719 = load i64, i64* @NGX_OK, align 8
  store i64 %719, i64* %3, align 8
  br label %720

720:                                              ; preds = %714, %621, %608, %596, %542, %532, %358, %345, %335, %112, %99, %73
  %721 = load i64, i64* %3, align 8
  ret i64 %721
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32*, i32, ...) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_inet_resolve_host(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
