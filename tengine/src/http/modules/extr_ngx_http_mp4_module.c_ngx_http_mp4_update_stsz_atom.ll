; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_update_stsz_atom.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_update_stsz_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32*, i32, i32*, i64, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"mp4 stsz atom update\00", align 1
@NGX_HTTP_MP4_STSZ_DATA = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"start time is out mp4 stsz samples in \22%s\22\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"chunk samples sizes:%uL\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"end time is out mp4 stsz samples in \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"mp4 stsz end_chunk_samples_size:%uL\00", align 1
@NGX_HTTP_MP4_STSZ_ATOM = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @ngx_http_mp4_update_stsz_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_mp4_update_stsz_atom(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ngx_log_debug0(i32 %13, i32 %17, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 6
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load i64, i64* @NGX_HTTP_MP4_STSZ_DATA, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %11, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  br i1 %27, label %28, label %231

28:                                               ; preds = %2
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %28
  %38 = load i32, i32* @NGX_LOG_ERR, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ngx_log_error(i32 %38, i32 %42, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @NGX_ERROR, align 4
  store i32 %49, i32* %3, align 4
  br label %233

50:                                               ; preds = %28
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = ptrtoint i32* %72 to i64
  %77 = ptrtoint i32* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 4
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %7, align 8
  br label %81

81:                                               ; preds = %94, %50
  %82 = load i32*, i32** %7, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = icmp ult i32* %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load i32*, i32** %7, align 8
  %87 = call i64 @ngx_mp4_get_32value(i32* %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %87
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  br label %94

94:                                               ; preds = %85
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %7, align 8
  br label %81

97:                                               ; preds = %81
  %98 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ngx_log_debug1(i32 %98, i32 %102, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %193

111:                                              ; preds = %97
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %114, %117
  %119 = load i32, i32* %9, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %111
  %122 = load i32, i32* @NGX_LOG_ERR, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ngx_log_error(i32 %122, i32 %126, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @NGX_ERROR, align 4
  store i32 %133, i32* %3, align 4
  br label %233

134:                                              ; preds = %111
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %137, %140
  store i32 %141, i32* %9, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 4
  %149 = add i64 %145, %148
  %150 = trunc i64 %149 to i32
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i32*
  store i32* %157, i32** %8, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = ptrtoint i32* %158 to i64
  %163 = ptrtoint i32* %161 to i64
  %164 = sub i64 %162, %163
  %165 = sdiv exact i64 %164, 4
  %166 = inttoptr i64 %165 to i32*
  store i32* %166, i32** %7, align 8
  br label %167

167:                                              ; preds = %180, %134
  %168 = load i32*, i32** %7, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = icmp ult i32* %168, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %167
  %172 = load i32*, i32** %7, align 8
  %173 = call i64 @ngx_mp4_get_32value(i32* %172)
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %173
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %175, align 8
  br label %180

180:                                              ; preds = %171
  %181 = load i32*, i32** %7, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %7, align 8
  br label %167

183:                                              ; preds = %167
  %184 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @ngx_log_debug1(i32 %184, i32 %188, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %183, %97
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %196, %199
  %201 = sext i32 %200 to i64
  %202 = add i64 8, %201
  store i64 %202, i64* %6, align 8
  %203 = load i64, i64* %6, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 5
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %206, %203
  store i64 %207, i64* %205, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 6
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = load i64, i64* @NGX_HTTP_MP4_STSZ_ATOM, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %213, align 8
  store %struct.TYPE_16__* %214, %struct.TYPE_16__** %10, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %219, %struct.TYPE_13__** %12, align 8
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i64, i64* %6, align 8
  %224 = trunc i64 %223 to i32
  %225 = call i32 @ngx_mp4_set_32value(i32 %222, i32 %224)
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @ngx_mp4_set_32value(i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %193, %2
  %232 = load i32, i32* @NGX_OK, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %231, %121, %37
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ngx_mp4_get_32value(i32*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_mp4_set_32value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
