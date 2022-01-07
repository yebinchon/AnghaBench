; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_parse.c_get_decoded_fastchunk_uncached.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_parse.c_get_decoded_fastchunk_uncached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_decoded_fastchunk_uncached(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = call i32 (...) @lock_chunk_get_mutex()
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.TYPE_4__* @get_compressed_chunk(i32 %12, i32 %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %7, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %19, %2
  %25 = call i32 (...) @unlock_chunk_get_mutex()
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32* null, i32** %3, align 8
  br label %75

31:                                               ; preds = %24
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @nbt_parse_uint32(i32* %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 %53, 3
  %55 = call i8* @stbi_zlib_decode_malloc_guesssize(i32* %51, i32 %52, i32 %54, i32* %9)
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = call i32 (...) @lock_chunk_get_mutex()
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = call i32 @deref_compressed_chunk(%struct.TYPE_4__* %65)
  %67 = call i32 (...) @unlock_chunk_get_mutex()
  store i32* null, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %31
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %70, %31
  %74 = load i32*, i32** %10, align 8
  store i32* %74, i32** %3, align 8
  br label %75

75:                                               ; preds = %73, %30
  %76 = load i32*, i32** %3, align 8
  ret i32* %76
}

declare dso_local i32 @lock_chunk_get_mutex(...) #1

declare dso_local %struct.TYPE_4__* @get_compressed_chunk(i32, i32) #1

declare dso_local i32 @unlock_chunk_get_mutex(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nbt_parse_uint32(i32*) #1

declare dso_local i8* @stbi_zlib_decode_malloc_guesssize(i32*, i32, i32, i32*) #1

declare dso_local i32 @deref_compressed_chunk(%struct.TYPE_4__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
