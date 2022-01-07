; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_gunzip_filter_module.c_ngx_http_gunzip_body_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_gunzip_filter_module.c_ngx_http_gunzip_body_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64, i32*, i32**, i64, i32, i32, i32 }

@ngx_http_gunzip_filter_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"http gunzip filter\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"gunzip out: %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*)* @ngx_http_gunzip_body_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_gunzip_body_filter(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = load i32, i32* @ngx_http_gunzip_filter_module, align 4
  %12 = call %struct.TYPE_18__* @ngx_http_get_module_ctx(%struct.TYPE_17__* %10, i32 %11)
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %9, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %14 = icmp eq %struct.TYPE_18__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ngx_http_next_body_filter(%struct.TYPE_17__* %21, i32* %22)
  store i32 %23, i32* %3, align 4
  br label %197

24:                                               ; preds = %15
  %25 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ngx_log_debug0(i32 %25, i32 %30, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %24
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %39 = call i32 @ngx_http_gunzip_filter_inflate_start(%struct.TYPE_17__* %37, %struct.TYPE_18__* %38)
  %40 = load i32, i32* @NGX_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %193

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 6
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @ngx_chain_add_copy(i32 %50, i32* %52, i32* %53)
  %55 = load i32, i32* @NGX_OK, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %193

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = call i32 @ngx_http_next_body_filter(%struct.TYPE_17__* %65, i32* null)
  %67 = load i32, i32* @NGX_ERROR, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %193

70:                                               ; preds = %64
  store i32* null, i32** %8, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 4
  %78 = call i32 @ngx_chain_update_chains(i32 %73, i32* %75, i64* %77, i32** %8, i32 ptrtoint (i32* @ngx_http_gunzip_filter_module to i32))
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  store i32 0, i32* %7, align 4
  br label %88

81:                                               ; preds = %59
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %81, %70
  br label %89

89:                                               ; preds = %192, %88
  br label %90

90:                                               ; preds = %129, %102, %89
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %93 = call i32 @ngx_http_gunzip_filter_add_data(%struct.TYPE_17__* %91, %struct.TYPE_18__* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @NGX_DECLINED, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %130

98:                                               ; preds = %90
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @NGX_AGAIN, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %90

103:                                              ; preds = %98
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %106 = call i32 @ngx_http_gunzip_filter_get_buf(%struct.TYPE_17__* %104, %struct.TYPE_18__* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @NGX_DECLINED, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %130

111:                                              ; preds = %103
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @NGX_ERROR, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %193

116:                                              ; preds = %111
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %119 = call i32 @ngx_http_gunzip_filter_inflate(%struct.TYPE_17__* %117, %struct.TYPE_18__* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @NGX_OK, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %130

124:                                              ; preds = %116
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @NGX_ERROR, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %193

129:                                              ; preds = %124
  br label %90

130:                                              ; preds = %123, %110, %97
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* @NGX_AGAIN, align 4
  br label %147

145:                                              ; preds = %138
  %146 = load i32, i32* @NGX_OK, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  store i32 %148, i32* %3, align 4
  br label %197

149:                                              ; preds = %135, %130
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @ngx_http_next_body_filter(%struct.TYPE_17__* %150, i32* %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @NGX_ERROR, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %149
  br label %193

159:                                              ; preds = %149
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 5
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 2
  %169 = call i32 @ngx_chain_update_chains(i32 %162, i32* %164, i64* %166, i32** %168, i32 ptrtoint (i32* @ngx_http_gunzip_filter_module to i32))
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 3
  store i32** %171, i32*** %173, align 8
  %174 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @ngx_log_debug1(i32 %174, i32 %179, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %182)
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 1
  store i64 0, i64* %185, align 8
  store i32 0, i32* %7, align 4
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %159
  %191 = load i32, i32* %6, align 4
  store i32 %191, i32* %3, align 4
  br label %197

192:                                              ; preds = %159
  br label %89

193:                                              ; preds = %158, %128, %115, %69, %57, %42
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  store i32 1, i32* %195, align 8
  %196 = load i32, i32* @NGX_ERROR, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %193, %190, %147, %20
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_ctx(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_http_next_body_filter(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_gunzip_filter_inflate_start(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_chain_add_copy(i32, i32*, i32*) #1

declare dso_local i32 @ngx_chain_update_chains(i32, i32*, i64*, i32**, i32) #1

declare dso_local i32 @ngx_http_gunzip_filter_add_data(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_http_gunzip_filter_get_buf(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_http_gunzip_filter_inflate(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
