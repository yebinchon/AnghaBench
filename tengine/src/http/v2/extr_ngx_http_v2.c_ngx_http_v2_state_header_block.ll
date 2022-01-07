; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_header_block.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_header_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@NGX_HTTP_V2_END_HEADERS_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_V2_INT_OCTETS = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"client sent header block with too long %s value\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"size update\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"header index\00", align 1
@NGX_HTTP_V2_COMP_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"client sent header block with incorrect length\00", align 1
@NGX_HTTP_V2_SIZE_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__*, i32*, i32*)* @ngx_http_v2_state_header_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_state_header_block(%struct.TYPE_18__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = ptrtoint i32* %13 to i64
  %16 = ptrtoint i32* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 4
  %19 = icmp slt i64 %18, 1
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32* @ngx_http_v2_state_headers_save(%struct.TYPE_18__* %21, i32* %22, i32* %23, i32* (%struct.TYPE_18__*, i32*, i32*)* @ngx_http_v2_state_header_block)
  store i32* %24, i32** %4, align 8
  br label %183

25:                                               ; preds = %3
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NGX_HTTP_V2_END_HEADERS_FLAG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %25
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NGX_HTTP_V2_INT_OCTETS, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32* @ngx_http_v2_handle_continuation(%struct.TYPE_18__* %41, i32* %42, i32* %43, i32* (%struct.TYPE_18__*, i32*, i32*)* @ngx_http_v2_state_header_block)
  store i32* %44, i32** %4, align 8
  br label %183

45:                                               ; preds = %33, %25
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %48, 128
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  store i32 1, i32* %10, align 4
  %51 = call i32 @ngx_http_v2_prefix(i32 7)
  store i32 %51, i32* %12, align 4
  br label %75

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %53, 64
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  %59 = call i32 @ngx_http_v2_prefix(i32 6)
  store i32 %59, i32* %12, align 4
  br label %74

60:                                               ; preds = %52
  %61 = load i32, i32* %8, align 4
  %62 = icmp sge i32 %61, 32
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  store i32 1, i32* %11, align 4
  %64 = call i32 @ngx_http_v2_prefix(i32 5)
  store i32 %64, i32* %12, align 4
  br label %73

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = icmp sge i32 %66, 16
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @ngx_http_v2_prefix(i32 4)
  store i32 %69, i32* %12, align 4
  br label %72

70:                                               ; preds = %65
  %71 = call i32 @ngx_http_v2_prefix(i32 4)
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %70, %68
  br label %73

73:                                               ; preds = %72, %63
  br label %74

74:                                               ; preds = %73, %55
  br label %75

75:                                               ; preds = %74, %50
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @ngx_http_v2_parse_int(%struct.TYPE_18__* %76, i32** %6, i32* %77, i32 %78)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %121

82:                                               ; preds = %75
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @NGX_AGAIN, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32* @ngx_http_v2_state_headers_save(%struct.TYPE_18__* %87, i32* %88, i32* %89, i32* (%struct.TYPE_18__*, i32*, i32*)* @ngx_http_v2_state_header_block)
  store i32* %90, i32** %4, align 8
  br label %183

91:                                               ; preds = %82
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @NGX_DECLINED, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load i32, i32* @NGX_LOG_INFO, align 4
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %106 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %96, i32 %101, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %105)
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %108 = load i32, i32* @NGX_HTTP_V2_COMP_ERROR, align 4
  %109 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_18__* %107, i32 %108)
  store i32* %109, i32** %4, align 8
  br label %183

110:                                              ; preds = %91
  %111 = load i32, i32* @NGX_LOG_INFO, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %111, i32 %116, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = load i32, i32* @NGX_HTTP_V2_SIZE_ERROR, align 4
  %120 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_18__* %118, i32 %119)
  store i32* %120, i32** %4, align 8
  br label %183

121:                                              ; preds = %75
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %121
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call i64 @ngx_http_v2_get_indexed_header(%struct.TYPE_18__* %125, i64 %126, i32 0)
  %128 = load i64, i64* @NGX_OK, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %132 = load i32, i32* @NGX_HTTP_V2_COMP_ERROR, align 4
  %133 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_18__* %131, i32 %132)
  store i32* %133, i32** %4, align 8
  br label %183

134:                                              ; preds = %124
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = call i32* @ngx_http_v2_state_process_header(%struct.TYPE_18__* %135, i32* %136, i32* %137)
  store i32* %138, i32** %4, align 8
  br label %183

139:                                              ; preds = %121
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %144 = load i64, i64* %9, align 8
  %145 = call i64 @ngx_http_v2_table_size(%struct.TYPE_18__* %143, i64 %144)
  %146 = load i64, i64* @NGX_OK, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %150 = load i32, i32* @NGX_HTTP_V2_COMP_ERROR, align 4
  %151 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_18__* %149, i32 %150)
  store i32* %151, i32** %4, align 8
  br label %183

152:                                              ; preds = %142
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = load i32*, i32** %7, align 8
  %156 = call i32* @ngx_http_v2_state_header_complete(%struct.TYPE_18__* %153, i32* %154, i32* %155)
  store i32* %156, i32** %4, align 8
  br label %183

157:                                              ; preds = %139
  %158 = load i64, i64* %9, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 3
  store i32 1, i32* %163, align 4
  br label %175

164:                                              ; preds = %157
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %166 = load i64, i64* %9, align 8
  %167 = call i64 @ngx_http_v2_get_indexed_header(%struct.TYPE_18__* %165, i64 %166, i32 1)
  %168 = load i64, i64* @NGX_OK, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %172 = load i32, i32* @NGX_HTTP_V2_COMP_ERROR, align 4
  %173 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_18__* %171, i32 %172)
  store i32* %173, i32** %4, align 8
  br label %183

174:                                              ; preds = %164
  br label %175

175:                                              ; preds = %174, %160
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 4
  store i32 1, i32* %178, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %180 = load i32*, i32** %6, align 8
  %181 = load i32*, i32** %7, align 8
  %182 = call i32* @ngx_http_v2_state_field_len(%struct.TYPE_18__* %179, i32* %180, i32* %181)
  store i32* %182, i32** %4, align 8
  br label %183

183:                                              ; preds = %175, %170, %152, %148, %134, %130, %110, %95, %86, %40, %20
  %184 = load i32*, i32** %4, align 8
  ret i32* %184
}

declare dso_local i32* @ngx_http_v2_state_headers_save(%struct.TYPE_18__*, i32*, i32*, i32* (%struct.TYPE_18__*, i32*, i32*)*) #1

declare dso_local i32* @ngx_http_v2_handle_continuation(%struct.TYPE_18__*, i32*, i32*, i32* (%struct.TYPE_18__*, i32*, i32*)*) #1

declare dso_local i32 @ngx_http_v2_prefix(i32) #1

declare dso_local i64 @ngx_http_v2_parse_int(%struct.TYPE_18__*, i32**, i32*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32* @ngx_http_v2_connection_error(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @ngx_http_v2_get_indexed_header(%struct.TYPE_18__*, i64, i32) #1

declare dso_local i32* @ngx_http_v2_state_process_header(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i64 @ngx_http_v2_table_size(%struct.TYPE_18__*, i64) #1

declare dso_local i32* @ngx_http_v2_state_header_complete(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32* @ngx_http_v2_state_field_len(%struct.TYPE_18__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
