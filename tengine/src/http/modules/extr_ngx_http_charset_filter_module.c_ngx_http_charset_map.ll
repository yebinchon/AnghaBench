; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_map.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_12__ = type { i8**, i8** }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32* }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid parameters number\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid value \22%V\22\00", align 1
@NGX_UTF_LEN = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_14__*, i32*, i8*)* @ngx_http_charset_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_charset_map(%struct.TYPE_14__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8***, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @NGX_LOG_EMERG, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ngx_conf_log_error(i32 %25, %struct.TYPE_14__* %26, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %28, i8** %4, align 8
  br label %243

29:                                               ; preds = %3
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %14, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ngx_hextoi(i32* %38, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @NGX_ERROR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %12, align 4
  %49 = icmp sgt i32 %48, 255
  br i1 %49, label %50, label %57

50:                                               ; preds = %47, %29
  %51 = load i32, i32* @NGX_LOG_EMERG, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 0
  %55 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ngx_conf_log_error(i32 %51, %struct.TYPE_14__* %52, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %54)
  %56 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %56, i8** %4, align 8
  br label %243

57:                                               ; preds = %47
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %17, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %16, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %199

70:                                               ; preds = %57
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @NGX_UTF_LEN, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %73, i64 %77
  store i8** %78, i8*** %8, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load i8**, i8*** %8, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i32 1
  store i8** %87, i8*** %8, align 8
  store i8* %85, i8** %86, align 8
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %123, %70
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %126

95:                                               ; preds = %88
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = call i32 @ngx_hextoi(i32* %102, i32 2)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @NGX_ERROR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %95
  %108 = load i32, i32* %13, align 4
  %109 = icmp sgt i32 %108, 255
  br i1 %109, label %110, label %117

110:                                              ; preds = %107, %95
  %111 = load i32, i32* @NGX_LOG_EMERG, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i64 1
  %115 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ngx_conf_log_error(i32 %111, %struct.TYPE_14__* %112, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %114)
  %116 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %116, i8** %4, align 8
  br label %243

117:                                              ; preds = %107
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = load i8**, i8*** %8, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i32 1
  store i8** %122, i8*** %8, align 8
  store i8* %120, i8** %121, align 8
  br label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 2
  store i32 %125, i32* %15, align 4
  br label %88

126:                                              ; preds = %88
  %127 = load i32, i32* %15, align 4
  %128 = sdiv i32 %127, 2
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, %129
  store i32 %135, i32* %133, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i8**, i8*** %141, align 8
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @NGX_UTF_LEN, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %142, i64 %146
  %148 = getelementptr inbounds i8*, i8** %147, i64 1
  store i8** %148, i8*** %8, align 8
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @ngx_utf8_decode(i8*** %8, i32 %149)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp sgt i32 %151, 65535
  br i1 %152, label %153, label %160

153:                                              ; preds = %126
  %154 = load i32, i32* @NGX_LOG_EMERG, align 4
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i64 1
  %158 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ngx_conf_log_error(i32 %154, %struct.TYPE_14__* %155, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %157)
  %159 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %159, i8** %4, align 8
  br label %243

160:                                              ; preds = %126
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i8**, i8*** %162, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  %165 = bitcast i8** %164 to i8***
  store i8*** %165, i8**** %10, align 8
  %166 = load i8***, i8**** %10, align 8
  %167 = load i32, i32* %11, align 4
  %168 = ashr i32 %167, 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8**, i8*** %166, i64 %169
  %171 = load i8**, i8*** %170, align 8
  store i8** %171, i8*** %9, align 8
  %172 = load i8**, i8*** %9, align 8
  %173 = icmp eq i8** %172, null
  br i1 %173, label %174, label %190

174:                                              ; preds = %160
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i8** @ngx_pcalloc(i32 %177, i32 256)
  store i8** %178, i8*** %9, align 8
  %179 = load i8**, i8*** %9, align 8
  %180 = icmp eq i8** %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %182, i8** %4, align 8
  br label %243

183:                                              ; preds = %174
  %184 = load i8**, i8*** %9, align 8
  %185 = load i8***, i8**** %10, align 8
  %186 = load i32, i32* %11, align 4
  %187 = ashr i32 %186, 8
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8**, i8*** %185, i64 %188
  store i8** %184, i8*** %189, align 8
  br label %190

190:                                              ; preds = %183, %160
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = inttoptr i64 %192 to i8*
  %194 = load i8**, i8*** %9, align 8
  %195 = load i32, i32* %11, align 4
  %196 = and i32 %195, 255
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %194, i64 %197
  store i8* %193, i8** %198, align 8
  br label %241

199:                                              ; preds = %57
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i64 1
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i64 1
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @ngx_hextoi(i32* %203, i32 %207)
  store i32 %208, i32* %13, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* @NGX_ERROR, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %215, label %212

212:                                              ; preds = %199
  %213 = load i32, i32* %13, align 4
  %214 = icmp sgt i32 %213, 255
  br i1 %214, label %215, label %222

215:                                              ; preds = %212, %199
  %216 = load i32, i32* @NGX_LOG_EMERG, align 4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i64 1
  %220 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ngx_conf_log_error(i32 %216, %struct.TYPE_14__* %217, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %219)
  %221 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %221, i8** %4, align 8
  br label %243

222:                                              ; preds = %212
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = inttoptr i64 %224 to i8*
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = load i8**, i8*** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %228, i64 %230
  store i8* %225, i8** %231, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = inttoptr i64 %233 to i8*
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load i8**, i8*** %236, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8*, i8** %237, i64 %239
  store i8* %234, i8** %240, align 8
  br label %241

241:                                              ; preds = %222, %190
  %242 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %242, i8** %4, align 8
  br label %243

243:                                              ; preds = %241, %215, %181, %153, %110, %50, %24
  %244 = load i8*, i8** %4, align 8
  ret i8* %244
}

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_hextoi(i32*, i32) #1

declare dso_local i32 @ngx_utf8_decode(i8***, i32) #1

declare dso_local i8** @ngx_pcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
