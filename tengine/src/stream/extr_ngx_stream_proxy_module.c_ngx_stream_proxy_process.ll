; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_process.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, %struct.TYPE_34__*, %struct.TYPE_31__* }
%struct.TYPE_34__ = type { i64, i64 (%struct.TYPE_34__*, i64, i64)*, %struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_26__*, i32, i64 }
%struct.TYPE_27__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_26__ = type { i8*, i32* }
%struct.TYPE_31__ = type { i64, i32, i32, i64, i32, i32, i64, i32, %struct.TYPE_28__*, %struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_36__, %struct.TYPE_35__*, %struct.TYPE_35__*, %struct.TYPE_36__, %struct.TYPE_30__, i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_35__ = type { %struct.TYPE_29__*, %struct.TYPE_35__* }
%struct.TYPE_29__ = type { i64, i64, i32, i32, i32, i64 }
%struct.TYPE_36__ = type { i64, i64, i64, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_34__* }
%struct.TYPE_33__ = type { i64 }

@SOCK_DGRAM = common dso_local global i64 0, align 8
@ngx_terminate = common dso_local global i64 0, align 8
@ngx_exiting = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"disconnected on shutdown\00", align 1
@NGX_STREAM_OK = common dso_local global i32 0, align 4
@ngx_stream_proxy_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"proxying and reading from upstream\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"proxying and sending to client\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"proxying and reading from client\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"proxying and sending to upstream\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@ngx_current_msec = common dso_local global i64 0, align 8
@NGX_STREAM_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"proxying connection\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CLOSE_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_32__*, i32, i32)* @ngx_stream_proxy_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_stream_proxy_process(%struct.TYPE_32__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_36__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_35__*, align 8
  %20 = alloca %struct.TYPE_35__**, align 8
  %21 = alloca %struct.TYPE_35__**, align 8
  %22 = alloca %struct.TYPE_35__**, align 8
  %23 = alloca %struct.TYPE_34__*, align 8
  %24 = alloca %struct.TYPE_34__*, align 8
  %25 = alloca %struct.TYPE_34__*, align 8
  %26 = alloca %struct.TYPE_34__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_31__*, align 8
  %29 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %31, align 8
  store %struct.TYPE_31__* %32, %struct.TYPE_31__** %28, align 8
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_34__*, %struct.TYPE_34__** %34, align 8
  store %struct.TYPE_34__* %35, %struct.TYPE_34__** %23, align 8
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 16
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %3
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %42 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %41, i32 0, i32 15
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %43, align 8
  br label %46

45:                                               ; preds = %3
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi %struct.TYPE_34__* [ %44, %40 ], [ null, %45 ]
  store %struct.TYPE_34__* %47, %struct.TYPE_34__** %24, align 8
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SOCK_DGRAM, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %46
  %54 = load i64, i64* @ngx_terminate, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* @ngx_exiting, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %56, %53
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %61 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %27, align 8
  %65 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %66 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 1
  store i32* null, i32** %68, align 8
  %69 = load i32, i32* @NGX_LOG_INFO, align 4
  %70 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %71 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %71, align 8
  %73 = call i32 @ngx_log_error(i32 %69, %struct.TYPE_26__* %72, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %74 = load i32*, i32** %27, align 8
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %76 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 1
  store i32* %74, i32** %78, align 8
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %80 = load i32, i32* @NGX_STREAM_OK, align 4
  %81 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_32__* %79, i32 %80)
  br label %505

82:                                               ; preds = %56, %46
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %84 = load i32, i32* @ngx_stream_proxy_module, align 4
  %85 = call %struct.TYPE_33__* @ngx_stream_get_module_srv_conf(%struct.TYPE_32__* %83, i32 %84)
  store %struct.TYPE_33__* %85, %struct.TYPE_33__** %29, align 8
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  store %struct.TYPE_34__* %89, %struct.TYPE_34__** %25, align 8
  %90 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  store %struct.TYPE_34__* %90, %struct.TYPE_34__** %26, align 8
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 14
  store %struct.TYPE_36__* %92, %struct.TYPE_36__** %14, align 8
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %12, align 8
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 1
  store i32* %97, i32** %9, align 8
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 2
  store i32* %99, i32** %17, align 8
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 13
  store %struct.TYPE_35__** %101, %struct.TYPE_35__*** %21, align 8
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %102, i32 0, i32 12
  store %struct.TYPE_35__** %103, %struct.TYPE_35__*** %22, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %120

104:                                              ; preds = %82
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  store %struct.TYPE_34__* %105, %struct.TYPE_34__** %25, align 8
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  store %struct.TYPE_34__* %106, %struct.TYPE_34__** %26, align 8
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 11
  store %struct.TYPE_36__* %108, %struct.TYPE_36__** %14, align 8
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %12, align 8
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 0
  store i32* %113, i32** %9, align 8
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 4
  store i32* %115, i32** %17, align 8
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %116, i32 0, i32 10
  store %struct.TYPE_35__** %117, %struct.TYPE_35__*** %21, align 8
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 9
  store %struct.TYPE_35__** %119, %struct.TYPE_35__*** %22, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %120

120:                                              ; preds = %104, %88
  br label %121

121:                                              ; preds = %361, %120
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %183

124:                                              ; preds = %121
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %126 = icmp ne %struct.TYPE_34__* %125, null
  br i1 %126, label %127, label %183

127:                                              ; preds = %124
  %128 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %21, align 8
  %129 = load %struct.TYPE_35__*, %struct.TYPE_35__** %128, align 8
  %130 = icmp ne %struct.TYPE_35__* %129, null
  br i1 %130, label %140, label %131

131:                                              ; preds = %127
  %132 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %22, align 8
  %133 = load %struct.TYPE_35__*, %struct.TYPE_35__** %132, align 8
  %134 = icmp ne %struct.TYPE_35__* %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %131
  %136 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %137 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %182

140:                                              ; preds = %135, %131, %127
  %141 = load i8*, i8** %8, align 8
  %142 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %143 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  store i8* %141, i8** %145, align 8
  %146 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %147 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %21, align 8
  %148 = load %struct.TYPE_35__*, %struct.TYPE_35__** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i64 @ngx_stream_top_filter(%struct.TYPE_32__* %146, %struct.TYPE_35__* %148, i32 %149)
  store i64 %150, i64* %15, align 8
  %151 = load i64, i64* %15, align 8
  %152 = load i64, i64* @NGX_ERROR, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %140
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %156 = load i32, i32* @NGX_STREAM_OK, align 4
  %157 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_32__* %155, i32 %156)
  br label %505

