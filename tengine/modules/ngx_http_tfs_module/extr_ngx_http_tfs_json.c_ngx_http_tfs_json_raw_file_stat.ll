; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_json.c_ngx_http_tfs_json_raw_file_stat.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_json.c_ngx_http_tfs_json_raw_file_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@NGX_HTTP_TFS_GMT_TIME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"FILE_NAME\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"BLOCK_ID\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"FILE_ID\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"OFFSET\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"OCCUPY_SIZE\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"MODIFY_TIME\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"CREATE_TIME\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"CRC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ngx_http_tfs_json_raw_file_stat(%struct.TYPE_11__* %0, i8* %1, i32 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %17 = load i32, i32* @NGX_HTTP_TFS_GMT_TIME_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  store i64 0, i64* %10, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @yajl_gen_map_open(i32 %24)
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @yajl_gen_string(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %28 = load i32, i32* %13, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @yajl_gen_string(i32 %28, i8* %29, i32 18)
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @yajl_gen_string(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @yajl_gen_integer(i32 %33, i32 %34)
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @yajl_gen_string(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @yajl_gen_integer(i32 %38, i32 %41)
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @yajl_gen_string(i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @yajl_gen_integer(i32 %45, i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @yajl_gen_string(i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @yajl_gen_integer(i32 %52, i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @yajl_gen_string(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @yajl_gen_integer(i32 %59, i32 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ngx_http_tfs_time(i8* %20, i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @yajl_gen_string(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @NGX_HTTP_TFS_GMT_TIME_SIZE, align 4
  %72 = call i32 @yajl_gen_string(i32 %70, i8* %20, i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ngx_http_tfs_time(i8* %20, i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @yajl_gen_string(i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 11)
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @NGX_HTTP_TFS_GMT_TIME_SIZE, align 4
  %81 = call i32 @yajl_gen_string(i32 %79, i8* %20, i32 %80)
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @yajl_gen_string(i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @yajl_gen_integer(i32 %84, i32 %87)
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @yajl_gen_string(i32 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @yajl_gen_integer(i32 %91, i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @yajl_gen_map_close(i32 %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call %struct.TYPE_12__* @ngx_alloc_chain_link(i32 %100)
  store %struct.TYPE_12__* %101, %struct.TYPE_12__** %15, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %103 = icmp eq %struct.TYPE_12__* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  store i32 1, i32* %16, align 4
  br label %141

105:                                              ; preds = %4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  store i32* null, i32** %107, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call %struct.TYPE_13__* @ngx_calloc_buf(i32 %110)
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %14, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %113 = icmp eq %struct.TYPE_13__* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  store i32 1, i32* %16, align 4
  br label %141

115:                                              ; preds = %105
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 4
  %119 = bitcast i64* %118 to i8**
  %120 = call i32 @yajl_gen_get_buf(i32 %116, i8** %119, i64* %10)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %10, align 8
  %125 = add i64 %123, %124
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  store %struct.TYPE_13__* %137, %struct.TYPE_13__** %139, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %140, %struct.TYPE_12__** %5, align 8
  store i32 1, i32* %16, align 4
  br label %141

141:                                              ; preds = %115, %114, %104
  %142 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @yajl_gen_map_open(i32) #2

declare dso_local i32 @yajl_gen_string(i32, i8*, i32) #2

declare dso_local i32 @yajl_gen_integer(i32, i32) #2

declare dso_local i32 @ngx_http_tfs_time(i8*, i32) #2

declare dso_local i32 @yajl_gen_map_close(i32) #2

declare dso_local %struct.TYPE_12__* @ngx_alloc_chain_link(i32) #2

declare dso_local %struct.TYPE_13__* @ngx_calloc_buf(i32) #2

declare dso_local i32 @yajl_gen_get_buf(i32, i8**, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
