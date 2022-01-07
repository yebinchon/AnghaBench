; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_read_mdia_atom.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_read_mdia_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_15__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"process mdia atom\00", align 1
@NGX_HTTP_MP4_MDIA_ATOM = common dso_local global i64 0, align 8
@ngx_http_mp4_mdia_atoms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @ngx_http_mp4_read_mdia_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_mp4_read_mdia_atom(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ngx_log_debug0(i32 %8, i32 %12, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = call i32* @ngx_mp4_atom_header(%struct.TYPE_14__* %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ngx_mp4_set_atom_name(i32* %16, i8 signext 109, i8 signext 100, i8 signext 105, i8 signext 97)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = call %struct.TYPE_13__* @ngx_mp4_last_trak(%struct.TYPE_14__* %18)
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %7, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %6, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = load i64, i64* @NGX_HTTP_MP4_MDIA_ATOM, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %37, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = load i32, i32* @ngx_http_mp4_mdia_atoms, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @ngx_http_mp4_read_atom(%struct.TYPE_14__* %38, i32 %39, i32 %40)
  ret i32 %41
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_mp4_atom_header(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_mp4_set_atom_name(i32*, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %struct.TYPE_13__* @ngx_mp4_last_trak(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_http_mp4_read_atom(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
