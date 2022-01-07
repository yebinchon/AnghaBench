; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo_range.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, i32*, i32, %struct.TYPE_13__, i32, %struct.TYPE_12__, i64 }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"duplicate default geo range value: \22%V\22, old value: \22%v\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"binary geo range base \22%s\22 cannot be mixed with usual entries\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@INADDR_NONE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"no address range \22%V\22 to delete\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"invalid range \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_14__*, %struct.TYPE_15__*)* @ngx_stream_geo_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_geo_range(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @ngx_strcmp(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i32, i32* @NGX_LOG_WARN, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i64 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 (i32, i32*, i32, i8*, %struct.TYPE_15__*, ...) @ngx_conf_log_error(i32 %27, i32* %28, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %30, i32* %34)
  br label %36

36:                                               ; preds = %26, %20
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i64 1
  %41 = call i8* @ngx_stream_geo_value(i32* %37, %struct.TYPE_14__* %38, %struct.TYPE_15__* %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  store i32* %42, i32** %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %52, i8** %4, align 8
  br label %217

53:                                               ; preds = %36
  %54 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %54, i8** %4, align 8
  br label %217

55:                                               ; preds = %3
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i32, i32* @NGX_LOG_EMERG, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = call i32 (i32, i32*, i32, i8*, %struct.TYPE_15__*, ...) @ngx_conf_log_error(i32 %61, i32* %62, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_15__* %66)
  %68 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %68, i8** %4, align 8
  br label %217

69:                                               ; preds = %55
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i32* @ngx_pcalloc(i32 %78, i32 524288)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  store i32* %79, i32** %82, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %89, i8** %4, align 8
  br label %217

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %69
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i64 @ngx_strcmp(i32* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i64 1
  store %struct.TYPE_15__* %106, %struct.TYPE_15__** %12, align 8
  store i32 1, i32* %13, align 4
  br label %110

107:                                              ; preds = %91
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i64 0
  store %struct.TYPE_15__* %109, %struct.TYPE_15__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  store i32* %118, i32** %9, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = call i32* @ngx_strlchr(i32* %121, i32* %122, i8 signext 45)
  store i32* %123, i32** %8, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %110
  br label %211

127:                                              ; preds = %110
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = ptrtoint i32* %131 to i64
  %136 = ptrtoint i32* %134 to i64
  %137 = sub i64 %135, %136
  %138 = sdiv exact i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = call i64 @ngx_inet_addr(i32* %130, i32 %139)
  store i64 %140, i64* %10, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @INADDR_NONE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %127
  br label %211

145:                                              ; preds = %127
  %146 = load i64, i64* %10, align 8
  %147 = call i64 @ntohl(i64 %146)
  store i64 %147, i64* %10, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %8, align 8
  %150 = load i32*, i32** %8, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = ptrtoint i32* %151 to i64
  %154 = ptrtoint i32* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sdiv exact i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = call i64 @ngx_inet_addr(i32* %150, i32 %157)
  store i64 %158, i64* %11, align 8
  %159 = load i64, i64* %11, align 8
  %160 = load i64, i64* @INADDR_NONE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %145
  br label %211

163:                                              ; preds = %145
  %164 = load i64, i64* %11, align 8
  %165 = call i64 @ntohl(i64 %164)
  store i64 %165, i64* %11, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load i64, i64* %11, align 8
  %168 = icmp sgt i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %211

170:                                              ; preds = %163
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %170
  %174 = load i32*, i32** %5, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %176 = load i64, i64* %10, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call i64 @ngx_stream_geo_delete_range(i32* %174, %struct.TYPE_14__* %175, i64 %176, i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %173
  %181 = load i32, i32* @NGX_LOG_WARN, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %184 = call i32 (i32, i32*, i32, i8*, %struct.TYPE_15__*, ...) @ngx_conf_log_error(i32 %181, i32* %182, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_15__* %183)
  br label %185

185:                                              ; preds = %180, %173
  %186 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %186, i8** %4, align 8
  br label %217

187:                                              ; preds = %170
  %188 = load i32*, i32** %5, align 8
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i64 1
  %192 = call i8* @ngx_stream_geo_value(i32* %188, %struct.TYPE_14__* %189, %struct.TYPE_15__* %191)
  %193 = bitcast i8* %192 to i32*
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 2
  store i32* %193, i32** %195, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %187
  %201 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %201, i8** %4, align 8
  br label %217

202:                                              ; preds = %187
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  store %struct.TYPE_15__* %203, %struct.TYPE_15__** %205, align 8
  %206 = load i32*, i32** %5, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %208 = load i64, i64* %10, align 8
  %209 = load i64, i64* %11, align 8
  %210 = call i8* @ngx_stream_geo_add_range(i32* %206, %struct.TYPE_14__* %207, i64 %208, i64 %209)
  store i8* %210, i8** %4, align 8
  br label %217

211:                                              ; preds = %169, %162, %144, %126
  %212 = load i32, i32* @NGX_LOG_EMERG, align 4
  %213 = load i32*, i32** %5, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %215 = call i32 (i32, i32*, i32, i8*, %struct.TYPE_15__*, ...) @ngx_conf_log_error(i32 %212, i32* %213, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_15__* %214)
  %216 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %216, i8** %4, align 8
  br label %217

217:                                              ; preds = %211, %202, %200, %185, %88, %60, %53, %51
  %218 = load i8*, i8** %4, align 8
  ret i8* %218
}

declare dso_local i64 @ngx_strcmp(i32*, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, i32*, i32, i8*, %struct.TYPE_15__*, ...) #1

declare dso_local i8* @ngx_stream_geo_value(i32*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32* @ngx_pcalloc(i32, i32) #1

declare dso_local i32* @ngx_strlchr(i32*, i32*, i8 signext) #1

declare dso_local i64 @ngx_inet_addr(i32*, i32) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i64 @ngx_stream_geo_delete_range(i32*, %struct.TYPE_14__*, i64, i64) #1

declare dso_local i8* @ngx_stream_geo_add_range(i32*, %struct.TYPE_14__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
