; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_log_error_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_log_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64*, %struct.TYPE_21__, %struct.TYPE_22__*, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_16__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { %struct.TYPE_15__ }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64*, i32 }
%struct.TYPE_16__ = type { i64* }
%struct.TYPE_24__ = type { %struct.TYPE_15__ }

@ngx_http_core_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c", server: %V\00", align 1
@CR = common dso_local global i64 0, align 8
@LF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c", request: \22%V\22\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c", subrequest: \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [23 x i8] c", upstream: \22%V%V%s%V\22\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c", host: \22%V\22\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c", referrer: \22%V\22\00", align 1
@AF_UNIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.TYPE_23__*, %struct.TYPE_23__*, i64*, i64)* @ngx_http_log_error_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @ngx_http_log_error_handler(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %14 = load i32, i32* @ngx_http_core_module, align 4
  %15 = call %struct.TYPE_24__* @ngx_http_get_module_srv_conf(%struct.TYPE_23__* %13, i32 %14)
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %12, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = call i64* (i64*, i64, i8*, %struct.TYPE_15__*, ...) @ngx_snprintf(i64* %16, i64 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %19)
  store i64* %20, i64** %10, align 8
  %21 = load i64*, i64** %10, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = ptrtoint i64* %21 to i64
  %24 = ptrtoint i64* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 8
  %27 = load i64, i64* %8, align 8
  %28 = sub i64 %27, %26
  store i64 %28, i64* %8, align 8
  %29 = load i64*, i64** %10, align 8
  store i64* %29, i64** %7, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = icmp eq i64* %33, null
  br i1 %34, label %35, label %86

35:                                               ; preds = %4
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %86

40:                                               ; preds = %35
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  store i64* %43, i64** %10, align 8
  br label %44

44:                                               ; preds = %64, %40
  %45 = load i64*, i64** %10, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = icmp ult i64* %45, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %44
  %53 = load i64*, i64** %10, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LF, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %52
  br label %67

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load i64*, i64** %10, align 8
  %66 = getelementptr inbounds i64, i64* %65, i32 1
  store i64* %66, i64** %10, align 8
  br label %44

67:                                               ; preds = %62, %44
  %68 = load i64*, i64** %10, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = ptrtoint i64* %68 to i64
  %73 = ptrtoint i64* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  store i64* %82, i64** %85, align 8
  br label %86

86:                                               ; preds = %67, %35, %4
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load i64*, i64** %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 4
  %97 = call i64* (i64*, i64, i8*, %struct.TYPE_15__*, ...) @ngx_snprintf(i64* %93, i64 %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %96)
  store i64* %97, i64** %10, align 8
  %98 = load i64*, i64** %10, align 8
  %99 = load i64*, i64** %7, align 8
  %100 = ptrtoint i64* %98 to i64
  %101 = ptrtoint i64* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 8
  %104 = load i64, i64* %8, align 8
  %105 = sub i64 %104, %103
  store i64 %105, i64* %8, align 8
  %106 = load i64*, i64** %10, align 8
  store i64* %106, i64** %7, align 8
  br label %107

107:                                              ; preds = %92, %86
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %110 = icmp ne %struct.TYPE_23__* %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load i64*, i64** %7, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 3
  %116 = call i64* (i64*, i64, i8*, %struct.TYPE_15__*, ...) @ngx_snprintf(i64* %112, i64 %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_15__* %115)
  store i64* %116, i64** %10, align 8
  %117 = load i64*, i64** %10, align 8
  %118 = load i64*, i64** %7, align 8
  %119 = ptrtoint i64* %117 to i64
  %120 = ptrtoint i64* %118 to i64
  %121 = sub i64 %119, %120
  %122 = sdiv exact i64 %121, 8
  %123 = load i64, i64* %8, align 8
  %124 = sub i64 %123, %122
  store i64 %124, i64* %8, align 8
  %125 = load i64*, i64** %10, align 8
  store i64* %125, i64** %7, align 8
  br label %126

126:                                              ; preds = %111, %107
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %128, align 8
  store %struct.TYPE_22__* %129, %struct.TYPE_22__** %11, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %131 = icmp ne %struct.TYPE_22__* %130, null
  br i1 %131, label %132, label %161

132:                                              ; preds = %126
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %161

138:                                              ; preds = %132
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %139 = load i64*, i64** %7, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 2
  %143 = bitcast i32* %142 to %struct.TYPE_15__*
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i8*, i8** %9, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = call i64* (i64*, i64, i8*, %struct.TYPE_15__*, ...) @ngx_snprintf(i64* %139, i64 %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_15__* %143, i64 %147, i8* %148, i32* %150)
  store i64* %151, i64** %10, align 8
  %152 = load i64*, i64** %10, align 8
  %153 = load i64*, i64** %7, align 8
  %154 = ptrtoint i64* %152 to i64
  %155 = ptrtoint i64* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 8
  %158 = load i64, i64* %8, align 8
  %159 = sub i64 %158, %157
  store i64 %159, i64* %8, align 8
  %160 = load i64*, i64** %10, align 8
  store i64* %160, i64** %7, align 8
  br label %161

161:                                              ; preds = %138, %132, %126
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %164, align 8
  %166 = icmp ne %struct.TYPE_19__* %165, null
  br i1 %166, label %167, label %185

167:                                              ; preds = %161
  %168 = load i64*, i64** %7, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = call i64* (i64*, i64, i8*, %struct.TYPE_15__*, ...) @ngx_snprintf(i64* %168, i64 %169, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_15__* %174)
  store i64* %175, i64** %10, align 8
  %176 = load i64*, i64** %10, align 8
  %177 = load i64*, i64** %7, align 8
  %178 = ptrtoint i64* %176 to i64
  %179 = ptrtoint i64* %177 to i64
  %180 = sub i64 %178, %179
  %181 = sdiv exact i64 %180, 8
  %182 = load i64, i64* %8, align 8
  %183 = sub i64 %182, %181
  store i64 %183, i64* %8, align 8
  %184 = load i64*, i64** %10, align 8
  store i64* %184, i64** %7, align 8
  br label %185

185:                                              ; preds = %167, %161
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %188, align 8
  %190 = icmp ne %struct.TYPE_20__* %189, null
  br i1 %190, label %191, label %201

191:                                              ; preds = %185
  %192 = load i64*, i64** %7, align 8
  %193 = load i64, i64* %8, align 8
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = call i64* (i64*, i64, i8*, %struct.TYPE_15__*, ...) @ngx_snprintf(i64* %192, i64 %193, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_15__* %198)
  store i64* %199, i64** %10, align 8
  %200 = load i64*, i64** %10, align 8
  store i64* %200, i64** %7, align 8
  br label %201

201:                                              ; preds = %191, %185
  %202 = load i64*, i64** %7, align 8
  ret i64* %202
}

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_srv_conf(%struct.TYPE_23__*, i32) #1

declare dso_local i64* @ngx_snprintf(i64*, i64, i8*, %struct.TYPE_15__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
