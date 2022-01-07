; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_test_finalize.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_test_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_13__*, i32, i64, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@ngx_stream_proxy_module = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_MAX_INT32_VALUE = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"udp done, packets from/to client:%ui/%ui, bytes from/to client:%O/%O, bytes from/to upstream:%O/%O\00", align 1
@NGX_STREAM_OK = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"%s disconnected, bytes from/to client:%O/%O, bytes from/to upstream:%O/%O\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"upstream\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64)* @ngx_stream_proxy_test_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_proxy_test_finalize(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = load i32, i32* @ngx_stream_proxy_module, align 4
  %13 = call %struct.TYPE_18__* @ngx_stream_get_module_srv_conf(%struct.TYPE_17__* %11, i32 %12)
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %10, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %6, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %9, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi %struct.TYPE_19__* [ %28, %24 ], [ null, %29 ]
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %7, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SOCK_DGRAM, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %145

37:                                               ; preds = %30
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %51, i32* %3, align 4
  br label %236

52:                                               ; preds = %42, %37
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %59 = call i32 @ngx_delete_udp_connection(%struct.TYPE_19__* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NGX_MAX_INT32_VALUE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  %77 = icmp slt i32 %69, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %66, %60
  %79 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %79, i32* %3, align 4
  br label %236

80:                                               ; preds = %66
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %82 = icmp eq %struct.TYPE_19__* %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88, %83, %80
  %94 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %94, i32* %3, align 4
  br label %236

95:                                               ; preds = %88
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = bitcast i32* %100 to i8*
  store i8* %101, i8** %8, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  store i32* null, i32** %105, align 8
  %106 = load i32, i32* @NGX_LOG_INFO, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %126 = icmp ne %struct.TYPE_19__* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %95
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  br label %132

131:                                              ; preds = %95
  br label %132

132:                                              ; preds = %131, %127
  %133 = phi i32 [ %130, %127 ], [ 0, %131 ]
  %134 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ngx_log_error(i32 %106, %struct.TYPE_13__* %109, i32 0, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %115, i32 %118, i32 %121, i32 %124, i32 %133)
  %135 = load i8*, i8** %8, align 8
  %136 = bitcast i8* %135 to i32*
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  store i32* %136, i32** %140, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %142 = load i32, i32* @NGX_STREAM_OK, align 4
  %143 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_17__* %141, i32 %142)
  %144 = load i32, i32* @NGX_OK, align 4
  store i32 %144, i32* %3, align 4
  br label %236

145:                                              ; preds = %30
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %147 = icmp eq %struct.TYPE_19__* %146, null
  br i1 %147, label %186, label %148

148:                                              ; preds = %145
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %148
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %186

162:                                              ; preds = %155, %148
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %162
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %169, %162
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %174
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181, %169, %155, %145
  %187 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %187, i32* %3, align 4
  br label %236

188:                                              ; preds = %181, %174
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = bitcast i32* %193 to i8*
  store i8* %194, i8** %8, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  store i32* null, i32** %198, align 8
  %199 = load i32, i32* @NGX_LOG_INFO, align 4
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = load i64, i64* %5, align 8
  %204 = icmp ne i64 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %217 = icmp ne %struct.TYPE_19__* %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %188
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  br label %223

222:                                              ; preds = %188
  br label %223

223:                                              ; preds = %222, %218
  %224 = phi i32 [ %221, %218 ], [ 0, %222 ]
  %225 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ngx_log_error(i32 %199, %struct.TYPE_13__* %202, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i8* %206, i32 %209, i32 %212, i32 %215, i32 %224)
  %226 = load i8*, i8** %8, align 8
  %227 = bitcast i8* %226 to i32*
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  store i32* %227, i32** %231, align 8
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %233 = load i32, i32* @NGX_STREAM_OK, align 4
  %234 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_17__* %232, i32 %233)
  %235 = load i32, i32* @NGX_OK, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %223, %186, %132, %93, %78, %50
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local %struct.TYPE_18__* @ngx_stream_get_module_srv_conf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_delete_udp_connection(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_stream_proxy_finalize(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
