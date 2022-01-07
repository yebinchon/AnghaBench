; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_update_rt.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_update_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@ngx_http_sysguard_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sysguard update rt: i: %i, c:%i h: %i\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"node in loop: i: %i, p:%i, sec: %T, msec: %i, r: %ui\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"continue: i: %i, p:%i, node tamp: %T, cur stamp: %T\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"rt sec: %ui, rt msec:%i, rc requests: %ui\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i64)* @ngx_http_sysguard_update_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_sysguard_update_rt(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = load i32, i32* @ngx_http_sysguard_module, align 4
  %18 = call %struct.TYPE_12__* @ngx_http_get_module_loc_conf(%struct.TYPE_13__* %16, i32 %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %12, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %13, align 8
  %22 = call i64 (...) @ngx_time()
  %23 = load i64, i64* %4, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 4
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = srem i64 %33, %37
  store i64 %38, i64* %9, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i64 %44
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %15, align 8
  %46 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @ngx_log_debug3(i32 %46, i32 %51, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %158, %2
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br label %71

71:                                               ; preds = %65, %61
  %72 = phi i1 [ false, %61 ], [ %70, %65 ]
  br i1 %72, label %73, label %163

73:                                               ; preds = %71
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %77
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %14, align 8
  %79 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @ngx_log_debug5(i32 %79, i32 %84, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %86, i64 %89, i64 %92, i64 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %73
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %104, %107
  %109 = load i64, i64* %10, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %101, %73
  %112 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @ngx_log_debug4(i32 %112, i32 %117, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %118, i64 %119, i64 %122, i64 %125)
  br label %149

127:                                              ; preds = %101
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %6, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %11, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %127, %111
  %150 = load i64, i64* %8, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %8, align 8
  br label %157

157:                                              ; preds = %152, %149
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %8, align 8
  %160 = add nsw i64 %159, -1
  store i64 %160, i64* %8, align 8
  %161 = load i64, i64* %10, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %10, align 8
  br label %61

163:                                              ; preds = %71
  %164 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @ngx_log_debug3(i32 %164, i32 %169, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %170, i32 %171, i32 %172)
  %174 = load i32, i32* %6, align 4
  %175 = mul nsw i32 %174, 1000
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @ngx_max(i32 %178, i32 0)
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %163
  %183 = load i32, i32* %11, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %7, align 4
  %188 = sdiv i32 %186, %187
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = sdiv i32 %189, 1000
  %191 = mul nsw i32 %190, 1000
  %192 = load i32, i32* %11, align 4
  %193 = srem i32 %192, 1000
  %194 = add nsw i32 %191, %193
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %185, %182, %163
  %196 = load i32, i32* %5, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 4
  %199 = load i64, i64* @NGX_OK, align 8
  ret i64 %199
}

declare dso_local %struct.TYPE_12__* @ngx_http_get_module_loc_conf(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ngx_log_debug5(i32, i32, i32, i8*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @ngx_max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
