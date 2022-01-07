; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail.c_ngx_mail_block.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail.c_ngx_mail_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_22__*, i32, i64, i32 }
%struct.TYPE_29__ = type { i32**, %struct.TYPE_28__** }
%struct.TYPE_28__ = type { %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i64, i32* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_27__** }
%struct.TYPE_27__ = type { %struct.TYPE_29__* }
%struct.TYPE_22__ = type { %struct.TYPE_23__** }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i8* (%struct.TYPE_30__*, %struct.TYPE_28__*)*, i8* (%struct.TYPE_30__*, i32*, i32*)*, i32* (%struct.TYPE_30__*)*, %struct.TYPE_28__* (%struct.TYPE_30__*)* }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_MAIL_MODULE = common dso_local global i64 0, align 8
@ngx_mail_max_module = common dso_local global i32 0, align 4
@NGX_MAIL_MAIN_CONF = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_mail_core_module = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_30__*, i32*, i8*)* @ngx_mail_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_mail_block(%struct.TYPE_30__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_30__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca %struct.TYPE_27__**, align 8
  %19 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_29__**
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %23 = icmp ne %struct.TYPE_29__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %389

25:                                               ; preds = %3
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @ngx_pcalloc(i32 %28, i32 16)
  %30 = bitcast i8* %29 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %30, %struct.TYPE_29__** %17, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %32 = icmp eq %struct.TYPE_29__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %34, i8** %4, align 8
  br label %389

35:                                               ; preds = %25
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_29__**
  store %struct.TYPE_29__* %36, %struct.TYPE_29__** %38, align 8
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %42 = load i64, i64* @NGX_MAIL_MODULE, align 8
  %43 = call i32 @ngx_count_modules(%struct.TYPE_22__* %41, i64 %42)
  store i32 %43, i32* @ngx_mail_max_module, align 4
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ngx_mail_max_module, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 8, %48
  %50 = trunc i64 %49 to i32
  %51 = call i8* @ngx_pcalloc(i32 %46, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_28__**
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 1
  store %struct.TYPE_28__** %52, %struct.TYPE_28__*** %54, align 8
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %56, align 8
  %58 = icmp eq %struct.TYPE_28__** %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %35
  %60 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %60, i8** %4, align 8
  br label %389

61:                                               ; preds = %35
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ngx_mail_max_module, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 8, %66
  %68 = trunc i64 %67 to i32
  %69 = call i8* @ngx_pcalloc(i32 %64, i32 %68)
  %70 = bitcast i8* %69 to i32**
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 0
  store i32** %70, i32*** %72, align 8
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = icmp eq i32** %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %61
  %78 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %78, i8** %4, align 8
  br label %389

79:                                               ; preds = %61
  store i64 0, i64* %10, align 8
  br label %80

80:                                               ; preds = %177, %79
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %85, i64 %86
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  %89 = icmp ne %struct.TYPE_23__* %88, null
  br i1 %89, label %90, label %180

90:                                               ; preds = %80
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %95, i64 %96
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NGX_MAIL_MODULE, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %177

104:                                              ; preds = %90
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %109, i64 %110
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %113, align 8
  store %struct.TYPE_26__* %114, %struct.TYPE_26__** %16, align 8
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %118, align 8
  %120 = load i64, i64* %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %119, i64 %120
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %11, align 8
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_28__* (%struct.TYPE_30__*)*, %struct.TYPE_28__* (%struct.TYPE_30__*)** %126, align 8
  %128 = icmp ne %struct.TYPE_28__* (%struct.TYPE_30__*)* %127, null
  br i1 %128, label %129, label %150

129:                                              ; preds = %104
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_28__* (%struct.TYPE_30__*)*, %struct.TYPE_28__* (%struct.TYPE_30__*)** %131, align 8
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %134 = call %struct.TYPE_28__* %132(%struct.TYPE_30__* %133)
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %136, align 8
  %138 = load i64, i64* %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %137, i64 %138
  store %struct.TYPE_28__* %134, %struct.TYPE_28__** %139, align 8
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %141, align 8
  %143 = load i64, i64* %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %142, i64 %143
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %144, align 8
  %146 = icmp eq %struct.TYPE_28__* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %129
  %148 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %148, i8** %4, align 8
  br label %389

149:                                              ; preds = %129
  br label %150

150:                                              ; preds = %149, %104
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 2
  %153 = load i32* (%struct.TYPE_30__*)*, i32* (%struct.TYPE_30__*)** %152, align 8
  %154 = icmp ne i32* (%struct.TYPE_30__*)* %153, null
  br i1 %154, label %155, label %176

155:                                              ; preds = %150
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 2
  %158 = load i32* (%struct.TYPE_30__*)*, i32* (%struct.TYPE_30__*)** %157, align 8
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %160 = call i32* %158(%struct.TYPE_30__* %159)
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 0
  %163 = load i32**, i32*** %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = getelementptr inbounds i32*, i32** %163, i64 %164
  store i32* %160, i32** %165, align 8
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 0
  %168 = load i32**, i32*** %167, align 8
  %169 = load i64, i64* %11, align 8
  %170 = getelementptr inbounds i32*, i32** %168, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %155
  %174 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %174, i8** %4, align 8
  br label %389

175:                                              ; preds = %155
  br label %176

176:                                              ; preds = %175, %150
  br label %177

177:                                              ; preds = %176, %103
  %178 = load i64, i64* %10, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %10, align 8
  br label %80

180:                                              ; preds = %80
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %182 = bitcast %struct.TYPE_30__* %13 to i8*
  %183 = bitcast %struct.TYPE_30__* %181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %182, i8* align 8 %183, i64 48, i1 false)
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %185 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 1
  store %struct.TYPE_29__* %184, %struct.TYPE_29__** %186, align 8
  %187 = load i64, i64* @NGX_MAIL_MODULE, align 8
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 4
  store i64 %187, i64* %189, align 8
  %190 = load i32, i32* @NGX_MAIL_MAIN_CONF, align 4
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 8
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %194 = call i8* @ngx_conf_parse(%struct.TYPE_30__* %193, i32* null)
  store i8* %194, i8** %8, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = load i8*, i8** @NGX_CONF_OK, align 8
  %197 = icmp ne i8* %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %180
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %200 = bitcast %struct.TYPE_30__* %199 to i8*
  %201 = bitcast %struct.TYPE_30__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %201, i64 48, i1 false)
  %202 = load i8*, i8** %8, align 8
  store i8* %202, i8** %4, align 8
  br label %389

