; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_vary_header.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_vary_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i8*, i64 }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_16__ = type { i32, i8* }

@.str = private unnamed_addr constant [15 x i8] c"Accept-Charset\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Accept-Encoding\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Accept-Language\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32*, %struct.TYPE_16__*)* @ngx_http_file_cache_vary_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_file_cache_vary_header(%struct.TYPE_18__* %0, i32* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %19, 14
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @ngx_strncasecmp(i8* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 14)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i64 1, i64* %13, align 8
  br label %56

28:                                               ; preds = %21, %3
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 %32, 15
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @ngx_strncasecmp(i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 15)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i64 1, i64* %13, align 8
  br label %55

41:                                               ; preds = %34, %28
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %45, 15
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @ngx_strncasecmp(i8* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 15)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i64 1, i64* %13, align 8
  br label %54

54:                                               ; preds = %53, %47, %41
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %14, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %15, align 8
  store i64 0, i64* %11, align 8
  br label %64

64:                                               ; preds = %226, %56
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp uge i64 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = icmp eq %struct.TYPE_17__* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %229

76:                                               ; preds = %70
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  store %struct.TYPE_17__* %79, %struct.TYPE_17__** %14, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %15, align 8
  store i64 0, i64* %11, align 8
  br label %83

83:                                               ; preds = %76, %64
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %226

91:                                               ; preds = %83
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %226

103:                                              ; preds = %91
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @ngx_strncasecmp(i8* %109, i8* %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  br label %226

119:                                              ; preds = %103
  %120 = load i64, i64* %13, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %143, label %122

122:                                              ; preds = %119
  %123 = load i64, i64* %12, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @ngx_md5_update(i32* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32*, i32** %5, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %131 = load i64, i64* %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %137 = load i64, i64* %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @ngx_md5_update(i32* %129, i8* %135, i64 %141)
  store i64 1, i64* %12, align 8
  br label %226

143:                                              ; preds = %119
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %8, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %152 = load i64, i64* %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i8, i8* %150, i64 %156
  store i8* %157, i8** %10, align 8
  br label %158

158:                                              ; preds = %220, %143
  %159 = load i8*, i8** %8, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = icmp ult i8* %159, %160
  br i1 %161, label %162, label %225

162:                                              ; preds = %158
  br label %163

163:                                              ; preds = %181, %162
  %164 = load i8*, i8** %8, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = icmp ult i8* %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load i8*, i8** %8, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 32
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load i8*, i8** %8, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 44
  br label %177

177:                                              ; preds = %172, %167
  %178 = phi i1 [ true, %167 ], [ %176, %172 ]
  br label %179

179:                                              ; preds = %177, %163
  %180 = phi i1 [ false, %163 ], [ %178, %177 ]
  br i1 %180, label %181, label %184

181:                                              ; preds = %179
  %182 = load i8*, i8** %8, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %8, align 8
  br label %163

184:                                              ; preds = %179
  %185 = load i8*, i8** %8, align 8
  store i8* %185, i8** %9, align 8
  br label %186

186:                                              ; preds = %202, %184
  %187 = load i8*, i8** %8, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = icmp ult i8* %187, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %186
  %191 = load i8*, i8** %8, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 44
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load i8*, i8** %8, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 32
  br label %200

200:                                              ; preds = %195, %190, %186
  %201 = phi i1 [ false, %190 ], [ false, %186 ], [ %199, %195 ]
  br i1 %201, label %202, label %205

202:                                              ; preds = %200
  %203 = load i8*, i8** %8, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %8, align 8
  br label %186

205:                                              ; preds = %200
  %206 = load i8*, i8** %8, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = ptrtoint i8* %206 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  store i64 %210, i64* %7, align 8
  %211 = load i64, i64* %7, align 8
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  br label %225

214:                                              ; preds = %205
  %215 = load i64, i64* %12, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 @ngx_md5_update(i32* %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32*, i32** %5, align 8
  %222 = load i8*, i8** %9, align 8
  %223 = load i64, i64* %7, align 8
  %224 = call i32 @ngx_md5_update(i32* %221, i8* %222, i64 %223)
  store i64 1, i64* %12, align 8
  br label %158

225:                                              ; preds = %213, %158
  br label %226

226:                                              ; preds = %225, %128, %118, %102, %90
  %227 = load i64, i64* %11, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %11, align 8
  br label %64

229:                                              ; preds = %75
  ret void
}

declare dso_local i64 @ngx_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @ngx_md5_update(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
