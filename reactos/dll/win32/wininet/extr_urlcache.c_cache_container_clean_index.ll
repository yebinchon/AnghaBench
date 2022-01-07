; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_cache_container_clean_index.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_cache_container_clean_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"(%s %s)\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ALLOCATION_TABLE_SIZE = common dso_local global i32 0, align 4
@BLOCKSIZE = common dso_local global i32 0, align 4
@ENTRY_START_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"index file has maximal size\0A\00", align 1
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@FILE_MAP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_11__**)* @cache_container_clean_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cache_container_clean_index(%struct.TYPE_12__* %0, %struct.TYPE_11__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %5, align 8
  %8 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @debugstr_a(i32 %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @debugstr_w(i32 %16)
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = call i64 @urlcache_clean_leaked_entries(%struct.TYPE_12__* %19, %struct.TYPE_11__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %24, i64* %3, align 8
  br label %71

25:                                               ; preds = %2
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @ALLOCATION_TABLE_SIZE, align 4
  %30 = mul nsw i32 %29, 8
  %31 = load i32, i32* @BLOCKSIZE, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @ENTRY_START_OFFSET, align 8
  %35 = add nsw i64 %33, %34
  %36 = icmp sge i64 %28, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %39, i64* %3, align 8
  br label %71

40:                                               ; preds = %25
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = call i32 @cache_container_close_index(%struct.TYPE_12__* %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %46, 2
  %48 = call i64 @cache_container_open_index(%struct.TYPE_12__* %43, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @ERROR_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %3, align 8
  br label %71

54:                                               ; preds = %40
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FILE_MAP_WRITE, align 4
  %59 = call %struct.TYPE_11__* @MapViewOfFile(i32 %57, i32 %58, i32 0, i32 0, i32 0)
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %6, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = icmp ne %struct.TYPE_11__* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = call i64 (...) @GetLastError()
  store i64 %63, i64* %3, align 8
  br label %71

64:                                               ; preds = %54
  %65 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = call i32 @UnmapViewOfFile(%struct.TYPE_11__* %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %69, align 8
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %64, %62, %52, %37, %23
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i64 @urlcache_clean_leaked_entries(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @cache_container_close_index(%struct.TYPE_12__*) #1

declare dso_local i64 @cache_container_open_index(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_11__* @MapViewOfFile(i32, i32, i32, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @UnmapViewOfFile(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