203:                                              ; preds = %180
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %205, align 8
  %207 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @ngx_mail_core_module, i32 0, i32 0), align 8
  %208 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %206, i64 %207
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %208, align 8
  store %struct.TYPE_28__* %209, %struct.TYPE_28__** %19, align 8
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %212, align 8
  store %struct.TYPE_27__** %213, %struct.TYPE_27__*** %18, align 8
  store i64 0, i64* %10, align 8
  br label %214

214:                                              ; preds = %345, %203
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %218, align 8
  %220 = load i64, i64* %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %219, i64 %220
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %221, align 8
  %223 = icmp ne %struct.TYPE_23__* %222, null
  br i1 %223, label %224, label %348

224:                                              ; preds = %214
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %228, align 8
  %230 = load i64, i64* %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %229, i64 %230
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @NGX_MAIL_MODULE, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %224
  br label %345

238:                                              ; preds = %224
  %239 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %242, align 8
  %244 = load i64, i64* %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %243, i64 %244
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %247, align 8
  store %struct.TYPE_26__* %248, %struct.TYPE_26__** %16, align 8
  %249 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %252, align 8
  %254 = load i64, i64* %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %253, i64 %254
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %11, align 8
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %260 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %260, i32 0, i32 1
  store %struct.TYPE_29__* %259, %struct.TYPE_29__** %261, align 8
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 0
  %264 = load i8* (%struct.TYPE_30__*, %struct.TYPE_28__*)*, i8* (%struct.TYPE_30__*, %struct.TYPE_28__*)** %263, align 8
  %265 = icmp ne i8* (%struct.TYPE_30__*, %struct.TYPE_28__*)* %264, null
  br i1 %265, label %266, label %287

266:                                              ; preds = %238
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %267, i32 0, i32 0
  %269 = load i8* (%struct.TYPE_30__*, %struct.TYPE_28__*)*, i8* (%struct.TYPE_30__*, %struct.TYPE_28__*)** %268, align 8
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %271 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %272 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %272, align 8
  %274 = load i64, i64* %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %273, i64 %274
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %275, align 8
  %277 = call i8* %269(%struct.TYPE_30__* %270, %struct.TYPE_28__* %276)
  store i8* %277, i8** %8, align 8
  %278 = load i8*, i8** %8, align 8
  %279 = load i8*, i8** @NGX_CONF_OK, align 8
  %280 = icmp ne i8* %278, %279
  br i1 %280, label %281, label %286

281:                                              ; preds = %266
  %282 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %283 = bitcast %struct.TYPE_30__* %282 to i8*
  %284 = bitcast %struct.TYPE_30__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %283, i8* align 8 %284, i64 48, i1 false)
  %285 = load i8*, i8** %8, align 8
  store i8* %285, i8** %4, align 8
  br label %389

286:                                              ; preds = %266
  br label %287

287:                                              ; preds = %286, %238
  store i64 0, i64* %12, align 8
  br label %288

288:                                              ; preds = %341, %287
  %289 = load i64, i64* %12, align 8
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %291 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp ult i64 %289, %293
  br i1 %294, label %295, label %344

