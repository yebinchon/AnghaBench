; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_parse.c_get_compressed_chunk.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_parse.c_get_compressed_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_7__ = type { i32** }

@NUM_CACHED_X = common dso_local global i32 0, align 4
@NUM_CACHED_Z = common dso_local global i32 0, align 4
@cached_chunk = common dso_local global %struct.TYPE_8__*** null, align 8
@NUM_CHUNKS_PER_REGION_LOG2 = common dso_local global i32 0, align 4
@NUM_CHUNKS_PER_REGION = common dso_local global i32 0, align 4
@last_region = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32, i32)* @get_compressed_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @get_compressed_chunk(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @NUM_CACHED_X, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NUM_CACHED_Z, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %19, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_8__***, %struct.TYPE_8__**** @cached_chunk, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_8__**, %struct.TYPE_8__*** %23, i64 %25
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %29
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %8, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %3, align 8
  br label %149

48:                                               ; preds = %40, %34, %2
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @NUM_CHUNKS_PER_REGION_LOG2, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @NUM_CHUNKS_PER_REGION_LOG2, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call %struct.TYPE_7__* @get_region(i32 %55, i32 %56)
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %11, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %48
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = call i32 @deref_compressed_chunk(%struct.TYPE_8__* %61)
  %63 = load %struct.TYPE_8__***, %struct.TYPE_8__**** @cached_chunk, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__**, %struct.TYPE_8__*** %63, i64 %65
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %67, i64 %69
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %70, align 8
  br label %71

71:                                               ; preds = %60, %48
  %72 = call i8* @malloc(i32 24)
  %73 = bitcast i8* %72 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %8, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @NUM_CHUNKS_PER_REGION, align 4
  %82 = sub nsw i32 %81, 1
  %83 = and i32 %80, %82
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @NUM_CHUNKS_PER_REGION, align 4
  %86 = sub nsw i32 %85, 1
  %87 = and i32 %84, %86
  store i32 %87, i32* %13, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = and i32 %99, 255
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %71
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @open_file(i32 %103, i32 %104)
  %106 = load i32, i32* @last_region, align 4
  %107 = load i32, i32* %14, align 4
  %108 = ashr i32 %107, 8
  %109 = mul nsw i32 %108, 4096
  %110 = load i32, i32* @SEEK_SET, align 4
  %111 = call i32 @fseek(i32 %106, i32 %109, i32 %110)
  %112 = load i32, i32* %14, align 4
  %113 = and i32 %112, 255
  %114 = mul nsw i32 %113, 4096
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @malloc(i32 %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @last_region, align 4
  %130 = call i32 @fread(i8* %125, i32 1, i32 %128, i32 %129)
  br label %136

131:                                              ; preds = %71
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  store i32 0, i32* %133, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 4
  store i8* null, i8** %135, align 8
  br label %136

136:                                              ; preds = %131, %102
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  store i32 1, i32* %138, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %140 = load %struct.TYPE_8__***, %struct.TYPE_8__**** @cached_chunk, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__**, %struct.TYPE_8__*** %140, i64 %142
  %144 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %144, i64 %146
  store %struct.TYPE_8__* %139, %struct.TYPE_8__** %147, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %148, %struct.TYPE_8__** %3, align 8
  br label %149

149:                                              ; preds = %136, %46
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %150
}

declare dso_local %struct.TYPE_7__* @get_region(i32, i32) #1

declare dso_local i32 @deref_compressed_chunk(%struct.TYPE_8__*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @open_file(i32, i32) #1

declare dso_local i32 @fseek(i32, i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
