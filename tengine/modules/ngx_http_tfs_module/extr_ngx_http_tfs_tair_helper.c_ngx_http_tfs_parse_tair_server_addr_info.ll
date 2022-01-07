; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_tair_helper.c_ngx_http_tfs_parse_tair_server_addr_info.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_tair_helper.c_ngx_http_tfs_parse_tair_server_addr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }

@NGX_HTTP_TFS_TAIR_SERVER_ADDR_PART_COUNT = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_parse_tair_server_addr_info(%struct.TYPE_5__* %0, i32* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i32*, i32** %8, align 8
  store i32* %16, i32** %13, align 8
  store i64 0, i64* %15, align 8
  br label %17

17:                                               ; preds = %107, %5
  %18 = load i64, i64* %15, align 8
  %19 = load i64, i64* @NGX_HTTP_TFS_TAIR_SERVER_ADDR_PART_COUNT, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %110

21:                                               ; preds = %17
  %22 = load i32*, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32* @ngx_strlchr(i32* %22, i32* %26, i8 signext 59)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i64, i64* @NGX_ERROR, align 8
  store i64 %31, i64* %6, align 8
  br label %125

32:                                               ; preds = %21
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = ptrtoint i32* %33 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %14, align 4
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load i8*, i8** %10, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %14, align 4
  %46 = call i32* @ngx_slab_alloc_locked(i32* %44, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32* %46, i32** %52, align 8
  br label %64

53:                                               ; preds = %32
  %54 = load i8*, i8** %10, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i32, i32* %14, align 4
  %57 = call i32* @ngx_pcalloc(i32* %55, i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i64, i64* %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32* %57, i32** %63, align 8
  br label %64

64:                                               ; preds = %53, %42
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i64, i64* %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i64, i64* @NGX_ERROR, align 8
  store i64 %74, i64* %6, align 8
  br label %125

75:                                               ; preds = %64
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i64, i64* %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %76, i32* %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i64, i64* %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @memcpy(i32* %89, i32* %90, i32 %91)
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  %95 = load i32*, i32** %13, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %13, align 8
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* %9, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp sle i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %75
  %105 = load i64, i64* @NGX_ERROR, align 8
  store i64 %105, i64* %6, align 8
  br label %125

106:                                              ; preds = %75
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %15, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %15, align 8
  br label %17

110:                                              ; preds = %17
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i64 @ngx_atoi(i32* %111, i32 %112)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @NGX_ERROR, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %110
  %122 = load i64, i64* @NGX_ERROR, align 8
  store i64 %122, i64* %6, align 8
  br label %125

123:                                              ; preds = %110
  %124 = load i64, i64* @NGX_OK, align 8
  store i64 %124, i64* %6, align 8
  br label %125

125:                                              ; preds = %123, %121, %104, %73, %30
  %126 = load i64, i64* %6, align 8
  ret i64 %126
}

declare dso_local i32* @ngx_strlchr(i32*, i32*, i8 signext) #1

declare dso_local i32* @ngx_slab_alloc_locked(i32*, i32) #1

declare dso_local i32* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ngx_atoi(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
