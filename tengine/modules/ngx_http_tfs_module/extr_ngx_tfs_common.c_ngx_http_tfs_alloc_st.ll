; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_alloc_st.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_alloc_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__, i32, i32, %struct.TYPE_18__, i32, %struct.TYPE_17__, %struct.TYPE_21__, %struct.TYPE_20__*, %struct.TYPE_15__, %struct.TYPE_14__, i32*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32*, i32*, i32*, i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32* }

@NGX_HTTP_TFS_SERVER_COUNT = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_NAME_SERVER = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_DATA_SERVER = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_ACTION_WRITE_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_ACTION_READ_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_MAX_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @ngx_http_tfs_alloc_st(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 13
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %8, %struct.TYPE_20__** %5, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %10 = icmp ne %struct.TYPE_20__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 12
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 13
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %16, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %2, align 8
  br label %174

18:                                               ; preds = %1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @ngx_palloc(i32 %21, i32 136)
  %23 = bitcast i8* %22 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %5, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = icmp eq %struct.TYPE_20__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %2, align 8
  br label %174

27:                                               ; preds = %18
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = call i32 @ngx_memcpy(%struct.TYPE_20__* %28, %struct.TYPE_20__* %29, i32 136)
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 11
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %33, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32* @ngx_http_tfs_alloc_chains(i32 %36, i32 2)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 10
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 10
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %2, align 8
  br label %174

45:                                               ; preds = %27
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NGX_HTTP_TFS_SERVER_COUNT, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = call %struct.TYPE_20__* @ngx_pcalloc(i32 %51, i32 %55)
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 7
  store %struct.TYPE_20__* %56, %struct.TYPE_20__** %58, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 7
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  %62 = icmp eq %struct.TYPE_20__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %2, align 8
  br label %174

64:                                               ; preds = %45
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 7
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i64 %68
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 7
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  %73 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i64 %73
  %75 = call i32 @ngx_memcpy(%struct.TYPE_20__* %69, %struct.TYPE_20__* %74, i32 4)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 7
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 7
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %84, align 8
  %86 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 7
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %91, align 8
  %93 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i64 %93
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 7
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  %98 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i64 %98
  %100 = call i32 @ngx_memcpy(%struct.TYPE_20__* %94, %struct.TYPE_20__* %99, i32 4)
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 7
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 6
  store %struct.TYPE_21__* %106, %struct.TYPE_21__** %4, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NGX_HTTP_TFS_ACTION_WRITE_FILE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %64
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  store i32* null, i32** %116, align 8
  br label %161

117:                                              ; preds = %64
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @NGX_HTTP_TFS_ACTION_READ_FILE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %160

125:                                              ; preds = %117
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 4
  %130 = call i8* @ngx_palloc(i32 %128, i32 %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 1
  store i32* %131, i32** %133, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %2, align 8
  br label %174

139:                                              ; preds = %125
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 4
  store i32* %142, i32** %144, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 3
  store i32* %147, i32** %149, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* @NGX_HTTP_TFS_MAX_FRAGMENT_SIZE, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 2
  store i32* %155, i32** %157, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  br label %160

160:                                              ; preds = %139, %117
  br label %161

161:                                              ; preds = %160, %114
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  store i32* %163, i32** %166, align 8
  %167 = load i32, i32* @NGX_HTTP_TFS_NO, align 4
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %173, %struct.TYPE_20__** %2, align 8
  br label %174

174:                                              ; preds = %161, %138, %63, %44, %26, %11
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  ret %struct.TYPE_20__* %175
}

declare dso_local i8* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32* @ngx_http_tfs_alloc_chains(i32, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_pcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
