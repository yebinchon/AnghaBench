; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_read_trak_atom.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_read_trak_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32*, %struct.TYPE_12__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32*, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mp4 trak atom\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_MP4_TRAK_ATOM = common dso_local global i64 0, align 8
@ngx_http_mp4_trak_atoms = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"mp4 trak atom: %i\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, i64)* @ngx_http_mp4_read_trak_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_mp4_read_trak_atom(%struct.TYPE_16__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ngx_log_debug0(i32 %12, i32 %16, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = call %struct.TYPE_15__* @ngx_array_push(%struct.TYPE_12__* %19)
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %11, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %22 = icmp eq %struct.TYPE_15__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @NGX_ERROR, align 8
  store i64 %24, i64* %3, align 8
  br label %91

25:                                               ; preds = %2
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %27 = call i32 @ngx_memzero(%struct.TYPE_15__* %26, i32 32)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = call i32* @ngx_mp4_atom_header(%struct.TYPE_16__* %28)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @ngx_mp4_set_atom_name(i32* %30, i8 signext 116, i8 signext 114, i8 signext 97, i8 signext 107)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %10, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = load i64, i64* @NGX_HTTP_MP4_TRAK_ATOM, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store %struct.TYPE_17__* %43, %struct.TYPE_17__** %49, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %7, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = add nsw i64 %57, %58
  store i64 %59, i64* %8, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = load i32, i32* @ngx_http_mp4_trak_atoms, align 4
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @ngx_http_mp4_read_atom(%struct.TYPE_16__* %60, i32 %61, i64 %62)
  store i64 %63, i64* %9, align 8
  %64 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @ngx_log_debug1(i32 %64, i32 %68, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @NGX_DECLINED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %25
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = call i32 @ngx_memzero(%struct.TYPE_15__* %75, i32 32)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* @NGX_OK, align 8
  store i64 %88, i64* %3, align 8
  br label %91

89:                                               ; preds = %25
  %90 = load i64, i64* %9, align 8
  store i64 %90, i64* %3, align 8
  br label %91

91:                                               ; preds = %89, %74, %23
  %92 = load i64, i64* %3, align 8
  ret i64 %92
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_15__* @ngx_array_push(%struct.TYPE_12__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @ngx_mp4_atom_header(%struct.TYPE_16__*) #1

declare dso_local i32 @ngx_mp4_set_atom_name(i32*, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @ngx_http_mp4_read_atom(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
