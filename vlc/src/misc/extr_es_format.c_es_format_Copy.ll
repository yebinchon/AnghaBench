; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_es_format.c_es_format_Copy.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_es_format.c_es_format_Copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_8__*, %struct.TYPE_6__, i32, i32*, i32*, i32* }
%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32* }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i64 0, align 8
@SPU_ES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @es_format_Copy(%struct.TYPE_7__* noalias %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = bitcast %struct.TYPE_7__* %8 to i8*
  %11 = bitcast %struct.TYPE_7__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 72, i1 false)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = call i8* @strdup(i32* %19)
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 8
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 8
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %16
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 7
  %42 = load i32*, i32** %41, align 8
  %43 = call i8* @strdup(i32* %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 7
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 7
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %39
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %57
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32* @malloc(i64 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 6
  store i32* %72, i32** %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i64 @likely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %62
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @memcpy(i32* %85, i32* %88, i64 %91)
  br label %97

93:                                               ; preds = %62
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %82
  br label %101

98:                                               ; preds = %57
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 6
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %98, %97
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VIDEO_ES, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 5
  %112 = call i32 @video_format_Copy(i32* %109, i32* %111)
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %107, %101
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SPU_ES, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %147

119:                                              ; preds = %113
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %146

125:                                              ; preds = %119
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i8* @strdup(i32* %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i32* %131, i32** %134, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  %140 = zext i1 %139 to i32
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %125
  %144 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %143, %125
  br label %146

146:                                              ; preds = %145, %119
  br label %147

147:                                              ; preds = %146, %113
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %251

152:                                              ; preds = %147
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = icmp ne %struct.TYPE_8__* %155, null
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call %struct.TYPE_8__* @calloc(i64 %161, i32 16)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 3
  store %struct.TYPE_8__* %162, %struct.TYPE_8__** %164, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = icmp ne %struct.TYPE_8__* %167, null
  %169 = zext i1 %168 to i32
  %170 = call i64 @likely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %246

172:                                              ; preds = %152
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %237, %172
  %174 = load i32, i32* %6, align 4
  %175 = zext i32 %174 to i64
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp slt i64 %175, %178
  br i1 %179, label %180, label %240

180:                                              ; preds = %173
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %208

190:                                              ; preds = %180
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = call i8* @strdup(i32* %198)
  %200 = bitcast i8* %199 to i32*
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  store i32* %200, i32** %207, align 8
  br label %208

208:                                              ; preds = %190, %180
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %236

218:                                              ; preds = %208
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = call i8* @strdup(i32* %226)
  %228 = bitcast i8* %227 to i32*
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 3
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %230, align 8
  %232 = load i32, i32* %6, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  store i32* %228, i32** %235, align 8
  br label %236

236:                                              ; preds = %218, %208
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %6, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %6, align 4
  br label %173

240:                                              ; preds = %173
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 2
  store i64 %243, i64* %245, align 8
  br label %250

246:                                              ; preds = %152
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 2
  store i64 0, i64* %248, align 8
  %249 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %246, %240
  br label %251

251:                                              ; preds = %250, %147
  %252 = load i32, i32* %5, align 4
  ret i32 %252
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strdup(i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @malloc(i64) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @video_format_Copy(i32*, i32*) #2

declare dso_local %struct.TYPE_8__* @calloc(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
