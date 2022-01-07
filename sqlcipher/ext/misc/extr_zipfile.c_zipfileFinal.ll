; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileFinal.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileFinal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i64, i8*, i8* }

@ZIPFILE_EOCD_FIXED_SZ = common dso_local global i64 0, align 8
@zipfileFree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zipfileFinal(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @sqlite3_aggregate_context(i32* %7, i32 40)
  %9 = inttoptr i64 %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = icmp eq %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %115

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %104

18:                                               ; preds = %13
  %19 = call i32 @memset(%struct.TYPE_9__* %4, i32 0, i32 32)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %43, %47
  %49 = load i64, i64* @ZIPFILE_EOCD_FIXED_SZ, align 8
  %50 = add i64 %48, %49
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @sqlite3_malloc64(i64 %51)
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %18
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @sqlite3_result_error_nomem(i32* %57)
  br label %103

59:                                               ; preds = %18
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @memcpy(i32* %60, i32 %64, i64 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @memcpy(i32* %75, i32 %79, i64 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %89, %93
  %95 = getelementptr inbounds i32, i32* %85, i64 %94
  %96 = call i32 @zipfileSerializeEOCD(%struct.TYPE_9__* %4, i32* %95)
  %97 = load i32*, i32** %2, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i64, i64* %5, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* @zipfileFree, align 4
  %102 = call i32 @sqlite3_result_blob(i32* %97, i32* %98, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %59, %56
  br label %104

104:                                              ; preds = %103, %13
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @sqlite3_free(i32 %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @sqlite3_free(i32 %113)
  br label %115

115:                                              ; preds = %104, %12
  ret void
}

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @sqlite3_malloc64(i64) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @zipfileSerializeEOCD(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i32*, i32, i32) #1

declare dso_local i32 @sqlite3_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
