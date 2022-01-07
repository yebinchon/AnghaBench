; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_do_get.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_do_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32*, %struct.TYPE_30__* }
%struct.TYPE_28__ = type { i64 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"list\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"detail\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"upstream\00", align 1
@NGX_HTTP_NO_CONTENT = common dso_local global i64 0, align 8
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_27__*, %struct.TYPE_31__*)* @ngx_http_dyups_do_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_dyups_do_get(%struct.TYPE_27__* %0, %struct.TYPE_31__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_29__, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %14 = call i64 @ngx_http_discard_request_body(%struct.TYPE_27__* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @NGX_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %3, align 8
  br label %179

20:                                               ; preds = %2
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  store i64 %26, i64* %3, align 8
  br label %179

27:                                               ; preds = %20
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %9, align 8
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  store %struct.TYPE_26__* %30, %struct.TYPE_26__** %10, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %51

36:                                               ; preds = %27
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ngx_strncasecmp(i32 %40, i32* bitcast ([5 x i8]* @.str to i32*), i32 4)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %45 = call %struct.TYPE_30__* @ngx_http_dyups_show_list(%struct.TYPE_27__* %44)
  store %struct.TYPE_30__* %45, %struct.TYPE_30__** %9, align 8
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %47 = icmp eq %struct.TYPE_30__* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %49, i64* %7, align 8
  br label %133

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %36, %27
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 6
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @ngx_strncasecmp(i32 %61, i32* bitcast ([7 x i8]* @.str.1 to i32*), i32 6)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %66 = call %struct.TYPE_30__* @ngx_http_dyups_show_detail(%struct.TYPE_27__* %65)
  store %struct.TYPE_30__* %66, %struct.TYPE_30__** %9, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %68 = icmp eq %struct.TYPE_30__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %70, i64* %7, align 8
  br label %133

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %57, %51
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 8
  br i1 %77, label %78, label %114

78:                                               ; preds = %72
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ngx_strncasecmp(i32 %82, i32* bitcast ([9 x i8]* @.str.2 to i32*), i32 8)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %78
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 2
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  store i64 %91, i64* %7, align 8
  br label %133

92:                                               ; preds = %85
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i64 1
  %95 = call %struct.TYPE_28__* @ngx_dyups_find_upstream(%struct.TYPE_26__* %94, i64* %8)
  store %struct.TYPE_28__* %95, %struct.TYPE_28__** %12, align 8
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %97 = icmp eq %struct.TYPE_28__* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98, %92
  %104 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  store i64 %104, i64* %7, align 8
  br label %133

105:                                              ; preds = %98
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %108 = call %struct.TYPE_30__* @ngx_http_dyups_show_upstream(%struct.TYPE_27__* %106, %struct.TYPE_28__* %107)
  store %struct.TYPE_30__* %108, %struct.TYPE_30__** %9, align 8
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %110 = icmp eq %struct.TYPE_30__* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %112, i64* %7, align 8
  br label %133

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %78, %72
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %116 = icmp ne %struct.TYPE_30__* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %119 = call i64 @ngx_buf_size(%struct.TYPE_30__* %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i64, i64* @NGX_HTTP_NO_CONTENT, align 8
  store i64 %122, i64* %7, align 8
  br label %132

123:                                              ; preds = %117, %114
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %125 = icmp ne %struct.TYPE_30__* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i64, i64* @NGX_HTTP_OK, align 8
  br label %130

128:                                              ; preds = %123
  %129 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i64 [ %127, %126 ], [ %129, %128 ]
  store i64 %131, i64* %7, align 8
  br label %132

132:                                              ; preds = %130, %121
  br label %133

133:                                              ; preds = %132, %111, %103, %90, %69, %48
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 1
  store i64 %134, i64* %137, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* @NGX_HTTP_OK, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  br label %151

145:                                              ; preds = %133
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %147 = call i64 @ngx_buf_size(%struct.TYPE_30__* %146)
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  store i64 %147, i64* %150, align 8
  br label %151

151:                                              ; preds = %145, %141
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %153 = call i64 @ngx_http_send_header(%struct.TYPE_27__* %152)
  store i64 %153, i64* %6, align 8
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* @NGX_ERROR, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %151
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* @NGX_OK, align 8
  %160 = icmp sgt i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157, %151
  %162 = load i64, i64* %6, align 8
  store i64 %162, i64* %3, align 8
  br label %179

163:                                              ; preds = %157
  %164 = load i64, i64* %7, align 8
  %165 = load i64, i64* @NGX_HTTP_OK, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %169 = load i32, i32* @NGX_HTTP_FLUSH, align 4
  %170 = call i64 @ngx_http_send_special(%struct.TYPE_27__* %168, i32 %169)
  store i64 %170, i64* %3, align 8
  br label %179

171:                                              ; preds = %163
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 4
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 1
  store %struct.TYPE_30__* %174, %struct.TYPE_30__** %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  store i32* null, i32** %176, align 8
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %178 = call i64 @ngx_http_output_filter(%struct.TYPE_27__* %177, %struct.TYPE_29__* %11)
  store i64 %178, i64* %3, align 8
  br label %179

179:                                              ; preds = %171, %167, %161, %25, %18
  %180 = load i64, i64* %3, align 8
  ret i64 %180
}

declare dso_local i64 @ngx_http_discard_request_body(%struct.TYPE_27__*) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32*, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_http_dyups_show_list(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_30__* @ngx_http_dyups_show_detail(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_28__* @ngx_dyups_find_upstream(%struct.TYPE_26__*, i64*) #1

declare dso_local %struct.TYPE_30__* @ngx_http_dyups_show_upstream(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_30__*) #1

declare dso_local i64 @ngx_http_send_header(%struct.TYPE_27__*) #1

declare dso_local i64 @ngx_http_send_special(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @ngx_http_output_filter(%struct.TYPE_27__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
