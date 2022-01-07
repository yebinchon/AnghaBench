; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_realip_module.c_ngx_stream_realip_set_addr.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_realip_module.c_ngx_stream_realip_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32, i32 }

@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_stream_realip_module = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_15__*)* @ngx_stream_realip_set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_realip_set_addr(%struct.TYPE_12__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %13 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %10, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_13__* @ngx_palloc(i32 %22, i32 24)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %11, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %25 = icmp eq %struct.TYPE_13__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @NGX_ERROR, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %94

28:                                               ; preds = %2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %36 = call i64 @ngx_sock_ntop(i32 %31, i32 %34, i32* %16, i32 %35, i32 0)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @NGX_ERROR, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %94

41:                                               ; preds = %28
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32* @ngx_pnalloc(i32 %44, i64 %45)
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @NGX_ERROR, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %94

51:                                               ; preds = %41
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @ngx_memcpy(i32* %52, i32* %16, i64 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = load i32, i32* @ngx_stream_realip_module, align 4
  %58 = call i32 @ngx_stream_set_ctx(%struct.TYPE_12__* %55, %struct.TYPE_13__* %56, i32 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = bitcast %struct.TYPE_11__* %70 to i8*
  %74 = bitcast %struct.TYPE_11__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i32* %89, i32** %92, align 8
  %93 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %93, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %94

94:                                               ; preds = %51, %49, %39, %26
  %95 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_13__* @ngx_palloc(i32, i32) #2

declare dso_local i64 @ngx_sock_ntop(i32, i32, i32*, i32, i32) #2

declare dso_local i32* @ngx_pnalloc(i32, i64) #2

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #2

declare dso_local i32 @ngx_stream_set_ctx(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
