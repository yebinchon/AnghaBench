; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_core_server.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_core_module.c_ngx_http_core_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_31__*, %struct.TYPE_24__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__**, %struct.TYPE_29__**, i8** }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__** }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i8* (%struct.TYPE_21__*)*, i8* (%struct.TYPE_21__*)* }
%struct.sockaddr_in = type { %struct.TYPE_25__, i8*, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32, %struct.sockaddr*, %struct.TYPE_26__, i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_26__ = type { i32, i32* }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_max_module = common dso_local global i32 0, align 4
@NGX_HTTP_MODULE = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@NGX_HTTP_SRV_CONF = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@NGX_LISTEN_BACKLOG = common dso_local global i32 0, align 4
@NGX_INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_21__*, i32*, i8*)* @ngx_http_core_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_core_server(%struct.TYPE_21__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_21__, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.sockaddr_in*, align 8
  %16 = alloca %struct.TYPE_31__*, align 8
  %17 = alloca %struct.TYPE_31__*, align 8
  %18 = alloca %struct.TYPE_28__, align 8
  %19 = alloca %struct.TYPE_29__*, align 8
  %20 = alloca %struct.TYPE_29__**, align 8
  %21 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @ngx_pcalloc(i32 %24, i32 24)
  %26 = bitcast i8* %25 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %26, %struct.TYPE_31__** %16, align 8
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %28 = icmp eq %struct.TYPE_31__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %30, i8** %4, align 8
  br label %298

31:                                               ; preds = %3
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %33, align 8
  store %struct.TYPE_31__* %34, %struct.TYPE_31__** %17, align 8
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %36, align 8
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 0
  store %struct.TYPE_30__** %37, %struct.TYPE_30__*** %39, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ngx_http_max_module, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 8, %44
  %46 = trunc i64 %45 to i32
  %47 = call i8* @ngx_pcalloc(i32 %42, i32 %46)
  %48 = bitcast i8* %47 to %struct.TYPE_29__**
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 1
  store %struct.TYPE_29__** %48, %struct.TYPE_29__*** %50, align 8
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %52, align 8
  %54 = icmp eq %struct.TYPE_29__** %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %31
  %56 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %56, i8** %4, align 8
  br label %298

57:                                               ; preds = %31
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ngx_http_max_module, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 8, %62
  %64 = trunc i64 %63 to i32
  %65 = call i8* @ngx_pcalloc(i32 %60, i32 %64)
  %66 = bitcast i8* %65 to i8**
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 2
  store i8** %66, i8*** %68, align 8
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 2
  %71 = load i8**, i8*** %70, align 8
  %72 = icmp eq i8** %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %57
  %74 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %74, i8** %4, align 8
  br label %298

75:                                               ; preds = %57
  store i64 0, i64* %12, align 8
  br label %76

76:                                               ; preds = %174, %75
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %81, i64 %82
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %83, align 8
  %85 = icmp ne %struct.TYPE_23__* %84, null
  br i1 %85, label %86, label %177

86:                                               ; preds = %76
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %91, i64 %92
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @NGX_HTTP_MODULE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  br label %174

100:                                              ; preds = %86
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %104, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %105, i64 %106
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %109, align 8
  store %struct.TYPE_27__* %110, %struct.TYPE_27__** %14, align 8
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 1
  %113 = load i8* (%struct.TYPE_21__*)*, i8* (%struct.TYPE_21__*)** %112, align 8
  %114 = icmp ne i8* (%struct.TYPE_21__*)* %113, null
  br i1 %114, label %115, label %142

115:                                              ; preds = %100
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 1
  %118 = load i8* (%struct.TYPE_21__*)*, i8* (%struct.TYPE_21__*)** %117, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = call i8* %118(%struct.TYPE_21__* %119)
  store i8* %120, i8** %9, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %124, i8** %4, align 8
  br label %298

125:                                              ; preds = %115
  %126 = load i8*, i8** %9, align 8
  %127 = bitcast i8* %126 to %struct.TYPE_29__*
  %128 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %129, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %134, align 8
  %136 = load i64, i64* %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %135, i64 %136
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %130, i64 %140
  store %struct.TYPE_29__* %127, %struct.TYPE_29__** %141, align 8
  br label %142

142:                                              ; preds = %125, %100
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 0
  %145 = load i8* (%struct.TYPE_21__*)*, i8* (%struct.TYPE_21__*)** %144, align 8
  %146 = icmp ne i8* (%struct.TYPE_21__*)* %145, null
  br i1 %146, label %147, label %173

147:                                              ; preds = %142
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = load i8* (%struct.TYPE_21__*)*, i8* (%struct.TYPE_21__*)** %149, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %152 = call i8* %150(%struct.TYPE_21__* %151)
  store i8* %152, i8** %9, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %156, i8** %4, align 8
  br label %298

157:                                              ; preds = %147
  %158 = load i8*, i8** %9, align 8
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 2
  %161 = load i8**, i8*** %160, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %165, align 8
  %167 = load i64, i64* %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %166, i64 %167
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i8*, i8** %161, i64 %171
  store i8* %158, i8** %172, align 8
  br label %173

173:                                              ; preds = %157, %142
  br label %174

174:                                              ; preds = %173, %99
  %175 = load i64, i64* %12, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %12, align 8
  br label %76

177:                                              ; preds = %76
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %179, align 8
  %181 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @ngx_http_core_module, i32 0, i32 0), align 8
  %182 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %180, i64 %181
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %182, align 8
  store %struct.TYPE_29__* %183, %struct.TYPE_29__** %19, align 8
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 1
  store %struct.TYPE_31__* %184, %struct.TYPE_31__** %186, align 8
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %188, align 8
  %190 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @ngx_http_core_module, i32 0, i32 0), align 8
  %191 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %189, i64 %190
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %191, align 8
  store %struct.TYPE_30__* %192, %struct.TYPE_30__** %21, align 8
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %193, i32 0, i32 0
  %195 = call %struct.TYPE_29__** @ngx_array_push(i32* %194)
  store %struct.TYPE_29__** %195, %struct.TYPE_29__*** %20, align 8
  %196 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %20, align 8
  %197 = icmp eq %struct.TYPE_29__** %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %177
  %199 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %199, i8** %4, align 8
  br label %298