158:                                              ; preds = %140
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 7
  %164 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %22, align 8
  %165 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %21, align 8
  %166 = call i32 @ngx_chain_update_chains(i32 %161, i32* %163, %struct.TYPE_35__** %164, %struct.TYPE_35__** %165, i64 ptrtoint (i32* @ngx_stream_proxy_module to i64))
  %167 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %22, align 8
  %168 = load %struct.TYPE_35__*, %struct.TYPE_35__** %167, align 8
  %169 = icmp eq %struct.TYPE_35__* %168, null
  br i1 %169, label %170, label %181

170:                                              ; preds = %158
  %171 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %179, i32 0, i32 2
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %170, %158
  br label %182

182:                                              ; preds = %181, %135
  br label %183

183:                                              ; preds = %182, %124, %121
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = sub i64 %186, %189
  store i64 %190, i64* %11, align 8
  %191 = load i64, i64* %11, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %420

193:                                              ; preds = %183
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 3
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %420

200:                                              ; preds = %193
  %201 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %202 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %420, label %207

207:                                              ; preds = %200
  %208 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %209 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %420, label %214

214:                                              ; preds = %207
  %215 = load i64, i64* %12, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %264

217:                                              ; preds = %214
  %218 = load i64, i64* %12, align 8
  %219 = trunc i64 %218 to i32
  %220 = call i32 (...) @ngx_time()
  %221 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %222 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %220, %223
  %225 = add nsw i32 %224, 1
  %226 = mul nsw i32 %219, %225
  %227 = load i32*, i32** %9, align 8
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %226, %228
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp sle i32 %230, 0
  br i1 %231, label %232, label %249

