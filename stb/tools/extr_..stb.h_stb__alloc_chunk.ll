; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__alloc_chunk.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__alloc_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__* }

@stb_alloc_chunk_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i32, i32)* @stb__alloc_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stb__alloc_chunk(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.TYPE_6__* @stb__chunks(i32* %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %11, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %63

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @stb_alloc_chunk_size, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @stb__try_chunk(%struct.TYPE_6__* %23, i32 %24, i32 %25, i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %5, align 8
  br label %123

36:                                               ; preds = %22
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i8* @stb__try_chunk(%struct.TYPE_6__* %44, i32 %45, i32 %46, i32 %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load i8*, i8** %10, align 8
  store i8* %56, i8** %5, align 8
  br label %123

57:                                               ; preds = %41
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @stb__sort_chunks(i32* %58)
  %60 = load i32*, i32** %6, align 8
  %61 = call %struct.TYPE_6__* @stb__chunks(i32* %60)
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %11, align 8
  br label %62

62:                                               ; preds = %57, %36
  br label %63

63:                                               ; preds = %62, %18, %4
  %64 = load i32, i32* @stb_alloc_chunk_size, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 16, %72
  %74 = icmp ule i64 %73, 16
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  br label %77

77:                                               ; preds = %70, %116
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 16, %78
  %80 = call i64 @malloc(i32 %79)
  %81 = inttoptr i64 %80 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %12, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %83 = icmp eq %struct.TYPE_6__* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i8* null, i8** %5, align 8
  br label %123

85:                                               ; preds = %77
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = sub i64 %87, 16
  %89 = trunc i64 %88 to i32
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i8* @stb__try_chunk(%struct.TYPE_6__* %92, i32 %93, i32 %94, i32 %95)
  store i8* %96, i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %116

99:                                               ; preds = %85
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %102, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %105 = call i32 @stb__setchunks(i32* %103, %struct.TYPE_6__* %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @stb__sort_chunks(i32* %112)
  br label %114

114:                                              ; preds = %111, %99
  %115 = load i8*, i8** %10, align 8
  store i8* %115, i8** %5, align 8
  br label %123

116:                                              ; preds = %85
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %118 = call i32 @free(%struct.TYPE_6__* %117)
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 16, %119
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %13, align 4
  br label %77

123:                                              ; preds = %114, %84, %51, %30
  %124 = load i8*, i8** %5, align 8
  ret i8* %124
}

declare dso_local %struct.TYPE_6__* @stb__chunks(i32*) #1

declare dso_local i8* @stb__try_chunk(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @stb__sort_chunks(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @stb__setchunks(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
