; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_sub_filter_module.c_ngx_http_sub_merge_conf.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_sub_filter_module.c_ngx_http_sub_merge_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32*, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__*, i32*, %struct.TYPE_11__*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__* }

@ngx_http_html_default_types = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_17__*, i8*, i8*)* @ngx_http_sub_merge_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_sub_merge_conf(%struct.TYPE_17__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %12, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %13, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ngx_conf_merge_value(i32 %20, i32 %23, i32 1)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ngx_conf_merge_value(i32 %27, i32 %30, i32 0)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 4
  %41 = load i32, i32* @ngx_http_html_default_types, align 4
  %42 = call i64 @ngx_http_merge_types(%struct.TYPE_17__* %32, i32* %34, i32* %36, i32* %38, i32* %40, i32 %41)
  %43 = load i64, i64* @NGX_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %46, i8** %4, align 8
  br label %198

47:                                               ; preds = %3
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = icmp eq %struct.TYPE_11__* %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %62, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %67, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  br label %73

73:                                               ; preds = %52, %47
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = icmp ne %struct.TYPE_11__* %76, null
  br i1 %77, label %78, label %196

78:                                               ; preds = %73
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %196

83:                                               ; preds = %78
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %196

88:                                               ; preds = %83
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %10, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %9, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 16, %103
  %105 = trunc i64 %104 to i32
  %106 = call i8* @ngx_palloc(i32 %101, i32 %105)
  %107 = bitcast i8* %106 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %107, %struct.TYPE_15__** %11, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %109 = icmp eq %struct.TYPE_15__* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %88
  %111 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %111, i8** %4, align 8
  br label %198

112:                                              ; preds = %88
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %140, %112
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %143

117:                                              ; preds = %113
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  store i32 %124, i32* %129, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  store i32* %134, i32** %139, align 8
  br label %140

140:                                              ; preds = %117
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %113

143:                                              ; preds = %113
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @ngx_palloc(i32 %146, i32 4)
  %148 = bitcast i8* %147 to %struct.TYPE_13__*
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  store %struct.TYPE_13__* %148, %struct.TYPE_13__** %150, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = icmp eq %struct.TYPE_13__* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %143
  %156 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %156, i8** %4, align 8
  br label %198

157:                                              ; preds = %143
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  store %struct.TYPE_15__* %158, %struct.TYPE_15__** %162, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  store i32 %163, i32* %167, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @ngx_palloc(i32 %170, i32 4)
  %172 = bitcast i8* %171 to i32*
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 2
  store i32* %172, i32** %174, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %157
  %180 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %180, i8** %4, align 8
  br label %198

181:                                              ; preds = %157
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @ngx_http_sub_init_tables(i32* %184, %struct.TYPE_15__* %189, i32 %194)
  br label %196

196:                                              ; preds = %181, %83, %78, %73
  %197 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %197, i8** %4, align 8
  br label %198

198:                                              ; preds = %196, %179, %155, %110, %45
  %199 = load i8*, i8** %4, align 8
  ret i8* %199
}

declare dso_local i32 @ngx_conf_merge_value(i32, i32, i32) #1

declare dso_local i64 @ngx_http_merge_types(%struct.TYPE_17__*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i8* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_http_sub_init_tables(i32*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
