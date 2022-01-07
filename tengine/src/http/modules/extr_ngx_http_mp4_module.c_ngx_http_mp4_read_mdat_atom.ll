; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_read_mdat_atom.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_read_mdat_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i64, %struct.TYPE_10__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mp4 mdat atom\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64)* @ngx_http_mp4_read_mdat_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_mp4_read_mdat_atom(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ngx_log_debug0(i32 %6, i32 %10, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 7
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 4
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %17, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = icmp eq %struct.TYPE_11__* %22, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store i32* %43, i32** %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %55, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %2
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %71

67:                                               ; preds = %2
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @ngx_mp4_atom_next(%struct.TYPE_15__* %68, i64 %69)
  br label %71

71:                                               ; preds = %67, %61
  %72 = load i32, i32* @NGX_OK, align 4
  ret i32 %72
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_mp4_atom_next(%struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