232:                                              ; preds = %217
  %233 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %234 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %233, i32 0, i32 3
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 0
  store i32 1, i32* %236, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sub nsw i32 0, %237
  %239 = mul nsw i32 %238, 1000
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* %12, align 8
  %242 = udiv i64 %240, %241
  %243 = add i64 %242, 1
  store i64 %243, i64* %18, align 8
  %244 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %244, i32 0, i32 3
  %246 = load %struct.TYPE_27__*, %struct.TYPE_27__** %245, align 8
  %247 = load i64, i64* %18, align 8
  %248 = call i32 @ngx_add_timer(%struct.TYPE_27__* %246, i64 %247)
  br label %421

249:                                              ; preds = %217
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @SOCK_STREAM, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %263

255:                                              ; preds = %249
  %256 = load i64, i64* %11, align 8
  %257 = trunc i64 %256 to i32
  %258 = load i32, i32* %10, align 4
  %259 = icmp sgt i32 %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  store i64 %262, i64* %11, align 8
  br label %263

263:                                              ; preds = %260, %255, %249
  br label %264

264:                                              ; preds = %263, %214
  %265 = load i8*, i8** %7, align 8
  %266 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %267 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %266, i32 0, i32 4
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 0
  store i8* %265, i8** %269, align 8
  %270 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %271 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %270, i32 0, i32 1
  %272 = load i64 (%struct.TYPE_34__*, i64, i64)*, i64 (%struct.TYPE_34__*, i64, i64)** %271, align 8
  %273 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %274 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %275 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* %11, align 8
  %278 = call i64 %272(%struct.TYPE_34__* %273, i64 %276, i64 %277)
  store i64 %278, i64* %13, align 8
  %279 = load i64, i64* %13, align 8
  %280 = load i64, i64* @NGX_AGAIN, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %264
  br label %421

283:                                              ; preds = %264
  %284 = load i64, i64* %13, align 8
  %285 = load i64, i64* @NGX_ERROR, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %292

287:                                              ; preds = %283
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 3
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 1
  store i32 1, i32* %291, align 4
  store i64 0, i64* %13, align 8
  br label %292

292:                                              ; preds = %287, %283
  %293 = load i64, i64* %13, align 8
  %294 = icmp sge i64 %293, 0
  br i1 %294, label %295, label %419

295:                                              ; preds = %292
  %296 = load i64, i64* %12, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %316

298:                                              ; preds = %295
  %299 = load i64, i64* %13, align 8
  %300 = mul nsw i64 %299, 1000
  %301 = load i64, i64* %12, align 8
  %302 = udiv i64 %300, %301
  store i64 %302, i64* %18, align 8
  %303 = load i64, i64* %18, align 8
  %304 = icmp sgt i64 %303, 0
  br i1 %304, label %305, label %315

305:                                              ; preds = %298
  %306 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %307 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %306, i32 0, i32 3
  %308 = load %struct.TYPE_27__*, %struct.TYPE_27__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %308, i32 0, i32 0
  store i32 1, i32* %309, align 8
  %310 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i32 0, i32 3
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %311, align 8
  %313 = load i64, i64* %18, align 8
  %314 = call i32 @ngx_add_timer(%struct.TYPE_27__* %312, i64 %313)
  br label %315

315:                                              ; preds = %305, %298
  br label %316

316:                                              ; preds = %315, %295
  %317 = load i32, i32* %5, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %337

319:                                              ; preds = %316
  %320 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %321 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %320, i32 0, i32 8
  %322 = load %struct.TYPE_28__*, %struct.TYPE_28__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = icmp eq i64 %324, -1
  br i1 %325, label %326, label %336

326:                                              ; preds = %319
  %327 = load i64, i64* @ngx_current_msec, align 8
  %328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %328, i32 0, i32 6
  %330 = load i64, i64* %329, align 8
  %331 = sub nsw i64 %327, %330
  %332 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %333 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %332, i32 0, i32 8
  %334 = load %struct.TYPE_28__*, %struct.TYPE_28__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %334, i32 0, i32 0
  store i64 %331, i64* %335, align 8
  br label %336

336:                                              ; preds = %326, %319
  br label %337

