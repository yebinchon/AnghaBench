; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_run.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.view = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.status = type { i8, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.buffer = type { i32, i32 }
%struct.io = type { i32 }
%struct.line = type { i32 }

@IO_RD = common dso_local global i32 0, align 4
@repo = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@NULL_ID = common dso_local global i32* null, align 8
@LINE_STAT_NONE = common dso_local global i32 0, align 4
@LINE_STAT_STAGED = common dso_local global i32 0, align 4
@WATCH_INDEX_STAGED_NO = common dso_local global i32 0, align 4
@LINE_STAT_UNSTAGED = common dso_local global i32 0, align 4
@WATCH_INDEX_UNSTAGED_NO = common dso_local global i32 0, align 4
@LINE_STAT_UNTRACKED = common dso_local global i32 0, align 4
@WATCH_INDEX_UNTRACKED_NO = common dso_local global i32 0, align 4
@WATCH_INDEX_STAGED_YES = common dso_local global i32 0, align 4
@WATCH_INDEX_UNSTAGED_YES = common dso_local global i32 0, align 4
@WATCH_INDEX_UNTRACKED_YES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i8**, i8, i32)* @status_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_run(%struct.view* %0, i8** %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.view*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.status*, align 8
  %11 = alloca %struct.buffer, align 4
  %12 = alloca %struct.io, align 4
  %13 = alloca %struct.line*, align 8
  %14 = alloca %struct.status, align 8
  %15 = alloca %struct.status*, align 8
  store %struct.view* %0, %struct.view** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store %struct.status* null, %struct.status** %10, align 8
  %16 = load i32, i32* @IO_RD, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @repo, i32 0, i32 0), align 4
  %18 = load i8**, i8*** %7, align 8
  %19 = call i32 @io_run(%struct.io* %12, i32 %16, i32 %17, i32* null, i8** %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %243

22:                                               ; preds = %4
  %23 = load %struct.view*, %struct.view** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @add_line_nodata(%struct.view* %23, i32 %24)
  br label %26

26:                                               ; preds = %158, %134, %22
  %27 = call i64 @io_get(%struct.io* %12, %struct.buffer* %11, i32 0, i32 1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %159

29:                                               ; preds = %26
  %30 = bitcast %struct.status* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 40, i1 false)
  store %struct.status* %14, %struct.status** %15, align 8
  %31 = load i8, i8* %8, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i8, i8* %8, align 1
  %35 = load %struct.status*, %struct.status** %15, align 8
  %36 = getelementptr inbounds %struct.status, %struct.status* %35, i32 0, i32 0
  store i8 %34, i8* %36, align 8
  %37 = load i8, i8* %8, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 65
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.status*, %struct.status** %15, align 8
  %42 = getelementptr inbounds %struct.status, %struct.status* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** @NULL_ID, align 8
  %46 = call i32 @string_copy(i32* %44, i32* %45)
  br label %47

47:                                               ; preds = %40, %33
  br label %61

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @status_get_diff(%struct.status* %14, i32 %50, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %163

56:                                               ; preds = %48
  %57 = call i64 @io_get(%struct.io* %12, %struct.buffer* %11, i32 0, i32 1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %159

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60, %47
  %62 = load %struct.status*, %struct.status** %15, align 8
  %63 = getelementptr inbounds %struct.status, %struct.status* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %94, label %68

68:                                               ; preds = %61
  %69 = load %struct.status*, %struct.status** %15, align 8
  %70 = getelementptr inbounds %struct.status, %struct.status* %69, i32 0, i32 0
  %71 = load i8, i8* %70, align 8
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 82
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.status*, %struct.status** %15, align 8
  %76 = getelementptr inbounds %struct.status, %struct.status* %75, i32 0, i32 0
  %77 = load i8, i8* %76, align 8
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 67
  br i1 %79, label %80, label %94

80:                                               ; preds = %74, %68
  %81 = load %struct.status*, %struct.status** %15, align 8
  %82 = getelementptr inbounds %struct.status, %struct.status* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @string_ncopy(i32* %84, i32 %86, i32 %88)
  %90 = call i64 @io_get(%struct.io* %12, %struct.buffer* %11, i32 0, i32 1)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %80
  br label %159

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %74, %61
  %95 = load %struct.status*, %struct.status** %15, align 8
  %96 = getelementptr inbounds %struct.status, %struct.status* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @string_ncopy(i32* %98, i32 %100, i32 %102)
  %104 = load %struct.status*, %struct.status** %15, align 8
  %105 = getelementptr inbounds %struct.status, %struct.status* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %94
  %111 = load %struct.status*, %struct.status** %15, align 8
  %112 = getelementptr inbounds %struct.status, %struct.status* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.status*, %struct.status** %15, align 8
  %116 = getelementptr inbounds %struct.status, %struct.status* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @string_copy(i32* %114, i32* %118)
  br label %120

120:                                              ; preds = %110, %94
  %121 = load %struct.status*, %struct.status** %10, align 8
  %122 = icmp ne %struct.status* %121, null
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load %struct.status*, %struct.status** %10, align 8
  %125 = getelementptr inbounds %struct.status, %struct.status* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.status*, %struct.status** %15, align 8
  %129 = getelementptr inbounds %struct.status, %struct.status* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @strcmp(i32* %127, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %123
  %135 = load %struct.status*, %struct.status** %10, align 8
  %136 = getelementptr inbounds %struct.status, %struct.status* %135, i32 0, i32 0
  store i8 85, i8* %136, align 8
  store %struct.status* null, %struct.status** %10, align 8
  br label %26

137:                                              ; preds = %123, %120
  %138 = load %struct.view*, %struct.view** %6, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call %struct.line* @add_line_alloc(%struct.view* %138, %struct.status** %15, i32 %139, i32 0, i32 0)
  store %struct.line* %140, %struct.line** %13, align 8
  %141 = load %struct.line*, %struct.line** %13, align 8
  %142 = icmp ne %struct.line* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %137
  br label %163

144:                                              ; preds = %137
  %145 = load %struct.status*, %struct.status** %15, align 8
  %146 = bitcast %struct.status* %145 to i8*
  %147 = bitcast %struct.status* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 8 %147, i64 40, i1 false)
  %148 = load %struct.view*, %struct.view** %6, align 8
  %149 = load %struct.line*, %struct.line** %13, align 8
  %150 = call i32 @view_column_info_update(%struct.view* %148, %struct.line* %149)
  %151 = load %struct.status*, %struct.status** %15, align 8
  %152 = getelementptr inbounds %struct.status, %struct.status* %151, i32 0, i32 0
  %153 = load i8, i8* %152, align 8
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 85
  br i1 %155, label %156, label %158

156:                                              ; preds = %144
  %157 = load %struct.status*, %struct.status** %15, align 8
  store %struct.status* %157, %struct.status** %10, align 8
  br label %158

158:                                              ; preds = %156, %144
  br label %26

159:                                              ; preds = %92, %59, %26
  %160 = call i64 @io_error(%struct.io* %12)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %162, %143, %55
  %164 = call i32 @io_done(%struct.io* %12)
  store i32 0, i32* %5, align 4
  br label %243

165:                                              ; preds = %159
  %166 = load %struct.view*, %struct.view** %6, align 8
  %167 = getelementptr inbounds %struct.view, %struct.view* %166, i32 0, i32 2
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = load %struct.view*, %struct.view** %6, align 8
  %170 = getelementptr inbounds %struct.view, %struct.view* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %211, label %178

178:                                              ; preds = %165
  %179 = load %struct.view*, %struct.view** %6, align 8
  %180 = load i32, i32* @LINE_STAT_NONE, align 4
  %181 = call i32 @add_line_nodata(%struct.view* %179, i32 %180)
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @LINE_STAT_STAGED, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %178
  %186 = load %struct.view*, %struct.view** %6, align 8
  %187 = getelementptr inbounds %struct.view, %struct.view* %186, i32 0, i32 1
  %188 = load i32, i32* @WATCH_INDEX_STAGED_NO, align 4
  %189 = call i32 @watch_apply(i32* %187, i32 %188)
  br label %210

190:                                              ; preds = %178
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* @LINE_STAT_UNSTAGED, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = load %struct.view*, %struct.view** %6, align 8
  %196 = getelementptr inbounds %struct.view, %struct.view* %195, i32 0, i32 1
  %197 = load i32, i32* @WATCH_INDEX_UNSTAGED_NO, align 4
  %198 = call i32 @watch_apply(i32* %196, i32 %197)
  br label %209

199:                                              ; preds = %190
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @LINE_STAT_UNTRACKED, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %199
  %204 = load %struct.view*, %struct.view** %6, align 8
  %205 = getelementptr inbounds %struct.view, %struct.view* %204, i32 0, i32 1
  %206 = load i32, i32* @WATCH_INDEX_UNTRACKED_NO, align 4
  %207 = call i32 @watch_apply(i32* %205, i32 %206)
  br label %208

208:                                              ; preds = %203, %199
  br label %209

209:                                              ; preds = %208, %194
  br label %210

210:                                              ; preds = %209, %185
  br label %241

211:                                              ; preds = %165
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* @LINE_STAT_STAGED, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = load %struct.view*, %struct.view** %6, align 8
  %217 = getelementptr inbounds %struct.view, %struct.view* %216, i32 0, i32 1
  %218 = load i32, i32* @WATCH_INDEX_STAGED_YES, align 4
  %219 = call i32 @watch_apply(i32* %217, i32 %218)
  br label %240

220:                                              ; preds = %211
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* @LINE_STAT_UNSTAGED, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %220
  %225 = load %struct.view*, %struct.view** %6, align 8
  %226 = getelementptr inbounds %struct.view, %struct.view* %225, i32 0, i32 1
  %227 = load i32, i32* @WATCH_INDEX_UNSTAGED_YES, align 4
  %228 = call i32 @watch_apply(i32* %226, i32 %227)
  br label %239

229:                                              ; preds = %220
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* @LINE_STAT_UNTRACKED, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = load %struct.view*, %struct.view** %6, align 8
  %235 = getelementptr inbounds %struct.view, %struct.view* %234, i32 0, i32 1
  %236 = load i32, i32* @WATCH_INDEX_UNTRACKED_YES, align 4
  %237 = call i32 @watch_apply(i32* %235, i32 %236)
  br label %238

238:                                              ; preds = %233, %229
  br label %239

239:                                              ; preds = %238, %224
  br label %240

240:                                              ; preds = %239, %215
  br label %241

241:                                              ; preds = %240, %210
  %242 = call i32 @io_done(%struct.io* %12)
  store i32 1, i32* %5, align 4
  br label %243

243:                                              ; preds = %241, %163, %21
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local i32 @io_run(%struct.io*, i32, i32, i32*, i8**) #1

declare dso_local i32 @add_line_nodata(%struct.view*, i32) #1

declare dso_local i64 @io_get(%struct.io*, %struct.buffer*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @string_copy(i32*, i32*) #1

declare dso_local i32 @status_get_diff(%struct.status*, i32, i32) #1

declare dso_local i32 @string_ncopy(i32*, i32, i32) #1

declare dso_local i32 @strcmp(i32*, i32*) #1

declare dso_local %struct.line* @add_line_alloc(%struct.view*, %struct.status**, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @view_column_info_update(%struct.view*, %struct.line*) #1

declare dso_local i64 @io_error(%struct.io*) #1

declare dso_local i32 @io_done(%struct.io*) #1

declare dso_local i32 @watch_apply(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
