; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_create_hash_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_create_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i64, i8*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i8* null, align 8
@HASH_SIGNATURE = common dso_local global i32 0, align 4
@HASHTABLE_SIZE = common dso_local global i32 0, align 4
@HASHTABLE_FREE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_12__**)* @urlcache_create_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @urlcache_create_hash_table(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %7, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %13 = bitcast %struct.TYPE_12__** %12 to i32**
  %14 = call i8* @urlcache_entry_alloc(%struct.TYPE_11__* %11, i32 32, i32** %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** @ERROR_SUCCESS, align 8
  %16 = icmp ne i8* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %4, align 8
  br label %90

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = bitcast %struct.TYPE_12__* %21 to i32*
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = bitcast %struct.TYPE_11__* %23 to i32*
  %25 = ptrtoint i32* %22 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %8, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  br label %40

36:                                               ; preds = %19
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @HASH_SIGNATURE, align 4
  %42 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  store i8* null, i8** %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = icmp ne %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  br label %57

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %51
  %58 = phi i64 [ %55, %51 ], [ 0, %56 ]
  %59 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %85, %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @HASHTABLE_SIZE, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %62
  %67 = load i8*, i8** @HASHTABLE_FREE, align 8
  %68 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i8* %67, i8** %75, align 8
  %76 = load i8*, i8** @HASHTABLE_FREE, align 8
  %77 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i8* %76, i8** %84, align 8
  br label %85

85:                                               ; preds = %66
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %62

88:                                               ; preds = %62
  %89 = load i8*, i8** @ERROR_SUCCESS, align 8
  store i8* %89, i8** %4, align 8
  br label %90

90:                                               ; preds = %88, %17
  %91 = load i8*, i8** %4, align 8
  ret i8* %91
}

declare dso_local i8* @urlcache_entry_alloc(%struct.TYPE_11__*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