200:                                              ; preds = %177
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %202 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %20, align 8
  store %struct.TYPE_29__* %201, %struct.TYPE_29__** %202, align 8
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %204 = bitcast %struct.TYPE_21__* %13 to i8*
  %205 = bitcast %struct.TYPE_21__* %203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 24, i1 false)
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 2
  store %struct.TYPE_31__* %206, %struct.TYPE_31__** %208, align 8
  %209 = load i32, i32* @NGX_HTTP_SRV_CONF, align 4
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %213 = call i8* @ngx_conf_parse(%struct.TYPE_21__* %212, i32* null)
  store i8* %213, i8** %8, align 8
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %215 = bitcast %struct.TYPE_21__* %214 to i8*
  %216 = bitcast %struct.TYPE_21__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %215, i8* align 8 %216, i64 24, i1 false)
  %217 = load i8*, i8** %8, align 8
  %218 = load i8*, i8** @NGX_CONF_OK, align 8
  %219 = icmp eq i8* %217, %218
  br i1 %219, label %220, label %296

220:                                              ; preds = %200
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %296, label %225

225:                                              ; preds = %220
  %226 = call i32 @ngx_memzero(%struct.TYPE_28__* %18, i32 56)
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i8* @ngx_pcalloc(i32 %229, i32 24)
  %231 = bitcast i8* %230 to i32*
  store i32* %231, i32** %11, align 8
  %232 = load i32*, i32** %11, align 8
  %233 = icmp eq i32* %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %225
  %235 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %235, i8** %4, align 8
  br label %298

236:                                              ; preds = %225
  %237 = load i32*, i32** %11, align 8
  %238 = bitcast i32* %237 to %struct.sockaddr*
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 6
  store %struct.sockaddr* %238, %struct.sockaddr** %239, align 8
  %240 = load i32*, i32** %11, align 8
  %241 = bitcast i32* %240 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %241, %struct.sockaddr_in** %15, align 8
  %242 = load i32, i32* @AF_INET, align 4
  %243 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %244 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 8
  %245 = call i64 (...) @getuid()
  %246 = icmp eq i64 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i32 80, i32 8000
  %249 = call i8* @htons(i32 %248)
  %250 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %251 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %250, i32 0, i32 1
  store i8* %249, i8** %251, align 8
  %252 = load i32, i32* @INADDR_ANY, align 4
  %253 = load %struct.sockaddr_in*, %struct.sockaddr_in** %15, align 8
  %254 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %254, i32 0, i32 0
  store i32 %252, i32* %255, align 8
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 0
  store i32 24, i32* %256, align 8
  %257 = load i32, i32* @NGX_LISTEN_BACKLOG, align 4
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 8
  store i32 %257, i32* %258, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 1
  store i32 -1, i32* %259, align 4
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 2
  store i32 -1, i32* %260, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 5
  store i32 1, i32* %261, align 4
  %262 = load i32, i32* @NGX_INET_ADDRSTRLEN, align 4
  %263 = sext i32 %262 to i64
  %264 = add i64 %263, 7
  %265 = sub i64 %264, 1
  store i64 %265, i64* %10, align 8
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i64, i64* %10, align 8
  %270 = call i32* @ngx_pnalloc(i32 %268, i64 %269)
  store i32* %270, i32** %11, align 8
  %271 = load i32*, i32** %11, align 8
  %272 = icmp eq i32* %271, null
  br i1 %272, label %273, label %275

273:                                              ; preds = %236
  %274 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %274, i8** %4, align 8
  br label %298

275:                                              ; preds = %236
  %276 = load i32*, i32** %11, align 8
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 7
  %278 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %277, i32 0, i32 1
  store i32* %276, i32** %278, align 8
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 6
  %280 = load %struct.sockaddr*, %struct.sockaddr** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32*, i32** %11, align 8
  %284 = load i64, i64* %10, align 8
  %285 = call i32 @ngx_sock_ntop(%struct.sockaddr* %280, i32 %282, i32* %283, i64 %284, i32 1)
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 7
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %290 = call i64 @ngx_http_add_listen(%struct.TYPE_21__* %288, %struct.TYPE_29__* %289, %struct.TYPE_28__* %18)
  %291 = load i64, i64* @NGX_OK, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %275
  %294 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %294, i8** %4, align 8
  br label %298

295:                                              ; preds = %275
  br label %296

296:                                              ; preds = %295, %220, %200
  %297 = load i8*, i8** %8, align 8
  store i8* %297, i8** %4, align 8
  br label %298

298:                                              ; preds = %296, %293, %273, %234, %198, %155, %123, %73, %55, %29
  %299 = load i8*, i8** %4, align 8
  ret i8* %299
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_29__** @ngx_array_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_28__*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_sock_ntop(%struct.sockaddr*, i32, i32*, i64, i32) #1

declare dso_local i64 @ngx_http_add_listen(%struct.TYPE_21__*, %struct.TYPE_29__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
