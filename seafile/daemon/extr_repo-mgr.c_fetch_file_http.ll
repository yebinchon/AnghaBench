; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_fetch_file_http.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_fetch_file_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, i32* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i8*, i8*, i8*, %struct.TYPE_18__*, %struct.cache_entry* }
%struct.TYPE_18__ = type { i32, i64, i32 }
%struct.cache_entry = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"wt and index are consistent. no need to checkout.\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@S_IFMT = common dso_local global i32 0, align 4
@FETCH_CHECKOUT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"update index only.\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"File %s is updated by user. Will checkout to conflict file later.\0A\00", align 1
@HTTP_TASK_STATE_CANCELED = common dso_local global i64 0, align 8
@FETCH_CHECKOUT_CANCELED = common dso_local global i32 0, align 4
@FETCH_CHECKOUT_TRANSFER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @fetch_file_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_file_http(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca [41 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 4
  %21 = load %struct.cache_entry*, %struct.cache_entry** %20, align 8
  store %struct.cache_entry* %21, %struct.cache_entry** %7, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %8, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %9, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %10, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %11, align 8
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %14, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds [41 x i8], [41 x i8]* %13, i64 0, i64 0
  %39 = call i32 @rawdata_to_hex(i32 %37, i8* %38, i32 20)
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @seaf_stat(i8* %40, %struct.TYPE_14__* %12)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %145

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @S_ISREG(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %145

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %55 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %120

59:                                               ; preds = %51
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %64 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @memcmp(i32 %62, i32 %65, i32 20)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %119

68:                                               ; preds = %59
  %69 = call i32 @seaf_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %70 = load i8*, i8** @TRUE, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %77 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %68
  %81 = load i8*, i8** %10, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @S_IFMT, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = call i32 @chmod(i8* %81, i32 %87)
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %93 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %80, %68
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %99 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %97, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %94
  %104 = load i8*, i8** %10, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @seaf_set_file_time(i8* %104, i64 %107)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %113 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  br label %115

115:                                              ; preds = %103, %94
  %116 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %117 = call i32 @fill_stat_cache_info(%struct.cache_entry* %116, %struct.TYPE_14__* %12)
  %118 = load i32, i32* @FETCH_CHECKOUT_SUCCESS, align 4
  store i32 %118, i32* %3, align 4
  br label %163

119:                                              ; preds = %59
  br label %144

120:                                              ; preds = %51
  %121 = load i8*, i8** %10, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i64 @compare_file_content(i8* %121, %struct.TYPE_14__* %12, i32 %124, i32* %125, i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %120
  %130 = call i32 @seaf_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %131 = load i8*, i8** @TRUE, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %135 = call i32 @fill_stat_cache_info(%struct.cache_entry* %134, %struct.TYPE_14__* %12)
  %136 = load i32, i32* @FETCH_CHECKOUT_SUCCESS, align 4
  store i32 %136, i32* %3, align 4
  br label %163

137:                                              ; preds = %120
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @seaf_message(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i8* %138)
  %140 = load i8*, i8** @TRUE, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143, %119
  br label %145

145:                                              ; preds = %144, %46, %2
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %147 = getelementptr inbounds [41 x i8], [41 x i8]* %13, i64 0, i64 0
  %148 = call i32 @http_tx_task_download_file_blocks(%struct.TYPE_15__* %146, i8* %147)
  store i32 %148, i32* %15, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* @FETCH_CHECKOUT_CANCELED, align 4
  store i32 %155, i32* %3, align 4
  br label %163

156:                                              ; preds = %145
  %157 = load i32, i32* %15, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32, i32* @FETCH_CHECKOUT_TRANSFER_ERROR, align 4
  store i32 %160, i32* %3, align 4
  br label %163

161:                                              ; preds = %156
  %162 = load i32, i32* @FETCH_CHECKOUT_SUCCESS, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %159, %154, %129, %115
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @rawdata_to_hex(i32, i8*, i32) #1

declare dso_local i64 @seaf_stat(i8*, %struct.TYPE_14__*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @seaf_debug(i8*) #1

declare dso_local i32 @chmod(i8*, i32) #1

declare dso_local i32 @seaf_set_file_time(i8*, i64) #1

declare dso_local i32 @fill_stat_cache_info(%struct.cache_entry*, %struct.TYPE_14__*) #1

declare dso_local i64 @compare_file_content(i8*, %struct.TYPE_14__*, i32, i32*, i32) #1

declare dso_local i32 @seaf_message(i8*, i8*) #1

declare dso_local i32 @http_tx_task_download_file_blocks(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
