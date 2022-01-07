; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_json.c_ngx_http_tfs_json_file_hole_info.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_json.c_ngx_http_tfs_json_file_hole_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32* }
%struct.TYPE_14__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"OFFSET\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"LENGTH\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @ngx_http_tfs_json_file_hole_info(%struct.TYPE_11__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  store i64 0, i64* %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @yajl_gen_array_open(i32 %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %11, align 8
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %46, %2
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @yajl_gen_map_open(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @yajl_gen_string(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @yajl_gen_integer(i32 %32, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @yajl_gen_string(i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @yajl_gen_integer(i32 %39, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @yajl_gen_map_close(i32 %44)
  br label %46

46:                                               ; preds = %27
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %9, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 1
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %11, align 8
  br label %21

51:                                               ; preds = %21
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @yajl_gen_array_close(i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_13__* @ngx_alloc_chain_link(i32 %56)
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %10, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %59 = icmp eq %struct.TYPE_13__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %97

61:                                               ; preds = %51
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_14__* @ngx_calloc_buf(i32 %66)
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %8, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = icmp eq %struct.TYPE_14__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %97

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 4
  %75 = bitcast i64* %74 to i8**
  %76 = call i32 @yajl_gen_get_buf(i32 %72, i8** %75, i64* %6)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = add i64 %79, %80
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %95, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %3, align 8
  br label %97

97:                                               ; preds = %71, %70, %60
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %98
}

declare dso_local i32 @yajl_gen_array_open(i32) #1

declare dso_local i32 @yajl_gen_map_open(i32) #1

declare dso_local i32 @yajl_gen_string(i32, i8*, i32) #1

declare dso_local i32 @yajl_gen_integer(i32, i32) #1

declare dso_local i32 @yajl_gen_map_close(i32) #1

declare dso_local i32 @yajl_gen_array_close(i32) #1

declare dso_local %struct.TYPE_13__* @ngx_alloc_chain_link(i32) #1

declare dso_local %struct.TYPE_14__* @ngx_calloc_buf(i32) #1

declare dso_local i32 @yajl_gen_get_buf(i32, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
