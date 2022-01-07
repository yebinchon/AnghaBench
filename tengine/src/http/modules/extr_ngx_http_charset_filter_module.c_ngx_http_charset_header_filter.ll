; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_header_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { %struct.TYPE_35__*, %struct.TYPE_34__, %struct.TYPE_37__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_33__, %struct.TYPE_31__* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32** }
%struct.TYPE_29__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_38__* }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"charset: \22%V\22 > \22%V\22\00", align 1
@NGX_HTTP_CHARSET_OFF = common dso_local global i64 0, align 8
@NGX_HTTP_NO_CHARSET = common dso_local global i64 0, align 8
@ngx_http_charset_filter_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"no \22charset_map\22 between the charsets \22%V\22 and \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_37__*)* @ngx_http_charset_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_charset_header_filter(%struct.TYPE_37__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_37__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_36__, align 4
  %7 = alloca %struct.TYPE_36__, align 4
  %8 = alloca %struct.TYPE_38__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %3, align 8
  %10 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %11 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %14 = icmp eq %struct.TYPE_37__* %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %17 = call i64 @ngx_http_destination_charset(%struct.TYPE_37__* %16, %struct.TYPE_36__* %6)
  store i64 %17, i64* %4, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %20 = call i64 @ngx_http_main_request_charset(%struct.TYPE_37__* %19, %struct.TYPE_36__* %6)
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @NGX_ERROR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @NGX_ERROR, align 8
  store i64 %26, i64* %2, align 8
  br label %171

27:                                               ; preds = %21
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @NGX_DECLINED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %33 = call i64 @ngx_http_next_header_filter(%struct.TYPE_37__* %32)
  store i64 %33, i64* %2, align 8
  br label %171

34:                                               ; preds = %27
  %35 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %36 = call i64 @ngx_http_source_charset(%struct.TYPE_37__* %35, %struct.TYPE_36__* %7)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @NGX_ERROR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @NGX_ERROR, align 8
  store i64 %41, i64* %2, align 8
  br label %171

42:                                               ; preds = %34
  %43 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %44 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ngx_log_debug2(i32 %43, i32 %48, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_36__* %7, %struct.TYPE_36__* %6)
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @NGX_HTTP_CHARSET_OFF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %55 = call i32 @ngx_http_set_charset(%struct.TYPE_37__* %54, %struct.TYPE_36__* %6)
  %56 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %57 = call i64 @ngx_http_next_header_filter(%struct.TYPE_37__* %56)
  store i64 %57, i64* %2, align 8
  br label %171

58:                                               ; preds = %42
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @NGX_HTTP_NO_CHARSET, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @NGX_HTTP_NO_CHARSET, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %62, %58
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %6, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @ngx_strncasecmp(i32 %72, i32 %74, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70, %66
  br label %161

80:                                               ; preds = %70
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %82 = call i32 @ngx_http_set_charset(%struct.TYPE_37__* %81, %struct.TYPE_36__* %6)
  %83 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %84 = call i64 @ngx_http_next_header_filter(%struct.TYPE_37__* %83)
  store i64 %84, i64* %2, align 8
  br label %171

85:                                               ; preds = %62
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %4, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 4
  %98 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %99 = call i32 @ngx_http_set_charset(%struct.TYPE_37__* %98, %struct.TYPE_36__* %6)
  %100 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %101 = call i64 @ngx_http_next_header_filter(%struct.TYPE_37__* %100)
  store i64 %101, i64* %2, align 8
  br label %171

102:                                              ; preds = %85
  %103 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %105, align 8
  %107 = icmp ne %struct.TYPE_31__* %106, null
  br i1 %107, label %108, label %120

108:                                              ; preds = %102
  %109 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %119 = call i64 @ngx_http_next_header_filter(%struct.TYPE_37__* %118)
  store i64 %119, i64* %2, align 8
  br label %171

120:                                              ; preds = %108, %102
  %121 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %122 = load i32, i32* @ngx_http_charset_filter_module, align 4
  %123 = call %struct.TYPE_29__* @ngx_http_get_module_main_conf(%struct.TYPE_37__* %121, i32 %122)
  store %struct.TYPE_29__* %123, %struct.TYPE_29__** %9, align 8
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_38__*, %struct.TYPE_38__** %126, align 8
  store %struct.TYPE_38__* %127, %struct.TYPE_38__** %8, align 8
  %128 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %129 = load i64, i64* %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %130, i32 0, i32 0
  %132 = load i32**, i32*** %131, align 8
  %133 = icmp eq i32** %132, null
  br i1 %133, label %144, label %134

134:                                              ; preds = %120
  %135 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %136 = load i64, i64* %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %137, i32 0, i32 0
  %139 = load i32**, i32*** %138, align 8
  %140 = load i64, i64* %4, align 8
  %141 = getelementptr inbounds i32*, i32** %139, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %134, %120
  br label %161

145:                                              ; preds = %134
  %146 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 0
  store i32 %149, i32* %153, align 4
  %154 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %155 = call i32 @ngx_http_set_charset(%struct.TYPE_37__* %154, %struct.TYPE_36__* %6)
  %156 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %157 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %158 = load i64, i64* %4, align 8
  %159 = load i64, i64* %5, align 8
  %160 = call i64 @ngx_http_charset_ctx(%struct.TYPE_37__* %156, %struct.TYPE_38__* %157, i64 %158, i64 %159)
  store i64 %160, i64* %2, align 8
  br label %171

161:                                              ; preds = %144, %79
  %162 = load i32, i32* @NGX_LOG_ERR, align 4
  %163 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_35__*, %struct.TYPE_35__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ngx_log_error(i32 %162, i32 %167, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_36__* %7, %struct.TYPE_36__* %6)
  %169 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %170 = call i64 @ngx_http_next_header_filter(%struct.TYPE_37__* %169)
  store i64 %170, i64* %2, align 8
  br label %171

171:                                              ; preds = %161, %145, %117, %89, %80, %53, %40, %31, %25
  %172 = load i64, i64* %2, align 8
  ret i64 %172
}

declare dso_local i64 @ngx_http_destination_charset(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i64 @ngx_http_main_request_charset(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i64 @ngx_http_next_header_filter(%struct.TYPE_37__*) #1

declare dso_local i64 @ngx_http_source_charset(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_36__*, %struct.TYPE_36__*) #1

declare dso_local i32 @ngx_http_set_charset(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32, i32) #1

declare dso_local %struct.TYPE_29__* @ngx_http_get_module_main_conf(%struct.TYPE_37__*, i32) #1

declare dso_local i64 @ngx_http_charset_ctx(%struct.TYPE_37__*, %struct.TYPE_38__*, i64, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_36__*, %struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
