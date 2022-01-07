; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_script.c_ngx_http_lua_compile_complex_value.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_script.c_ngx_http_lua_compile_complex_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32*, i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i8* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_15__**, %struct.TYPE_15__**, %struct.TYPE_12__*, i32, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_compile_complex_value(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %35, %1
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 36
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %31, %22
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %16

38:                                               ; preds = %16
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = bitcast %struct.TYPE_12__* %42 to i8*
  %45 = bitcast %struct.TYPE_12__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i64, i64* @NGX_OK, align 8
  store i64 %57, i64* %2, align 8
  br label %124

58:                                               ; preds = %38
  %59 = load i64, i64* %7, align 8
  %60 = mul i64 %59, 12
  %61 = add i64 %60, 8
  store i64 %61, i64* %6, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @ngx_array_init(%struct.TYPE_15__* %8, i32 %64, i64 %65, i32 1)
  %67 = load i64, i64* @NGX_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i64, i64* @NGX_ERROR, align 8
  store i64 %70, i64* %2, align 8
  br label %124

71:                                               ; preds = %58
  %72 = load i64, i64* %7, align 8
  %73 = mul i64 %72, 12
  %74 = add i64 %73, 8
  %75 = add i64 %74, 8
  %76 = sub i64 %75, 1
  %77 = and i64 %76, -8
  store i64 %77, i64* %6, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @ngx_array_init(%struct.TYPE_15__* %9, i32 %80, i64 %81, i32 1)
  %83 = load i64, i64* @NGX_OK, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i64, i64* @NGX_ERROR, align 8
  store i64 %86, i64* %2, align 8
  br label %124

87:                                               ; preds = %71
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %11, align 8
  %88 = call i32 @ngx_memzero(%struct.TYPE_13__* %12, i32 40)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 6
  store i32 %91, i32* %92, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 5
  store i32 %95, i32* %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 4
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  store %struct.TYPE_15__** %10, %struct.TYPE_15__*** %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  store %struct.TYPE_15__** %11, %struct.TYPE_15__*** %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = call i64 @ngx_http_lua_script_compile(%struct.TYPE_13__* %12)
  %104 = load i64, i64* @NGX_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %87
  %107 = call i32 @ngx_array_destroy(%struct.TYPE_15__* %8)
  %108 = call i32 @ngx_array_destroy(%struct.TYPE_15__* %9)
  %109 = load i64, i64* @NGX_ERROR, align 8
  store i64 %109, i64* %2, align 8
  br label %124

110:                                              ; preds = %87
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store i32* %112, i32** %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  store i32* %118, i32** %122, align 8
  %123 = load i64, i64* @NGX_OK, align 8
  store i64 %123, i64* %2, align 8
  br label %124

124:                                              ; preds = %110, %106, %85, %69, %56
  %125 = load i64, i64* %2, align 8
  ret i64 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_15__*, i32, i64, i32) #2

declare dso_local i32 @ngx_memzero(%struct.TYPE_13__*, i32) #2

declare dso_local i64 @ngx_http_lua_script_compile(%struct.TYPE_13__*) #2

declare dso_local i32 @ngx_array_destroy(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
