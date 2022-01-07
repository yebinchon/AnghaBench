; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_script.c_ngx_http_lua_complex_value.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_script.c_ngx_http_lua_complex_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_18__ = type { i32*, i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32, i32*, i32*, i32*, i32*, i32 }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_complex_value(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i64 %2, i32 %3, i32* %4, %struct.TYPE_18__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32 (%struct.TYPE_17__*)*, align 8
  %19 = alloca i64 (%struct.TYPE_17__*)*, align 8
  %20 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store %struct.TYPE_18__* %5, %struct.TYPE_18__** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %7
  %26 = load i32*, i32** %15, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = bitcast i32* %31 to i8*
  %33 = load i32*, i32** %13, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %11, align 8
  %38 = sub i64 %36, %37
  %39 = call i32 @luaL_addlstring(i32* %26, i8* %32, i64 %38)
  %40 = load i32*, i32** %15, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @luaL_addlstring(i32* %40, i8* %45, i64 %49)
  %51 = load i32, i32* @NGX_OK, align 4
  store i32 %51, i32* %8, align 4
  br label %144

52:                                               ; preds = %7
  %53 = call i32 @ngx_memzero(%struct.TYPE_17__* %20, i32 48)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 5
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = mul nsw i32 %60, 2
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  store i32* %63, i32** %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 4
  store i32* %67, i32** %68, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  store i32* %71, i32** %72, align 8
  store i64 0, i64* %16, align 8
  br label %73

73:                                               ; preds = %79, %52
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = bitcast i32* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = bitcast i32* %81 to i64 (%struct.TYPE_17__*)**
  %83 = load i64 (%struct.TYPE_17__*)*, i64 (%struct.TYPE_17__*)** %82, align 8
  store i64 (%struct.TYPE_17__*)* %83, i64 (%struct.TYPE_17__*)** %19, align 8
  %84 = load i64 (%struct.TYPE_17__*)*, i64 (%struct.TYPE_17__*)** %19, align 8
  %85 = call i64 %84(%struct.TYPE_17__* %20)
  %86 = load i64, i64* %16, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %16, align 8
  br label %73

88:                                               ; preds = %73
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* %16, align 8
  %93 = call i32* @ngx_pnalloc(i32 %91, i64 %92)
  store i32* %93, i32** %17, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @NGX_ERROR, align 4
  store i32 %97, i32* %8, align 4
  br label %144

98:                                               ; preds = %88
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  store i32* %101, i32** %102, align 8
  %103 = load i32*, i32** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 3
  store i32* %103, i32** %104, align 8
  br label %105

105:                                              ; preds = %111, %98
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = bitcast i32* %107 to i64*
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = bitcast i32* %113 to i32 (%struct.TYPE_17__*)**
  %115 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %114, align 8
  store i32 (%struct.TYPE_17__*)* %115, i32 (%struct.TYPE_17__*)** %18, align 8
  %116 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %18, align 8
  %117 = call i32 %116(%struct.TYPE_17__* %20)
  br label %105

118:                                              ; preds = %105
  %119 = load i32*, i32** %15, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %11, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = bitcast i32* %124 to i8*
  %126 = load i32*, i32** %13, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %11, align 8
  %131 = sub i64 %129, %130
  %132 = call i32 @luaL_addlstring(i32* %119, i8* %125, i64 %131)
  %133 = load i32*, i32** %15, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = bitcast i32* %134 to i8*
  %136 = load i64, i64* %16, align 8
  %137 = call i32 @luaL_addlstring(i32* %133, i8* %135, i64 %136)
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %17, align 8
  %142 = call i32 @ngx_pfree(i32 %140, i32* %141)
  %143 = load i32, i32* @NGX_OK, align 4
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %118, %96, %25
  %145 = load i32, i32* %8, align 4
  ret i32 %145
}

declare dso_local i32 @luaL_addlstring(i32*, i8*, i64) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_17__*, i32) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_pfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
