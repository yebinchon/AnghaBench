; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_merge_locations.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_merge_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_9__ = type { i8* (%struct.TYPE_13__*, i8*, i8*)* }
%struct.TYPE_12__ = type { i8** }
%struct.TYPE_11__ = type { i8**, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }

@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_13__*, i32*, i8**, %struct.TYPE_9__*, i64)* @ngx_http_merge_locations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_merge_locations(%struct.TYPE_13__* %0, i32* %1, i8** %2, %struct.TYPE_9__* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %21, i8** %6, align 8
  br label %104

22:                                               ; preds = %5
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %14, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %28 = bitcast %struct.TYPE_12__* %15 to i8*
  %29 = bitcast %struct.TYPE_12__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @ngx_queue_head(i32* %30)
  store i32* %31, i32** %13, align 8
  br label %32

32:                                               ; preds = %96, %22
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @ngx_queue_sentinel(i32* %34)
  %36 = icmp ne i32* %33, %35
  br i1 %36, label %37, label %99

37:                                               ; preds = %32
  %38 = load i32*, i32** %13, align 8
  %39 = bitcast i32* %38 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %17, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  br label %52

48:                                               ; preds = %37
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi %struct.TYPE_11__* [ %47, %44 ], [ %51, %48 ]
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %16, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i8** %56, i8*** %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i8* (%struct.TYPE_13__*, i8*, i8*)*, i8* (%struct.TYPE_13__*, i8*, i8*)** %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = load i8**, i8*** %9, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* %61(%struct.TYPE_13__* %62, i8* %66, i8* %72)
  store i8* %73, i8** %12, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** @NGX_CONF_OK, align 8
  %76 = icmp ne i8* %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %52
  %78 = load i8*, i8** %12, align 8
  store i8* %78, i8** %6, align 8
  br label %104

79:                                               ; preds = %52
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i8* @ngx_http_merge_locations(%struct.TYPE_13__* %80, i32* %83, i8** %86, %struct.TYPE_9__* %87, i64 %88)
  store i8* %89, i8** %12, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load i8*, i8** @NGX_CONF_OK, align 8
  %92 = icmp ne i8* %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %79
  %94 = load i8*, i8** %12, align 8
  store i8* %94, i8** %6, align 8
  br label %104

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95
  %97 = load i32*, i32** %13, align 8
  %98 = call i32* @ngx_queue_next(i32* %97)
  store i32* %98, i32** %13, align 8
  br label %32

99:                                               ; preds = %32
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %101 = bitcast %struct.TYPE_12__* %100 to i8*
  %102 = bitcast %struct.TYPE_12__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 8, i1 false)
  %103 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %103, i8** %6, align 8
  br label %104

104:                                              ; preds = %99, %93, %77, %20
  %105 = load i8*, i8** %6, align 8
  ret i8* %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @ngx_queue_head(i32*) #2

declare dso_local i32* @ngx_queue_sentinel(i32*) #2

declare dso_local i32* @ngx_queue_next(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
