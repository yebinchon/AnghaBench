; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_10__*, %struct.TYPE_8__*, i8* }
%struct.TYPE_9__ = type { i8*, i64, i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FUZZER_MX_OUTPUT_LENGTH = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @fuzzerFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzerFilter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %19 = call i32 @fuzzerClearCursor(%struct.TYPE_11__* %18, i32 1)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i32 2147483647, i32* %21, align 8
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %5
  %26 = load i32**, i32*** %11, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @sqlite3_value_text(i32* %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %13, align 8
  %31 = load i32, i32* %15, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %25, %5
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32**, i32*** %11, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @sqlite3_value_int(i32* %42)
  %44 = inttoptr i64 %43 to i8*
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %37, %33
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i32**, i32*** %11, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @sqlite3_value_int(i32* %59)
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %54, %50
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 4
  store i32 %71, i32* %74, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %86, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = icmp eq %struct.TYPE_10__* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i8*, i8** %13, align 8
  %96 = call i64 @strlen(i8* %95)
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* @FUZZER_MX_OUTPUT_LENGTH, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %66
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = call %struct.TYPE_10__* @fuzzerNewStem(%struct.TYPE_11__* %101, i8* %102, i8* null)
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %14, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %107 = icmp eq %struct.TYPE_10__* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %109, i32* %6, align 4
  br label %125

110:                                              ; preds = %100
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  store %struct.TYPE_9__* %112, %struct.TYPE_9__** %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %123

120:                                              ; preds = %66
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  br label %123

123:                                              ; preds = %120, %110
  %124 = load i32, i32* @SQLITE_OK, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %123, %108
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @fuzzerClearCursor(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @sqlite3_value_int(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_10__* @fuzzerNewStem(%struct.TYPE_11__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
