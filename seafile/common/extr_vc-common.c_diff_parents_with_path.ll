; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_vc-common.c_diff_parents_with_path.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_vc-common.c_diff_parents_with_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i32, i64, i32, i32, i64 }

@seaf = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Failed to find commit %s.\0A\00", align 1
@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_GENERAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@EMPTY_SHA1 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*, i32, i8*, i8*, i8*, i32**)* @diff_parents_with_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_parents_with_path(%struct.TYPE_6__* %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5, i8* %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32** %7, i32*** %17, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @seaf, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = call %struct.TYPE_6__* @seaf_commit_manager_get_commit(i32 %25, i32 %28, i32 %31, i64 %34)
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %18, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32**, i32*** %17, align 8
  %44 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %45 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %46 = call i32 @g_set_error(i32** %43, i32 %44, i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %254

47:                                               ; preds = %8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** @EMPTY_SHA1, align 8
  %52 = call i64 @strcmp(i8* %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %56 = call i32 @seaf_commit_unref(%struct.TYPE_6__* %55)
  store i32 1, i32* %9, align 4
  br label %254

57:                                               ; preds = %47
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %57
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @seaf, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.TYPE_6__* @seaf_commit_manager_get_commit(i32 %65, i32 %68, i32 %71, i64 %74)
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %19, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %77 = icmp ne %struct.TYPE_6__* %76, null
  br i1 %77, label %89, label %78

78:                                               ; preds = %62
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @g_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %84 = call i32 @seaf_commit_unref(%struct.TYPE_6__* %83)
  %85 = load i32**, i32*** %17, align 8
  %86 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %87 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %88 = call i32 @g_set_error(i32** %85, i32 %86, i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %254

89:                                               ; preds = %62
  br label %90

90:                                               ; preds = %89, %57
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %92 = icmp ne %struct.TYPE_6__* %91, null
  br i1 %92, label %125, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @seaf, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = load i32**, i32*** %17, align 8
  %104 = call i8* @seaf_fs_manager_path_to_obj_id(i32 %96, i8* %97, i32 %98, i8* %101, i8* %102, i32* null, i32** %103)
  store i8* %104, i8** %20, align 8
  %105 = load i32**, i32*** %17, align 8
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %93
  br label %236

109:                                              ; preds = %93
  %110 = load i8*, i8** %20, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i8*, i8** %15, align 8
  %114 = load i8*, i8** %20, align 8
  %115 = call i64 @strcmp(i8* %113, i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112, %109
  store i32 1, i32* %22, align 4
  br label %124

118:                                              ; preds = %112
  %119 = load i8*, i8** %16, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @memcpy(i8* %119, i32 %122, i32 41)
  br label %124

124:                                              ; preds = %118, %117
  br label %235

125:                                              ; preds = %90
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** @seaf, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %12, align 8
  %130 = load i32, i32* %13, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i8*, i8** %14, align 8
  %135 = load i32**, i32*** %17, align 8
  %136 = call i8* @seaf_fs_manager_path_to_obj_id(i32 %128, i8* %129, i32 %130, i8* %133, i8* %134, i32* null, i32** %135)
  store i8* %136, i8** %20, align 8
  %137 = load i32**, i32*** %17, align 8
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %125
  br label %236

141:                                              ; preds = %125
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** @seaf, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %12, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i8*, i8** %14, align 8
  %151 = load i32**, i32*** %17, align 8
  %152 = call i8* @seaf_fs_manager_path_to_obj_id(i32 %144, i8* %145, i32 %146, i8* %149, i8* %150, i32* null, i32** %151)
  store i8* %152, i8** %21, align 8
  %153 = load i32**, i32*** %17, align 8
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %141
  br label %236

157:                                              ; preds = %141
  %158 = load i8*, i8** %20, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %193

160:                                              ; preds = %157
  %161 = load i8*, i8** %21, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %193

163:                                              ; preds = %160
  %164 = load i8*, i8** %15, align 8
  %165 = load i8*, i8** %20, align 8
  %166 = call i64 @strcmp(i8* %164, i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i8*, i8** %15, align 8
  %170 = load i8*, i8** %21, align 8
  %171 = call i64 @strcmp(i8* %169, i8* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  store i32 1, i32* %22, align 4
  br label %192

174:                                              ; preds = %168, %163
  %175 = load i8*, i8** %15, align 8
  %176 = load i8*, i8** %20, align 8
  %177 = call i64 @strcmp(i8* %175, i8* %176)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i8*, i8** %16, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @memcpy(i8* %180, i32 %183, i32 41)
  br label %191

185:                                              ; preds = %174
  %186 = load i8*, i8** %16, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @memcpy(i8* %186, i32 %189, i32 41)
  br label %191

191:                                              ; preds = %185, %179
  br label %192

192:                                              ; preds = %191, %173
  br label %234

193:                                              ; preds = %160, %157
  %194 = load i8*, i8** %20, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %212

196:                                              ; preds = %193
  %197 = load i8*, i8** %21, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %212, label %199

199:                                              ; preds = %196
  %200 = load i8*, i8** %15, align 8
  %201 = load i8*, i8** %20, align 8
  %202 = call i64 @strcmp(i8* %200, i8* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  store i32 1, i32* %22, align 4
  br label %211

205:                                              ; preds = %199
  %206 = load i8*, i8** %16, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @memcpy(i8* %206, i32 %209, i32 41)
  br label %211

211:                                              ; preds = %205, %204
  br label %233

212:                                              ; preds = %196, %193
  %213 = load i8*, i8** %20, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %231, label %215

215:                                              ; preds = %212
  %216 = load i8*, i8** %21, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %231

218:                                              ; preds = %215
  %219 = load i8*, i8** %15, align 8
  %220 = load i8*, i8** %21, align 8
  %221 = call i64 @strcmp(i8* %219, i8* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  store i32 1, i32* %22, align 4
  br label %230

224:                                              ; preds = %218
  %225 = load i8*, i8** %16, align 8
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @memcpy(i8* %225, i32 %228, i32 41)
  br label %230

230:                                              ; preds = %224, %223
  br label %232

231:                                              ; preds = %215, %212
  store i32 1, i32* %22, align 4
  br label %232

232:                                              ; preds = %231, %230
  br label %233

233:                                              ; preds = %232, %211
  br label %234

234:                                              ; preds = %233, %192
  br label %235

235:                                              ; preds = %234, %124
  br label %236

236:                                              ; preds = %235, %156, %140, %108
  %237 = load i8*, i8** %20, align 8
  %238 = call i32 @g_free(i8* %237)
  %239 = load i8*, i8** %21, align 8
  %240 = call i32 @g_free(i8* %239)
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %242 = icmp ne %struct.TYPE_6__* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %236
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %245 = call i32 @seaf_commit_unref(%struct.TYPE_6__* %244)
  br label %246

246:                                              ; preds = %243, %236
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %248 = icmp ne %struct.TYPE_6__* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %251 = call i32 @seaf_commit_unref(%struct.TYPE_6__* %250)
  br label %252

252:                                              ; preds = %249, %246
  %253 = load i32, i32* %22, align 4
  store i32 %253, i32* %9, align 4
  br label %254

254:                                              ; preds = %252, %78, %54, %38
  %255 = load i32, i32* %9, align 4
  ret i32 %255
}

declare dso_local %struct.TYPE_6__* @seaf_commit_manager_get_commit(i32, i32, i32, i64) #1

declare dso_local i32 @g_warning(i8*, i64) #1

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_6__*) #1

declare dso_local i8* @seaf_fs_manager_path_to_obj_id(i32, i8*, i32, i8*, i8*, i32*, i32**) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