295:                                              ; preds = %288
  %296 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %18, align 8
  %297 = load i64, i64* %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %296, i64 %297
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %300, align 8
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %302, i32 0, i32 1
  store %struct.TYPE_29__* %301, %struct.TYPE_29__** %303, align 8
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 1
  %306 = load i8* (%struct.TYPE_30__*, i32*, i32*)*, i8* (%struct.TYPE_30__*, i32*, i32*)** %305, align 8
  %307 = icmp ne i8* (%struct.TYPE_30__*, i32*, i32*)* %306, null
  br i1 %307, label %308, label %340

308:                                              ; preds = %295
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 1
  %311 = load i8* (%struct.TYPE_30__*, i32*, i32*)*, i8* (%struct.TYPE_30__*, i32*, i32*)** %310, align 8
  %312 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %313 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %314 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %313, i32 0, i32 0
  %315 = load i32**, i32*** %314, align 8
  %316 = load i64, i64* %11, align 8
  %317 = getelementptr inbounds i32*, i32** %315, i64 %316
  %318 = load i32*, i32** %317, align 8
  %319 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %18, align 8
  %320 = load i64, i64* %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %319, i64 %320
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_29__*, %struct.TYPE_29__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %324, i32 0, i32 0
  %326 = load i32**, i32*** %325, align 8
  %327 = load i64, i64* %11, align 8
  %328 = getelementptr inbounds i32*, i32** %326, i64 %327
  %329 = load i32*, i32** %328, align 8
  %330 = call i8* %311(%struct.TYPE_30__* %312, i32* %318, i32* %329)
  store i8* %330, i8** %8, align 8
  %331 = load i8*, i8** %8, align 8
  %332 = load i8*, i8** @NGX_CONF_OK, align 8
  %333 = icmp ne i8* %331, %332
  br i1 %333, label %334, label %339

334:                                              ; preds = %308
  %335 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %336 = bitcast %struct.TYPE_30__* %335 to i8*
  %337 = bitcast %struct.TYPE_30__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %336, i8* align 8 %337, i64 48, i1 false)
  %338 = load i8*, i8** %8, align 8
  store i8* %338, i8** %4, align 8
  br label %389

339:                                              ; preds = %308
  br label %340

340:                                              ; preds = %339, %295
  br label %341

341:                                              ; preds = %340
  %342 = load i64, i64* %12, align 8
  %343 = add i64 %342, 1
  store i64 %343, i64* %12, align 8
  br label %288

344:                                              ; preds = %288
  br label %345

345:                                              ; preds = %344, %237
  %346 = load i64, i64* %10, align 8
  %347 = add i64 %346, 1
  store i64 %347, i64* %10, align 8
  br label %214

348:                                              ; preds = %214
  %349 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %350 = bitcast %struct.TYPE_30__* %349 to i8*
  %351 = bitcast %struct.TYPE_30__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %350, i8* align 8 %351, i64 48, i1 false)
  %352 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = call i64 @ngx_array_init(i32* %14, i32 %354, i32 4, i32 4)
  %356 = load i64, i64* @NGX_OK, align 8
  %357 = icmp ne i64 %355, %356
  br i1 %357, label %358, label %360

358:                                              ; preds = %348
  %359 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %359, i8** %4, align 8
  br label %389

360:                                              ; preds = %348
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %362, i32 0, i32 1
  %364 = load i32*, i32** %363, align 8
  store i32* %364, i32** %15, align 8
  store i64 0, i64* %9, align 8
  br label %365

365:                                              ; preds = %383, %360
  %366 = load i64, i64* %9, align 8
  %367 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %368 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = icmp ult i64 %366, %370
  br i1 %371, label %372, label %386

372:                                              ; preds = %365
  %373 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %374 = load i32*, i32** %15, align 8
  %375 = load i64, i64* %9, align 8
  %376 = getelementptr inbounds i32, i32* %374, i64 %375
  %377 = call i64 @ngx_mail_add_ports(%struct.TYPE_30__* %373, i32* %14, i32* %376)
  %378 = load i64, i64* @NGX_OK, align 8
  %379 = icmp ne i64 %377, %378
  br i1 %379, label %380, label %382

380:                                              ; preds = %372
  %381 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %381, i8** %4, align 8
  br label %389

382:                                              ; preds = %372
  br label %383

383:                                              ; preds = %382
  %384 = load i64, i64* %9, align 8
  %385 = add i64 %384, 1
  store i64 %385, i64* %9, align 8
  br label %365

386:                                              ; preds = %365
  %387 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %388 = call i8* @ngx_mail_optimize_servers(%struct.TYPE_30__* %387, i32* %14)
  store i8* %388, i8** %4, align 8
  br label %389

389:                                              ; preds = %386, %380, %358, %334, %281, %198, %173, %147, %77, %59, %33, %24
  %390 = load i8*, i8** %4, align 8
  ret i8* %390
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_count_modules(%struct.TYPE_22__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_30__*, i32*) #1

declare dso_local i64 @ngx_array_init(i32*, i32, i32, i32) #1

declare dso_local i64 @ngx_mail_add_ports(%struct.TYPE_30__*, i32*, i32*) #1

declare dso_local i8* @ngx_mail_optimize_servers(%struct.TYPE_30__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
