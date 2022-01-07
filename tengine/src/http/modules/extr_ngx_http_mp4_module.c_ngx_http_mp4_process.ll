; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_process.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_49__ = type { i64, i64, i64, %struct.TYPE_47__, %struct.TYPE_45__, %struct.TYPE_43__, %struct.TYPE_41__, i32, i32, %struct.TYPE_41__, %struct.TYPE_46__, %struct.TYPE_41__, %struct.TYPE_41__, %struct.TYPE_41__*, i32, i32, i32, i32 }
%struct.TYPE_47__ = type { i64, %struct.TYPE_48__* }
%struct.TYPE_48__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_41__* }
%struct.TYPE_45__ = type { i32, %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i64 }
%struct.TYPE_46__ = type { i64, i64 }
%struct.TYPE_41__ = type { i32*, %struct.TYPE_41__* }
%struct.TYPE_50__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mp4 start:%ui, length:%ui\00", align 1
@ngx_http_mp4_module = common dso_local global i32 0, align 4
@ngx_http_mp4_atoms = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"no mp4 trak atoms were found in \22%s\22\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"no mp4 mdat atom was found in \22%s\22\00", align 1
@NGX_HTTP_MP4_CO64_DATA = common dso_local global i64 0, align 8
@NGX_HTTP_MP4_TRAK_ATOM = common dso_local global i64 0, align 8
@NGX_HTTP_MP4_LAST_ATOM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"start time is out mp4 mdat atom in \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"mp4 adjustment:%O\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_49__*)* @ngx_http_mp4_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_mp4_process(%struct.TYPE_49__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_49__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_41__**, align 8
  %11 = alloca %struct.TYPE_48__*, align 8
  %12 = alloca %struct.TYPE_50__*, align 8
  store %struct.TYPE_49__* %0, %struct.TYPE_49__** %3, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %14 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %18, i32 0, i32 17
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %21, i32 0, i32 16
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ngx_log_debug2(i32 %13, i32 %17, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %25, i32 0, i32 15
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ngx_http_mp4_module, align 4
  %29 = call %struct.TYPE_50__* @ngx_http_get_module_loc_conf(i32 %27, i32 %28)
  store %struct.TYPE_50__* %29, %struct.TYPE_50__** %12, align 8
  %30 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %33, i32 0, i32 14
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %36 = load i32, i32* @ngx_http_mp4_atoms, align 4
  %37 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @ngx_http_mp4_read_atom(%struct.TYPE_49__* %35, i32 %36, i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @NGX_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %1
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %2, align 8
  br label %488

46:                                               ; preds = %1
  %47 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i32, i32* @NGX_LOG_ERR, align 4
  %54 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ngx_log_error(i32 %53, i32 %57, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i64, i64* @NGX_ERROR, align 8
  store i64 %64, i64* %2, align 8
  br label %488

65:                                               ; preds = %46
  %66 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load i32, i32* @NGX_LOG_ERR, align 4
  %73 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ngx_log_error(i32 %72, i32 %76, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i64, i64* @NGX_ERROR, align 8
  store i64 %83, i64* %2, align 8
  br label %488

84:                                               ; preds = %65
  %85 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %85, i32 0, i32 13
  store %struct.TYPE_41__** %86, %struct.TYPE_41__*** %10, align 8
  %87 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %87, i32 0, i32 12
  %89 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %93, i32 0, i32 12
  %95 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %10, align 8
  store %struct.TYPE_41__* %94, %struct.TYPE_41__** %95, align 8
  %96 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %96, i32 0, i32 12
  %98 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %97, i32 0, i32 1
  store %struct.TYPE_41__** %98, %struct.TYPE_41__*** %10, align 8
  br label %99

99:                                               ; preds = %92, %84
  %100 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %100, i32 0, i32 11
  %102 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %10, align 8
  store %struct.TYPE_41__* %101, %struct.TYPE_41__** %102, align 8
  %103 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %103, i32 0, i32 11
  %105 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %104, i32 0, i32 1
  store %struct.TYPE_41__** %105, %struct.TYPE_41__*** %10, align 8
  %106 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %106, i32 0, i32 9
  %108 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %131

111:                                              ; preds = %99
  %112 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %112, i32 0, i32 10
  %114 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %116, i32 0, i32 10
  %118 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %115, %119
  %121 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, %120
  store i64 %124, i64* %122, align 8
  %125 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %125, i32 0, i32 9
  %127 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %10, align 8
  store %struct.TYPE_41__* %126, %struct.TYPE_41__** %127, align 8
  %128 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %128, i32 0, i32 9
  %130 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %129, i32 0, i32 1
  store %struct.TYPE_41__** %130, %struct.TYPE_41__*** %10, align 8
  br label %131

131:                                              ; preds = %111, %99
  %132 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %135 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_48__*, %struct.TYPE_48__** %137, align 8
  store %struct.TYPE_48__* %138, %struct.TYPE_48__** %11, align 8
  store i64 0, i64* %8, align 8
  br label %139

139:                                              ; preds = %369, %131
  %140 = load i64, i64* %8, align 8
  %141 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ult i64 %140, %144
  br i1 %145, label %146, label %372

146:                                              ; preds = %139
  %147 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %148 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %149 = load i64, i64* %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %148, i64 %149
  %151 = call i64 @ngx_http_mp4_update_stts_atom(%struct.TYPE_49__* %147, %struct.TYPE_48__* %150)
  %152 = load i64, i64* @NGX_OK, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = load i64, i64* @NGX_ERROR, align 8
  store i64 %155, i64* %2, align 8
  br label %488

156:                                              ; preds = %146
  %157 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %158 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %159 = load i64, i64* %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %158, i64 %159
  %161 = call i64 @ngx_http_mp4_update_stss_atom(%struct.TYPE_49__* %157, %struct.TYPE_48__* %160)
  %162 = load i64, i64* @NGX_OK, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = load i64, i64* @NGX_ERROR, align 8
  store i64 %165, i64* %2, align 8
  br label %488

166:                                              ; preds = %156
  %167 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %168 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %169 = load i64, i64* %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %168, i64 %169
  %171 = call i32 @ngx_http_mp4_update_ctts_atom(%struct.TYPE_49__* %167, %struct.TYPE_48__* %170)
  %172 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %173 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %174 = load i64, i64* %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %173, i64 %174
  %176 = call i64 @ngx_http_mp4_update_stsc_atom(%struct.TYPE_49__* %172, %struct.TYPE_48__* %175)
  %177 = load i64, i64* @NGX_OK, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %166
  %180 = load i64, i64* @NGX_ERROR, align 8
  store i64 %180, i64* %2, align 8
  br label %488

181:                                              ; preds = %166
  %182 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %183 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %184 = load i64, i64* %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %183, i64 %184
  %186 = call i64 @ngx_http_mp4_update_stsz_atom(%struct.TYPE_49__* %182, %struct.TYPE_48__* %185)
  %187 = load i64, i64* @NGX_OK, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  %190 = load i64, i64* @NGX_ERROR, align 8
  store i64 %190, i64* %2, align 8
  br label %488

191:                                              ; preds = %181
  %192 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %193 = load i64, i64* %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %194, i32 0, i32 6
  %196 = load %struct.TYPE_41__*, %struct.TYPE_41__** %195, align 8
  %197 = load i64, i64* @NGX_HTTP_MP4_CO64_DATA, align 8
  %198 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %213

202:                                              ; preds = %191
  %203 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %204 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %205 = load i64, i64* %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %204, i64 %205
  %207 = call i64 @ngx_http_mp4_update_co64_atom(%struct.TYPE_49__* %203, %struct.TYPE_48__* %206)
  %208 = load i64, i64* @NGX_OK, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %202
  %211 = load i64, i64* @NGX_ERROR, align 8
  store i64 %211, i64* %2, align 8
  br label %488

212:                                              ; preds = %202
  br label %224

213:                                              ; preds = %191
  %214 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %215 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %216 = load i64, i64* %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %215, i64 %216
  %218 = call i64 @ngx_http_mp4_update_stco_atom(%struct.TYPE_49__* %214, %struct.TYPE_48__* %217)
  %219 = load i64, i64* @NGX_OK, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %213
  %222 = load i64, i64* @NGX_ERROR, align 8
  store i64 %222, i64* %2, align 8
  br label %488

223:                                              ; preds = %213
  br label %224

224:                                              ; preds = %223, %212
  %225 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %226 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %227 = load i64, i64* %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %226, i64 %227
  %229 = call i32 @ngx_http_mp4_update_stbl_atom(%struct.TYPE_49__* %225, %struct.TYPE_48__* %228)
  %230 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %231 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %232 = load i64, i64* %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %231, i64 %232
  %234 = call i32 @ngx_http_mp4_update_minf_atom(%struct.TYPE_49__* %230, %struct.TYPE_48__* %233)
  %235 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %236 = load i64, i64* %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %241 = load i64, i64* %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, %239
  store i64 %245, i64* %243, align 8
  %246 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %247 = load i64, i64* %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %252 = load i64, i64* %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %251, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %255, %250
  store i64 %256, i64* %254, align 8
  %257 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %258 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %259 = load i64, i64* %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %258, i64 %259
  %261 = call i32 @ngx_http_mp4_update_mdia_atom(%struct.TYPE_49__* %257, %struct.TYPE_48__* %260)
  %262 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %263 = load i64, i64* %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %268 = load i64, i64* %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %267, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = add nsw i64 %271, %266
  store i64 %272, i64* %270, align 8
  %273 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %274 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %275 = load i64, i64* %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %274, i64 %275
  %277 = call i32 @ngx_http_mp4_update_trak_atom(%struct.TYPE_49__* %273, %struct.TYPE_48__* %276)
  %278 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %279 = load i64, i64* %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = add nsw i64 %285, %282
  store i64 %286, i64* %284, align 8
  %287 = load i64, i64* %4, align 8
  %288 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %289 = load i64, i64* %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %288, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %290, i32 0, i32 4
  %292 = load i64, i64* %291, align 8
  %293 = icmp sgt i64 %287, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %224
  %295 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %296 = load i64, i64* %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %295, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %297, i32 0, i32 4
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %4, align 8
  br label %300

300:                                              ; preds = %294, %224
  %301 = load i64, i64* %5, align 8
  %302 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %303 = load i64, i64* %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %302, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %304, i32 0, i32 5
  %306 = load i64, i64* %305, align 8
  %307 = icmp slt i64 %301, %306
  br i1 %307, label %308, label %314

308:                                              ; preds = %300
  %309 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %310 = load i64, i64* %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %311, i32 0, i32 5
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %5, align 8
  br label %314

314:                                              ; preds = %308, %300
  %315 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %316 = load i64, i64* %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %317, i32 0, i32 6
  %319 = load %struct.TYPE_41__*, %struct.TYPE_41__** %318, align 8
  %320 = load i64, i64* @NGX_HTTP_MP4_TRAK_ATOM, align 8
  %321 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %319, i64 %320
  %322 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %10, align 8
  store %struct.TYPE_41__* %321, %struct.TYPE_41__** %322, align 8
  %323 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %324 = load i64, i64* %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %323, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %325, i32 0, i32 6
  %327 = load %struct.TYPE_41__*, %struct.TYPE_41__** %326, align 8
  %328 = load i64, i64* @NGX_HTTP_MP4_TRAK_ATOM, align 8
  %329 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %327, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %329, i32 0, i32 1
  store %struct.TYPE_41__** %330, %struct.TYPE_41__*** %10, align 8
  store i64 0, i64* %9, align 8
  br label %331

331:                                              ; preds = %365, %314
  %332 = load i64, i64* %9, align 8
  %333 = load i64, i64* @NGX_HTTP_MP4_LAST_ATOM, align 8
  %334 = add i64 %333, 1
  %335 = icmp ult i64 %332, %334
  br i1 %335, label %336, label %368

336:                                              ; preds = %331
  %337 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %338 = load i64, i64* %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %337, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %339, i32 0, i32 6
  %341 = load %struct.TYPE_41__*, %struct.TYPE_41__** %340, align 8
  %342 = load i64, i64* %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %341, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = icmp ne i32* %345, null
  br i1 %346, label %347, label %364

347:                                              ; preds = %336
  %348 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %349 = load i64, i64* %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %348, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %350, i32 0, i32 6
  %352 = load %struct.TYPE_41__*, %struct.TYPE_41__** %351, align 8
  %353 = load i64, i64* %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %352, i64 %353
  %355 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %10, align 8
  store %struct.TYPE_41__* %354, %struct.TYPE_41__** %355, align 8
  %356 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %357 = load i64, i64* %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %356, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %358, i32 0, i32 6
  %360 = load %struct.TYPE_41__*, %struct.TYPE_41__** %359, align 8
  %361 = load i64, i64* %9, align 8
  %362 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %360, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %362, i32 0, i32 1
  store %struct.TYPE_41__** %363, %struct.TYPE_41__*** %10, align 8
  br label %364

364:                                              ; preds = %347, %336
  br label %365

365:                                              ; preds = %364
  %366 = load i64, i64* %9, align 8
  %367 = add i64 %366, 1
  store i64 %367, i64* %9, align 8
  br label %331

368:                                              ; preds = %331
  br label %369

369:                                              ; preds = %368
  %370 = load i64, i64* %8, align 8
  %371 = add i64 %370, 1
  store i64 %371, i64* %8, align 8
  br label %139

372:                                              ; preds = %139
  %373 = load i64, i64* %5, align 8
  %374 = load i64, i64* %4, align 8
  %375 = icmp slt i64 %373, %374
  br i1 %375, label %376, label %378

376:                                              ; preds = %372
  %377 = load i64, i64* %4, align 8
  store i64 %377, i64* %5, align 8
  br label %378

378:                                              ; preds = %376, %372
  %379 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = add nsw i64 %381, 8
  store i64 %382, i64* %380, align 8
  %383 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %383, i32 0, i32 8
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = call i32 @ngx_mp4_set_32value(i32 %385, i64 %388)
  %390 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %390, i32 0, i32 8
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @ngx_mp4_set_atom_name(i32 %392, i8 signext 109, i8 signext 111, i8 signext 111, i8 signext 118)
  %394 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %397, i32 0, i32 7
  %399 = load i32, i32* %398, align 8
  %400 = sext i32 %399 to i64
  %401 = add nsw i64 %400, %396
  %402 = trunc i64 %401 to i32
  store i32 %402, i32* %398, align 8
  %403 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %403, i32 0, i32 6
  %405 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %10, align 8
  store %struct.TYPE_41__* %404, %struct.TYPE_41__** %405, align 8
  %406 = load i64, i64* %4, align 8
  %407 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %408 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %407, i32 0, i32 5
  %409 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %408, i32 0, i32 0
  %410 = load %struct.TYPE_42__*, %struct.TYPE_42__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = icmp sgt i64 %406, %412
  br i1 %413, label %414, label %427

414:                                              ; preds = %378
  %415 = load i32, i32* @NGX_LOG_ERR, align 4
  %416 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %416, i32 0, i32 4
  %418 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %420, i32 0, i32 4
  %422 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @ngx_log_error(i32 %415, i32 %419, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %424)
  %426 = load i64, i64* @NGX_ERROR, align 8
  store i64 %426, i64* %2, align 8
  br label %488

427:                                              ; preds = %378
  %428 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %428, i32 0, i32 2
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = add nsw i64 %430, %433
  %435 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %436 = load i64, i64* %4, align 8
  %437 = load i64, i64* %5, align 8
  %438 = call i64 @ngx_http_mp4_update_mdat_atom(%struct.TYPE_49__* %435, i64 %436, i64 %437)
  %439 = add nsw i64 %434, %438
  %440 = load i64, i64* %4, align 8
  %441 = sub nsw i64 %439, %440
  store i64 %441, i64* %6, align 8
  %442 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %443 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %443, i32 0, i32 4
  %445 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = load i64, i64* %6, align 8
  %448 = call i32 @ngx_log_debug1(i32 %442, i32 %446, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %447)
  store i64 0, i64* %8, align 8
  br label %449

449:                                              ; preds = %483, %427
  %450 = load i64, i64* %8, align 8
  %451 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %451, i32 0, i32 3
  %453 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %452, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = icmp ult i64 %450, %454
  br i1 %455, label %456, label %486

456:                                              ; preds = %449
  %457 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %458 = load i64, i64* %8, align 8
  %459 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %457, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %459, i32 0, i32 6
  %461 = load %struct.TYPE_41__*, %struct.TYPE_41__** %460, align 8
  %462 = load i64, i64* @NGX_HTTP_MP4_CO64_DATA, align 8
  %463 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %461, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %463, i32 0, i32 0
  %465 = load i32*, i32** %464, align 8
  %466 = icmp ne i32* %465, null
  br i1 %466, label %467, label %474

467:                                              ; preds = %456
  %468 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %469 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %470 = load i64, i64* %8, align 8
  %471 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %469, i64 %470
  %472 = load i64, i64* %6, align 8
  %473 = call i32 @ngx_http_mp4_adjust_co64_atom(%struct.TYPE_49__* %468, %struct.TYPE_48__* %471, i64 %472)
  br label %482

474:                                              ; preds = %456
  %475 = load %struct.TYPE_49__*, %struct.TYPE_49__** %3, align 8
  %476 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %477 = load i64, i64* %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %476, i64 %477
  %479 = load i64, i64* %6, align 8
  %480 = trunc i64 %479 to i32
  %481 = call i32 @ngx_http_mp4_adjust_stco_atom(%struct.TYPE_49__* %475, %struct.TYPE_48__* %478, i32 %480)
  br label %482

482:                                              ; preds = %474, %467
  br label %483

483:                                              ; preds = %482
  %484 = load i64, i64* %8, align 8
  %485 = add i64 %484, 1
  store i64 %485, i64* %8, align 8
  br label %449

486:                                              ; preds = %449
  %487 = load i64, i64* @NGX_OK, align 8
  store i64 %487, i64* %2, align 8
  br label %488

488:                                              ; preds = %486, %414, %221, %210, %189, %179, %164, %154, %71, %52, %44
  %489 = load i64, i64* %2, align 8
  ret i64 %489
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_50__* @ngx_http_get_module_loc_conf(i32, i32) #1

declare dso_local i64 @ngx_http_mp4_read_atom(%struct.TYPE_49__*, i32, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ngx_http_mp4_update_stts_atom(%struct.TYPE_49__*, %struct.TYPE_48__*) #1

declare dso_local i64 @ngx_http_mp4_update_stss_atom(%struct.TYPE_49__*, %struct.TYPE_48__*) #1

declare dso_local i32 @ngx_http_mp4_update_ctts_atom(%struct.TYPE_49__*, %struct.TYPE_48__*) #1

declare dso_local i64 @ngx_http_mp4_update_stsc_atom(%struct.TYPE_49__*, %struct.TYPE_48__*) #1

declare dso_local i64 @ngx_http_mp4_update_stsz_atom(%struct.TYPE_49__*, %struct.TYPE_48__*) #1

declare dso_local i64 @ngx_http_mp4_update_co64_atom(%struct.TYPE_49__*, %struct.TYPE_48__*) #1

declare dso_local i64 @ngx_http_mp4_update_stco_atom(%struct.TYPE_49__*, %struct.TYPE_48__*) #1

declare dso_local i32 @ngx_http_mp4_update_stbl_atom(%struct.TYPE_49__*, %struct.TYPE_48__*) #1

declare dso_local i32 @ngx_http_mp4_update_minf_atom(%struct.TYPE_49__*, %struct.TYPE_48__*) #1

declare dso_local i32 @ngx_http_mp4_update_mdia_atom(%struct.TYPE_49__*, %struct.TYPE_48__*) #1

declare dso_local i32 @ngx_http_mp4_update_trak_atom(%struct.TYPE_49__*, %struct.TYPE_48__*) #1

declare dso_local i32 @ngx_mp4_set_32value(i32, i64) #1

declare dso_local i32 @ngx_mp4_set_atom_name(i32, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @ngx_http_mp4_update_mdat_atom(%struct.TYPE_49__*, i64, i64) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_http_mp4_adjust_co64_atom(%struct.TYPE_49__*, %struct.TYPE_48__*, i64) #1

declare dso_local i32 @ngx_http_mp4_adjust_stco_atom(%struct.TYPE_49__*, %struct.TYPE_48__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