337:                                              ; preds = %336, %316
  %338 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %21, align 8
  store %struct.TYPE_35__** %338, %struct.TYPE_35__*** %20, align 8
  br label %339

339:                                              ; preds = %344, %337
  %340 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %20, align 8
  %341 = load %struct.TYPE_35__*, %struct.TYPE_35__** %340, align 8
  %342 = icmp ne %struct.TYPE_35__* %341, null
  br i1 %342, label %343, label %348

343:                                              ; preds = %339
  br label %344

344:                                              ; preds = %343
  %345 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %20, align 8
  %346 = load %struct.TYPE_35__*, %struct.TYPE_35__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %346, i32 0, i32 1
  store %struct.TYPE_35__** %347, %struct.TYPE_35__*** %20, align 8
  br label %339

348:                                              ; preds = %339
  %349 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %350 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %353 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %352, i32 0, i32 7
  %354 = call %struct.TYPE_35__* @ngx_chain_get_free_buf(i32 %351, i32* %353)
  store %struct.TYPE_35__* %354, %struct.TYPE_35__** %19, align 8
  %355 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %356 = icmp eq %struct.TYPE_35__* %355, null
  br i1 %356, label %357, label %361

357:                                              ; preds = %348
  %358 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %359 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %360 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_32__* %358, i32 %359)
  br label %505

361:                                              ; preds = %348
  %362 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %363 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %20, align 8
  store %struct.TYPE_35__* %362, %struct.TYPE_35__** %363, align 8
  %364 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %368 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_29__*, %struct.TYPE_29__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %369, i32 0, i32 0
  store i64 %366, i64* %370, align 8
  %371 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %372 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* %13, align 8
  %375 = add i64 %373, %374
  %376 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %377 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %376, i32 0, i32 0
  %378 = load %struct.TYPE_29__*, %struct.TYPE_29__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %378, i32 0, i32 1
  store i64 %375, i64* %379, align 8
  %380 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %381 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_29__*, %struct.TYPE_29__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %382, i32 0, i32 5
  store i64 ptrtoint (i32* @ngx_stream_proxy_module to i64), i64* %383, align 8
  %384 = load i64, i64* %13, align 8
  %385 = icmp ne i64 %384, 0
  %386 = zext i1 %385 to i64
  %387 = select i1 %385, i32 1, i32 0
  %388 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %389 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_29__*, %struct.TYPE_29__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %390, i32 0, i32 2
  store i32 %387, i32* %391, align 8
  %392 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %393 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %392, i32 0, i32 3
  %394 = load %struct.TYPE_27__*, %struct.TYPE_27__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %398 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %397, i32 0, i32 0
  %399 = load %struct.TYPE_29__*, %struct.TYPE_29__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %399, i32 0, i32 3
  store i32 %396, i32* %400, align 4
  %401 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %402 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_29__*, %struct.TYPE_29__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %403, i32 0, i32 4
  store i32 1, i32* %404, align 8
  %405 = load i32*, i32** %17, align 8
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %405, align 4
  %408 = load i64, i64* %13, align 8
  %409 = load i32*, i32** %9, align 8
  %410 = load i32, i32* %409, align 4
  %411 = sext i32 %410 to i64
  %412 = add nsw i64 %411, %408
  %413 = trunc i64 %412 to i32
  store i32 %413, i32* %409, align 4
  %414 = load i64, i64* %13, align 8
  %415 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %416 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %415, i32 0, i32 2
  %417 = load i64, i64* %416, align 8
  %418 = add i64 %417, %414
  store i64 %418, i64* %416, align 8
  store i32 1, i32* %6, align 4
  br label %121

419:                                              ; preds = %292
  br label %420

420:                                              ; preds = %419, %207, %200, %193, %183
  br label %421

421:                                              ; preds = %420, %282, %232
  %422 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %423 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %422, i32 0, i32 4
  %424 = load %struct.TYPE_26__*, %struct.TYPE_26__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %424, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %425, align 8
  %426 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %427 = load i32, i32* %5, align 4
  %428 = call i64 @ngx_stream_proxy_test_finalize(%struct.TYPE_32__* %426, i32 %427)
  %429 = load i64, i64* @NGX_OK, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %432

