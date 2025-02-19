; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_query.c_query_submit.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_query.c_query_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.timeval = type { i32 }

@adns_s_nomemory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*, i32*, %struct.TYPE_8__*, i32, i32, i32)* @query_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_submit(i32 %0, %struct.TYPE_9__* %1, i32* %2, %struct.TYPE_8__* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %6, i32* %15, align 4
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %19 = bitcast %struct.TYPE_8__* %17 to i8*
  %20 = bitcast %struct.TYPE_8__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %22 = call i32 @adns__vbuf_init(%struct.TYPE_8__* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @malloc(i64 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %7
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = load i32, i32* @adns_s_nomemory, align 4
  %37 = call i32 @adns__query_fail(%struct.TYPE_9__* %35, i32 %36)
  br label %64

38:                                               ; preds = %7
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memcpy(i32 %50, i32 %54, i64 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @adns__query_send(%struct.TYPE_9__* %60, i32 %62)
  br label %64

64:                                               ; preds = %38, %34
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @adns__vbuf_init(%struct.TYPE_8__*) #2

declare dso_local i32 @malloc(i64) #2

declare dso_local i32 @adns__query_fail(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @memcpy(i32, i32, i64) #2

declare dso_local i32 @adns__query_send(%struct.TYPE_9__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
