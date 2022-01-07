; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_cookie_path.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_cookie_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32*, %struct.TYPE_19__*, %struct.TYPE_23__* }

@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_UNSET_PTR = common dso_local global i32* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_proxy_rewrite_complex_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_23__*, i32*, i8*)* @ngx_http_proxy_cookie_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_proxy_cookie_path(%struct.TYPE_23__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %8, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %19, i8** %4, align 8
  br label %177

20:                                               ; preds = %3
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %9, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %50

32:                                               ; preds = %20
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @ngx_strcmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %42, i8** %4, align 8
  br label %177

43:                                               ; preds = %32
  %44 = load i32, i32* @NGX_LOG_EMERG, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i64 1
  %48 = call i32 @ngx_conf_log_error(i32 %44, %struct.TYPE_23__* %45, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__* %47)
  %49 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %49, i8** %4, align 8
  br label %177

50:                                               ; preds = %20
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** @NGX_CONF_UNSET_PTR, align 8
  %55 = icmp eq i32* %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32* @ngx_array_create(i32 %59, i32 1, i32 12)
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %68, i8** %4, align 8
  br label %177

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %50
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call %struct.TYPE_20__* @ngx_array_push(i32* %73)
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %10, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %76 = icmp eq %struct.TYPE_20__* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %78, i8** %4, align 8
  br label %177

79:                                               ; preds = %70
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 126
  br i1 %87, label %88, label %140

88:                                               ; preds = %79
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %96, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 42
  br i1 %106, label %107, label %128

107:                                              ; preds = %88
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i64 1
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %110, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i64 1
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %115, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i64 1
  %122 = call i64 @ngx_http_proxy_rewrite_regex(%struct.TYPE_23__* %118, %struct.TYPE_20__* %119, %struct.TYPE_19__* %121, i32 1)
  %123 = load i64, i64* @NGX_OK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %107
  %126 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %126, i8** %4, align 8
  br label %177

127:                                              ; preds = %107
  br label %139

128:                                              ; preds = %88
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i64 1
  %133 = call i64 @ngx_http_proxy_rewrite_regex(%struct.TYPE_23__* %129, %struct.TYPE_20__* %130, %struct.TYPE_19__* %132, i32 0)
  %134 = load i64, i64* @NGX_OK, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %137, i8** %4, align 8
  br label %177

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %127
  br label %160

140:                                              ; preds = %79
  %141 = call i32 @ngx_memzero(%struct.TYPE_22__* %11, i32 24)
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  store %struct.TYPE_23__* %142, %struct.TYPE_23__** %143, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i64 1
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  store %struct.TYPE_19__* %145, %struct.TYPE_19__** %146, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i32* %149, i32** %150, align 8
  %151 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_22__* %11)
  %152 = load i64, i64* @NGX_OK, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %140
  %155 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %155, i8** %4, align 8
  br label %177

156:                                              ; preds = %140
  %157 = load i32, i32* @ngx_http_proxy_rewrite_complex_handler, align 4
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %156, %139
  %161 = call i32 @ngx_memzero(%struct.TYPE_22__* %11, i32 24)
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 2
  store %struct.TYPE_23__* %162, %struct.TYPE_23__** %163, align 8
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i64 2
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  store %struct.TYPE_19__* %165, %struct.TYPE_19__** %166, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  store i32* %168, i32** %169, align 8
  %170 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_22__* %11)
  %171 = load i64, i64* @NGX_OK, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %160
  %174 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %174, i8** %4, align 8
  br label %177

175:                                              ; preds = %160
  %176 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %176, i8** %4, align 8
  br label %177

177:                                              ; preds = %175, %173, %154, %136, %125, %77, %67, %43, %39, %18
  %178 = load i8*, i8** %4, align 8
  ret i8* %178
}

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_23__*, i32, i8*, %struct.TYPE_19__*) #1

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_array_push(i32*) #1

declare dso_local i64 @ngx_http_proxy_rewrite_regex(%struct.TYPE_23__*, %struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
