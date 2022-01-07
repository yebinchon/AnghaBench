; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_parse_read_meta_message.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_meta_server_message.c_ngx_http_tfs_parse_read_meta_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, %struct.TYPE_28__, i32, i32, %struct.TYPE_27__, i32, i64, %struct.TYPE_31__*, i64 }
%struct.TYPE_28__ = type { i32, i64, i64, i64, %struct.TYPE_30__*, i64, i32 }
%struct.TYPE_30__ = type { i64, i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i64, i32, i32 }
%struct.TYPE_27__ = type { i64, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_31__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_32__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"read file(meta server)\00", align 1
@NGX_HTTP_TFS_ACTION_WRITE_FILE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_YES = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_ACTION_READ_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_NO = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_INIT_FILE_HOLE_COUNT = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"find file hole, offset: %uL, length: %uL\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"still_have is %d, frag count is %d\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_29__*)* @ngx_http_tfs_parse_read_meta_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_tfs_parse_read_meta_message(%struct.TYPE_29__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_31__*, align 8
  %18 = alloca %struct.TYPE_32__*, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %12, align 8
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 7
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  store %struct.TYPE_31__* %26, %struct.TYPE_31__** %17, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %39 [
    i32 128, label %31
  ]

31:                                               ; preds = %1
  %32 = call i32 @ngx_str_set(i32* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @ngx_http_tfs_status_message(%struct.TYPE_23__* %34, i32* %10, i32 %37)
  store i64 %38, i64* %2, align 8
  br label %517

39:                                               ; preds = %1
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = bitcast i32* %43 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %44, %struct.TYPE_32__** %18, align 8
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 2147483647
  store i32 %49, i32* %7, align 4
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 6
  store i32 %53, i32* %56, align 8
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NGX_HTTP_TFS_ACTION_WRITE_FILE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %39
  %65 = load i64, i64* @NGX_OK, align 8
  store i64 %65, i64* %2, align 8
  br label %517

66:                                               ; preds = %39
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %70, i64* %2, align 8
  br label %517

71:                                               ; preds = %66
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %74, align 8
  %76 = icmp eq %struct.TYPE_30__* %75, null
  br i1 %76, label %77, label %100

77:                                               ; preds = %71
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 40, %82
  %84 = trunc i64 %83 to i32
  %85 = call %struct.TYPE_30__* @ngx_pcalloc(i32 %80, i32 %84)
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 4
  store %struct.TYPE_30__* %85, %struct.TYPE_30__** %88, align 8
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %91, align 8
  %93 = icmp eq %struct.TYPE_30__* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %77
  %95 = load i64, i64* @NGX_ERROR, align 8
  store i64 %95, i64* %2, align 8
  br label %517

96:                                               ; preds = %77
  %97 = load i64, i64* @NGX_HTTP_TFS_YES, align 8
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 6
  store i64 %97, i64* %99, align 8
  br label %148

100:                                              ; preds = %71
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %101, %105
  br i1 %106, label %107, label %138

107:                                              ; preds = %100
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %113, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = mul i64 40, %119
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 40, %123
  %125 = trunc i64 %124 to i32
  %126 = call %struct.TYPE_30__* @ngx_http_tfs_prealloc(i32 %110, %struct.TYPE_30__* %114, i32 %121, i32 %125)
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 4
  store %struct.TYPE_30__* %126, %struct.TYPE_30__** %129, align 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %132, align 8
  %134 = icmp eq %struct.TYPE_30__* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %107
  %136 = load i64, i64* @NGX_ERROR, align 8
  store i64 %136, i64* %2, align 8
  br label %517

137:                                              ; preds = %107
  br label %138

138:                                              ; preds = %137, %100
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 40, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @ngx_memzero(%struct.TYPE_30__* %142, i32 %146)
  br label %148

148:                                              ; preds = %138, %96
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  br label %162

158:                                              ; preds = %148
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  br label %162

162:                                              ; preds = %158, %157
  %163 = phi i64 [ %155, %157 ], [ %161, %158 ]
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 1
  store i64 %163, i64* %166, align 8
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 5
  store i64 0, i64* %169, align 8
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 16
  store i32* %174, i32** %4, align 8
  %175 = load i32*, i32** %4, align 8
  %176 = bitcast i32* %175 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %176, %struct.TYPE_20__** %19, align 8
  store i32 0, i32* %11, align 4
  br label %177

177:                                              ; preds = %241, %162
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %246

181:                                              ; preds = %177
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 4
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %187, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 3
  store i32 %184, i32* %193, align 4
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 2
  store i32 %196, i32* %205, align 8
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 0
  store i64 %208, i64* %217, align 8
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 4
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 1
  store i64 %220, i64* %229, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 4
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %235, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %239, i32 0, i32 0
  store i64 %232, i64* %240, align 8
  br label %241

241:                                              ; preds = %181
  %242 = load i32, i32* %11, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %11, align 4
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 1
  store %struct.TYPE_20__* %245, %struct.TYPE_20__** %19, align 8
  br label %177

246:                                              ; preds = %177
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @NGX_HTTP_TFS_ACTION_READ_FILE, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %505

254:                                              ; preds = %246
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 4
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %258, i64 0
  store %struct.TYPE_30__* %259, %struct.TYPE_30__** %13, align 8
  %260 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %260, i32 0, i32 6
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %324

264:                                              ; preds = %254
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %265, i32 0, i32 4
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = call i64 @ngx_max(i32 %268, i64 %272)
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 1
  store i64 %273, i64* %275, align 8
  %276 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp sgt i64 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %264
  %282 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = srem i64 %288, %285
  store i64 %289, i64* %287, align 8
  br label %290

290:                                              ; preds = %281, %264
  %291 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = sub nsw i64 %294, %297
  %299 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %300 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %299, i32 0, i32 0
  store i64 %298, i64* %300, align 8
  %301 = load i64, i64* @NGX_HTTP_TFS_NO, align 8
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i32 0, i32 6
  store i64 %301, i64* %303, align 8
  %304 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %304, i32 0, i32 4
  %306 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %323

309:                                              ; preds = %290
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %310, i32 0, i32 3
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @NGX_HTTP_TFS_INIT_FILE_HOLE_COUNT, align 4
  %316 = call i64 @ngx_array_init(i32* %311, i32 %314, i32 %315, i32 16)
  store i64 %316, i64* %9, align 8
  %317 = load i64, i64* %9, align 8
  %318 = load i64, i64* @NGX_ERROR, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %322

320:                                              ; preds = %309
  %321 = load i64, i64* @NGX_ERROR, align 8
  store i64 %321, i64* %2, align 8
  br label %517

322:                                              ; preds = %309
  br label %323

323:                                              ; preds = %322, %290
  br label %324

324:                                              ; preds = %323, %254
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %381, label %330

330:                                              ; preds = %324
  %331 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %332, i32 0, i32 4
  %334 = load %struct.TYPE_30__*, %struct.TYPE_30__** %333, align 8
  %335 = load i32, i32* %7, align 4
  %336 = sub nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %334, i64 %337
  store %struct.TYPE_30__* %338, %struct.TYPE_30__** %14, align 8
  %339 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i32 0, i32 3
  %346 = load i64, i64* %345, align 8
  %347 = add nsw i64 %342, %346
  store i64 %347, i64* %8, align 8
  %348 = load i64, i64* %8, align 8
  %349 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %350 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %354 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = add nsw i64 %352, %355
  %357 = icmp sgt i64 %348, %356
  br i1 %357, label %358, label %377

358:                                              ; preds = %330
  %359 = load i64, i64* %8, align 8
  %360 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %361 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %364, i32 0, i32 1
  %366 = load i64, i64* %365, align 8
  %367 = add nsw i64 %363, %366
  %368 = sub nsw i64 %359, %367
  %369 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %370 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = call i8* @ngx_min(i64 %368, i64 %372)
  %374 = ptrtoint i8* %373 to i64
  %375 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %376 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %375, i32 0, i32 0
  store i64 %374, i64* %376, align 8
  br label %380

377:                                              ; preds = %330
  %378 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %379 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %378, i32 0, i32 0
  store i64 0, i64* %379, align 8
  br label %380

380:                                              ; preds = %377, %358
  br label %381

381:                                              ; preds = %380, %324
  %382 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %382, i32 0, i32 4
  %384 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %504

387:                                              ; preds = %381
  %388 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %389, i32 0, i32 4
  %391 = load %struct.TYPE_30__*, %struct.TYPE_30__** %390, align 8
  store %struct.TYPE_30__* %391, %struct.TYPE_30__** %15, align 8
  store i32 0, i32* %11, align 4
  br label %392

392:                                              ; preds = %497, %387
  %393 = load i32, i32* %11, align 4
  %394 = load i32, i32* %7, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %502

396:                                              ; preds = %392
  %397 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %398, i32 0, i32 2
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %402 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = icmp slt i64 %400, %404
  br i1 %405, label %406, label %472

406:                                              ; preds = %396
  %407 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %408 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %408, i32 0, i32 3
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %412 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %411, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 0
  %414 = load i64, i64* %413, align 8
  %415 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = sub nsw i64 %414, %418
  %420 = call i8* @ngx_min(i64 %410, i64 %419)
  %421 = ptrtoint i8* %420 to i32
  store i32 %421, i32* %5, align 4
  %422 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %422, i32 0, i32 3
  %424 = call %struct.TYPE_22__* @ngx_array_push(i32* %423)
  store %struct.TYPE_22__* %424, %struct.TYPE_22__** %16, align 8
  %425 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %426 = icmp eq %struct.TYPE_22__* %425, null
  br i1 %426, label %427, label %429

427:                                              ; preds = %406
  %428 = load i64, i64* @NGX_ERROR, align 8
  store i64 %428, i64* %2, align 8
  br label %517

429:                                              ; preds = %406
  %430 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %431 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %431, i32 0, i32 2
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %434, i32 0, i32 0
  store i64 %433, i64* %435, align 8
  %436 = load i32, i32* %5, align 4
  %437 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %438 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %437, i32 0, i32 1
  store i32 %436, i32* %438, align 8
  %439 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %440 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %444 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %447 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 8
  %449 = call i32 @ngx_log_error(i32 %439, i32 %442, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %445, i32 %448)
  %450 = load i32, i32* %5, align 4
  %451 = sext i32 %450 to i64
  %452 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %453, i32 0, i32 2
  %455 = load i64, i64* %454, align 8
  %456 = add nsw i64 %455, %451
  store i64 %456, i64* %454, align 8
  %457 = load i32, i32* %5, align 4
  %458 = sext i32 %457 to i64
  %459 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %460, i32 0, i32 3
  %462 = load i64, i64* %461, align 8
  %463 = sub nsw i64 %462, %458
  store i64 %463, i64* %461, align 8
  %464 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %465, i32 0, i32 3
  %467 = load i64, i64* %466, align 8
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %429
  %470 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %470, i64* %2, align 8
  br label %517

471:                                              ; preds = %429
  br label %472

472:                                              ; preds = %471, %396
  %473 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %474 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %473, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %477 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %477, i32 0, i32 2
  %479 = load i64, i64* %478, align 8
  %480 = add nsw i64 %479, %475
  store i64 %480, i64* %478, align 8
  %481 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %482 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %485 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %485, i32 0, i32 3
  %487 = load i64, i64* %486, align 8
  %488 = sub nsw i64 %487, %483
  store i64 %488, i64* %486, align 8
  %489 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %490, i32 0, i32 3
  %492 = load i64, i64* %491, align 8
  %493 = icmp eq i64 %492, 0
  br i1 %493, label %494, label %496

494:                                              ; preds = %472
  %495 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %495, i64* %2, align 8
  br label %517

496:                                              ; preds = %472
  br label %497

497:                                              ; preds = %496
  %498 = load i32, i32* %11, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %11, align 4
  %500 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %501 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %500, i32 1
  store %struct.TYPE_30__* %501, %struct.TYPE_30__** %15, align 8
  br label %392

502:                                              ; preds = %392
  %503 = load i64, i64* @NGX_OK, align 8
  store i64 %503, i64* %2, align 8
  br label %517

504:                                              ; preds = %381
  br label %505

505:                                              ; preds = %504, %246
  %506 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %507 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %508 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %507, i32 0, i32 2
  %509 = load i32, i32* %508, align 8
  %510 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %511 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %510, i32 0, i32 1
  %512 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %511, i32 0, i32 1
  %513 = load i64, i64* %512, align 8
  %514 = load i32, i32* %7, align 4
  %515 = call i32 @ngx_log_error(i32 %506, i32 %509, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %513, i32 %514)
  %516 = load i64, i64* @NGX_OK, align 8
  store i64 %516, i64* %2, align 8
  br label %517

517:                                              ; preds = %505, %502, %494, %469, %427, %320, %135, %94, %69, %64, %31
  %518 = load i64, i64* %2, align 8
  ret i64 %518
}

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i64 @ngx_http_tfs_status_message(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_http_tfs_prealloc(i32, %struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @ngx_max(i32, i64) #1

declare dso_local i64 @ngx_array_init(i32*, i32, i32, i32) #1

declare dso_local i8* @ngx_min(i64, i64) #1

declare dso_local %struct.TYPE_22__* @ngx_array_push(i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