431:                                              ; preds = %421
  br label %505

432:                                              ; preds = %421
  %433 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %434 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %433, i32 0, i32 3
  %435 = load %struct.TYPE_27__*, %struct.TYPE_27__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %432
  %440 = load i32, i32* @NGX_CLOSE_EVENT, align 4
  br label %442

441:                                              ; preds = %432
  br label %442

442:                                              ; preds = %441, %439
  %443 = phi i32 [ %440, %439 ], [ 0, %441 ]
  store i32 %443, i32* %16, align 4
  %444 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %445 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %444, i32 0, i32 3
  %446 = load %struct.TYPE_27__*, %struct.TYPE_27__** %445, align 8
  %447 = load i32, i32* %16, align 4
  %448 = call i64 @ngx_handle_read_event(%struct.TYPE_27__* %446, i32 %447)
  %449 = load i64, i64* @NGX_OK, align 8
  %450 = icmp ne i64 %448, %449
  br i1 %450, label %451, label %455

451:                                              ; preds = %442
  %452 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %453 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %454 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_32__* %452, i32 %453)
  br label %505

455:                                              ; preds = %442
  %456 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %457 = icmp ne %struct.TYPE_34__* %456, null
  br i1 %457, label %458, label %505

458:                                              ; preds = %455
  %459 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %460 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %459, i32 0, i32 2
  %461 = load %struct.TYPE_27__*, %struct.TYPE_27__** %460, align 8
  %462 = call i64 @ngx_handle_write_event(%struct.TYPE_27__* %461, i32 0)
  %463 = load i64, i64* @NGX_OK, align 8
  %464 = icmp ne i64 %462, %463
  br i1 %464, label %465, label %469

465:                                              ; preds = %458
  %466 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %467 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %468 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_32__* %466, i32 %467)
  br label %505

469:                                              ; preds = %458
  %470 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %471 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %470, i32 0, i32 3
  %472 = load %struct.TYPE_27__*, %struct.TYPE_27__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %491, label %476

476:                                              ; preds = %469
  %477 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %478 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %477, i32 0, i32 3
  %479 = load %struct.TYPE_27__*, %struct.TYPE_27__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %491, label %483

483:                                              ; preds = %476
  %484 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %485 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %484, i32 0, i32 2
  %486 = load %struct.TYPE_27__*, %struct.TYPE_27__** %485, align 8
  %487 = load %struct.TYPE_33__*, %struct.TYPE_33__** %29, align 8
  %488 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %487, i32 0, i32 0
  %489 = load i64, i64* %488, align 8
  %490 = call i32 @ngx_add_timer(%struct.TYPE_27__* %486, i64 %489)
  br label %504

491:                                              ; preds = %476, %469
  %492 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %493 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %492, i32 0, i32 2
  %494 = load %struct.TYPE_27__*, %struct.TYPE_27__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %494, i32 0, i32 2
  %496 = load i64, i64* %495, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %503

498:                                              ; preds = %491
  %499 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %500 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %499, i32 0, i32 2
  %501 = load %struct.TYPE_27__*, %struct.TYPE_27__** %500, align 8
  %502 = call i32 @ngx_del_timer(%struct.TYPE_27__* %501)
  br label %503

503:                                              ; preds = %498, %491
  br label %504

504:                                              ; preds = %503, %483
  br label %505

505:                                              ; preds = %59, %154, %357, %431, %451, %465, %504, %455
  ret void
}

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_26__*, i32, i8*) #1

declare dso_local i32 @ngx_stream_proxy_finalize(%struct.TYPE_32__*, i32) #1

declare dso_local %struct.TYPE_33__* @ngx_stream_get_module_srv_conf(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @ngx_stream_top_filter(%struct.TYPE_32__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @ngx_chain_update_chains(i32, i32*, %struct.TYPE_35__**, %struct.TYPE_35__**, i64) #1

declare dso_local i32 @ngx_time(...) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_27__*, i64) #1

declare dso_local %struct.TYPE_35__* @ngx_chain_get_free_buf(i32, i32*) #1

declare dso_local i64 @ngx_stream_proxy_test_finalize(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
