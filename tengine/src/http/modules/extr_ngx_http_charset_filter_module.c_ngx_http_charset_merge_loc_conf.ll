; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_merge_loc_conf.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_merge_loc_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__* }

@ngx_http_charset_default_types = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_HTTP_CHARSET_OFF = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_HTTP_CHARSET_VAR = common dso_local global i64 0, align 8
@ngx_http_charset_filter_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*)* @ngx_http_charset_merge_loc_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_charset_merge_loc_conf(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %9, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = load i32, i32* @ngx_http_charset_default_types, align 4
  %27 = call i64 @ngx_http_merge_types(i32* %17, i32* %19, i32* %21, i32* %23, i32* %25, i32 %26)
  %28 = load i64, i64* @NGX_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %31, i8** %4, align 8
  br label %152

32:                                               ; preds = %3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ngx_conf_merge_value(i64 %35, i64 %38, i64 0)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NGX_HTTP_CHARSET_OFF, align 8
  %47 = call i32 @ngx_conf_merge_value(i64 %42, i64 %45, i64 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NGX_HTTP_CHARSET_OFF, align 8
  %55 = call i32 @ngx_conf_merge_value(i64 %50, i64 %53, i64 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NGX_HTTP_CHARSET_OFF, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %75, label %61

61:                                               ; preds = %32
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NGX_HTTP_CHARSET_OFF, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67, %61, %32
  %76 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %76, i8** %4, align 8
  br label %152

77:                                               ; preds = %67
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NGX_HTTP_CHARSET_VAR, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NGX_HTTP_CHARSET_VAR, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83, %77
  %90 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %90, i8** %4, align 8
  br label %152

91:                                               ; preds = %83
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* @ngx_http_charset_filter_module, align 4
  %94 = call %struct.TYPE_8__* @ngx_http_conf_get_module_main_conf(i32* %92, i32 %93)
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %12, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %11, align 8
  store i64 0, i64* %10, align 8
  br label %99

99:                                               ; preds = %129, %91
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %100, %104
  br i1 %105, label %106, label %132

106:                                              ; preds = %99
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %109, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %106
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %119, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %127, i8** %4, align 8
  br label %152

128:                                              ; preds = %116, %106
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %10, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %10, align 8
  br label %99

132:                                              ; preds = %99
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = call %struct.TYPE_7__* @ngx_array_push(%struct.TYPE_10__* %134)
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %11, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %137 = icmp eq %struct.TYPE_7__* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %139, i8** %4, align 8
  br label %152

140:                                              ; preds = %132
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %151, i8** %4, align 8
  br label %152

152:                                              ; preds = %140, %138, %126, %89, %75, %30
  %153 = load i8*, i8** %4, align 8
  ret i8* %153
}

declare dso_local i64 @ngx_http_merge_types(i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ngx_conf_merge_value(i64, i64, i64) #1

declare dso_local %struct.TYPE_8__* @ngx_http_conf_get_module_main_conf(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @ngx_array_push(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
