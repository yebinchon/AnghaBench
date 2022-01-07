; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_variables.c_ngx_stream_variables_init_vars.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_variables.c_ngx_stream_variables_init_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_21__, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i64, i32* }
%struct.TYPE_24__ = type { i64, i32, i64, %struct.TYPE_18__, i32* }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_27__ = type { i8*, i32*, i32, i32, i32, i32, i32* }
%struct.TYPE_25__ = type { %struct.TYPE_23__*, i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_24__* }

@ngx_stream_core_module = common dso_local global i32 0, align 4
@NGX_STREAM_VAR_INDEXED = common dso_local global i32 0, align 4
@NGX_STREAM_VAR_WEAK = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown \22%V\22 variable\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_STREAM_VAR_NOHASH = common dso_local global i32 0, align 4
@ngx_hash_key = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"variables_hash\00", align 1
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_stream_variables_init_vars(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_27__, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = load i32, i32* @ngx_stream_core_module, align 4
  %15 = call %struct.TYPE_25__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_17__* %13, i32 %14)
  store %struct.TYPE_25__* %15, %struct.TYPE_25__** %12, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %9, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %11, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  store %struct.TYPE_26__* %29, %struct.TYPE_26__** %7, align 8
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %247, %1
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %250

37:                                               ; preds = %30
  store i64 0, i64* %6, align 8
  br label %38

38:                                               ; preds = %131, %37
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %39, %45
  br i1 %46, label %47, label %134

47:                                               ; preds = %38
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  store %struct.TYPE_24__* %52, %struct.TYPE_24__** %10, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %58, %64
  br i1 %65, label %66, label %130

66:                                               ; preds = %47
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @ngx_strncmp(i32* %72, i32* %78, i64 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %130

87:                                               ; preds = %66
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 4
  store i32* %90, i32** %94, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %99 = load i64, i64* %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  store i64 %97, i64* %101, align 8
  %102 = load i32, i32* @NGX_STREAM_VAR_INDEXED, align 4
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  store i32 %109, i32* %113, align 8
  %114 = load i64, i64* %5, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %87
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @NGX_STREAM_VAR_WEAK, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121, %87
  br label %134

129:                                              ; preds = %121
  br label %246

130:                                              ; preds = %66, %47
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %6, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %6, align 8
  br label %38

134:                                              ; preds = %128, %38
  store i64 0, i64* %4, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %10, align 8
  store i64 0, i64* %6, align 8
  br label %135

135:                                              ; preds = %197, %134
  %136 = load i64, i64* %6, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ult i64 %136, %140
  br i1 %141, label %142, label %200

142:                                              ; preds = %135
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %144 = load i64, i64* %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %150 = load i64, i64* %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp uge i64 %148, %154
  br i1 %155, label %156, label %196

156:                                              ; preds = %142
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %158 = load i64, i64* %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %4, align 8
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %165, label %196

165:                                              ; preds = %156
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %167 = load i64, i64* %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %173 = load i64, i64* %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %179 = load i64, i64* %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @ngx_strncmp(i32* %171, i32* %177, i64 %183)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %165
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %188 = load i64, i64* %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i64 %188
  store %struct.TYPE_24__* %189, %struct.TYPE_24__** %10, align 8
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %191 = load i64, i64* %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %4, align 8
  br label %196

196:                                              ; preds = %186, %165, %156, %142
  br label %197

197:                                              ; preds = %196
  %198 = load i64, i64* %6, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %6, align 8
  br label %135

200:                                              ; preds = %135
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %202 = icmp ne %struct.TYPE_24__* %201, null
  br i1 %202, label %203, label %227

203:                                              ; preds = %200
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 4
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %208 = load i64, i64* %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 4
  store i32* %206, i32** %210, align 8
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %212 = load i64, i64* %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 3
  %215 = ptrtoint %struct.TYPE_18__* %214 to i64
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %217 = load i64, i64* %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 0
  store i64 %215, i64* %219, align 8
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %224 = load i64, i64* %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 1
  store i32 %222, i32* %226, align 8
  br label %246

227:                                              ; preds = %200
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %229 = load i64, i64* %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = icmp eq i32* %232, null
  br i1 %233, label %234, label %245

234:                                              ; preds = %227
  %235 = load i32, i32* @NGX_LOG_EMERG, align 4
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %240 = load i64, i64* %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 3
  %243 = call i32 @ngx_log_error(i32 %235, i32 %238, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %242)
  %244 = load i64, i64* @NGX_ERROR, align 8
  store i64 %244, i64* %2, align 8
  br label %323

245:                                              ; preds = %227
  br label %246

246:                                              ; preds = %245, %203, %129
  br label %247

247:                                              ; preds = %246
  %248 = load i64, i64* %5, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %5, align 8
  br label %30

250:                                              ; preds = %30
  store i64 0, i64* %6, align 8
  br label %251

251:                                              ; preds = %279, %250
  %252 = load i64, i64* %6, align 8
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ult i64 %252, %258
  br i1 %259, label %260, label %282

260:                                              ; preds = %251
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %262 = load i64, i64* %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %264, align 8
  store %struct.TYPE_24__* %265, %struct.TYPE_24__** %10, align 8
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @NGX_STREAM_VAR_NOHASH, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %260
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %274 = load i64, i64* %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 1
  store i32* null, i32** %277, align 8
  br label %278

278:                                              ; preds = %272, %260
  br label %279

279:                                              ; preds = %278
  %280 = load i64, i64* %6, align 8
  %281 = add i64 %280, 1
  store i64 %281, i64* %6, align 8
  br label %251

282:                                              ; preds = %251
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 6
  store i32* %284, i32** %285, align 8
  %286 = load i32, i32* @ngx_hash_key, align 4
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 5
  store i32 %286, i32* %287, align 4
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 4
  store i32 %290, i32* %291, align 8
  %292 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 3
  store i32 %294, i32* %295, align 4
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %296, align 8
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 2
  store i32 %299, i32* %300, align 8
  %301 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 1
  store i32* null, i32** %301, align 8
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %306, align 8
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = call i64 @ngx_hash_init(%struct.TYPE_27__* %8, %struct.TYPE_26__* %307, i64 %313)
  %315 = load i64, i64* @NGX_OK, align 8
  %316 = icmp ne i64 %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %282
  %318 = load i64, i64* @NGX_ERROR, align 8
  store i64 %318, i64* %2, align 8
  br label %323

319:                                              ; preds = %282
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 0
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %321, align 8
  %322 = load i64, i64* @NGX_OK, align 8
  store i64 %322, i64* %2, align 8
  br label %323

323:                                              ; preds = %319, %317, %234
  %324 = load i64, i64* %2, align 8
  ret i64 %324
}

declare dso_local %struct.TYPE_25__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @ngx_strncmp(i32*, i32*, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_18__*) #1

declare dso_local i64 @ngx_hash_init(%struct.TYPE_27__*, %struct.TYPE_26__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
