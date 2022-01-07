; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_status_html_format.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_status_html_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i32 }

@NGX_CHECK_STATUS_DOWN = common dso_local global i64 0, align 8
@NGX_CHECK_STATUS_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [627 x i8] c"<!DOCTYPE html PUBLIC \22-//W3C//DTD XHTML 1.0 Strict//EN\0A\22http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\22>\0A<html xmlns=\22http://www.w3.org/1999/xhtml\22>\0A<head>\0A  <title>Nginx http upstream check status</title>\0A</head>\0A<body>\0A<h1>Nginx http upstream check status</h1>\0A<h2>Check upstream server number: %ui, generation: %ui</h2>\0A<table style=\22background-color:white\22 cellspacing=\220\22        cellpadding=\223\22 border=\221\22>\0A  <tr bgcolor=\22#C0C0C0\22>\0A    <th>Index</th>\0A    <th>Upstream</th>\0A    <th>Name</th>\0A    <th>Status</th>\0A    <th>Rise counts</th>\0A    <th>Fall counts</th>\0A    <th>Check type</th>\0A    <th>Check port</th>\0A  </tr>\0A\00", align 1
@ngx_http_upstream_check_shm_generation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [150 x i8] c"  <tr%s>\0A    <td>%ui</td>\0A    <td>%V</td>\0A    <td>%V</td>\0A    <td>%s</td>\0A    <td>%ui</td>\0A    <td>%ui</td>\0A    <td>%V</td>\0A    <td>%ui</td>\0A  </tr>\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c" bgcolor=\22#FF0000\22\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"</table>\0A</body>\0A</html>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_16__*, i64)* @ngx_http_upstream_check_status_html_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_check_status_html_format(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %65, %3
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %15, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %14
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %65

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @NGX_CHECK_STATUS_DOWN, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %65

44:                                               ; preds = %34
  br label %62

45:                                               ; preds = %29
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @NGX_CHECK_STATUS_UP, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %65

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %45
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %62, %59, %43, %28
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %14

68:                                               ; preds = %14
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = ptrtoint i8* %74 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = inttoptr i64 %80 to i8*
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* @ngx_http_upstream_check_shm_generation, align 4
  %84 = call i8* (i8*, i8*, i8*, ...) @ngx_snprintf(i8* %71, i8* %81, i8* getelementptr inbounds ([627 x i8], [627 x i8]* @.str, i64 0, i64 0), i64 %82, i32 %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  store i64 0, i64* %7, align 8
  br label %87

87:                                               ; preds = %213, %68
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ult i64 %88, %92
  br i1 %93, label %94, label %216

94:                                               ; preds = %87
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %213

102:                                              ; preds = %94
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @NGX_CHECK_STATUS_DOWN, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %107
  br label %213

117:                                              ; preds = %107
  br label %135

118:                                              ; preds = %102
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* @NGX_CHECK_STATUS_UP, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %118
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %213

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %118
  br label %135

135:                                              ; preds = %134, %117
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = ptrtoint i8* %141 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = inttoptr i64 %147 to i8*
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %150 = load i64, i64* %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %159 = load i64, i64* %7, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %161 = load i64, i64* %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %166 = load i64, i64* %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %172 = load i64, i64* %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %182 = load i64, i64* %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %189 = load i64, i64* %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %196 = load i64, i64* %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %204 = load i64, i64* %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i8* (i8*, i8*, i8*, ...) @ngx_snprintf(i8* %138, i8* %148, i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.1, i64 0, i64 0), i8* %158, i64 %159, i32 %164, i32* %170, i8* %180, i32 %187, i32 %194, i32* %202, i32 %209)
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  store i8* %210, i8** %212, align 8
  br label %213

213:                                              ; preds = %135, %132, %116, %101
  %214 = load i64, i64* %7, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %7, align 8
  br label %87

216:                                              ; preds = %87
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = ptrtoint i8* %222 to i64
  %227 = ptrtoint i8* %225 to i64
  %228 = sub i64 %226, %227
  %229 = inttoptr i64 %228 to i8*
  %230 = call i8* (i8*, i8*, i8*, ...) @ngx_snprintf(i8* %219, i8* %229, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  store i8* %230, i8** %232, align 8
  ret void
}

declare dso_local i8* @ngx_snprintf(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
