; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_malloc_base.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_malloc_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }

@stb_alloc_count_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32, i32)* @malloc_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @malloc_base(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call %struct.TYPE_9__* @stb__get_context(i8* %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @stb_lowbit8(i32 %22)
  %24 = shl i32 1, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 4, i32* %12, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, i32* %12, align 4
  br label %36

35:                                               ; preds = %31
  store i32 256, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %37
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @stb_is_pow2(i32 %52)
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 128
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 8
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 131, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %57, %51
  %62 = load i32, i32* %8, align 4
  switch i32 %62, label %129 [
    i32 131, label %63
    i32 128, label %82
    i32 130, label %97
    i32 129, label %107
  ]

63:                                               ; preds = %61
  %64 = load i64, i64* %7, align 8
  %65 = add i64 %64, 8
  %66 = call i64 @malloc(i64 %65)
  %67 = inttoptr i64 %66 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %13, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %69 = icmp eq %struct.TYPE_9__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i8* null, i8** %5, align 8
  br label %135

71:                                               ; preds = %63
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 1
  %74 = bitcast %struct.TYPE_9__* %73 to i8*
  store i8* %74, i8** %10, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %79 = call i32 @stb__insert_alloc(%struct.TYPE_9__* %77, %struct.TYPE_9__* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %81 = call i32 @stb__setchunks(%struct.TYPE_9__* %80, i32* null)
  br label %131

82:                                               ; preds = %61
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 4
  %85 = call i64 @malloc(i64 %84)
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** %14, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i8* null, i8** %5, align 8
  br label %135

90:                                               ; preds = %82
  %91 = load i32*, i32** %14, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = bitcast i32* %92 to i8*
  store i8* %93, i8** %10, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @stb__insert_nochild(%struct.TYPE_9__* %94, i32* %95)
  br label %131

97:                                               ; preds = %61
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %99 = load i64, i64* %7, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* %9, align 4
  %102 = call i8* @stb__alloc_chunk(%struct.TYPE_9__* %98, i32 %100, i32 %101, i32 0)
  store i8* %102, i8** %10, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i8* null, i8** %5, align 8
  br label %135

106:                                              ; preds = %97
  br label %131

107:                                              ; preds = %61
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp ult i64 %109, 4
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 4, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %107
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %114 = load i64, i64* %7, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i32, i32* %9, align 4
  %117 = call i8* @stb__alloc_chunk(%struct.TYPE_9__* %113, i32 %115, i32 %116, i32 4)
  %118 = bitcast i8* %117 to i32*
  store i32* %118, i32** %15, align 8
  %119 = load i32*, i32** %15, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  store i8* null, i8** %5, align 8
  br label %135

122:                                              ; preds = %112
  %123 = load i32*, i32** %15, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %125 = call i32 @stb__setparent(i32* %123, %struct.TYPE_9__* %124)
  %126 = load i32*, i32** %15, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = bitcast i32* %127 to i8*
  store i8* %128, i8** %10, align 8
  br label %131

129:                                              ; preds = %61
  store i8* null, i8** %10, align 8
  %130 = call i32 @assert(i32 0)
  br label %131

131:                                              ; preds = %129, %122, %106, %90, %71
  %132 = load i32, i32* @stb_alloc_count_alloc, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* @stb_alloc_count_alloc, align 4
  %134 = load i8*, i8** %10, align 8
  store i8* %134, i8** %5, align 8
  br label %135

135:                                              ; preds = %131, %121, %105, %89, %70
  %136 = load i8*, i8** %5, align 8
  ret i8* %136
}

declare dso_local %struct.TYPE_9__* @stb__get_context(i8*) #1

declare dso_local i32 @stb_lowbit8(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stb_is_pow2(i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @stb__insert_alloc(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @stb__setchunks(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @stb__insert_nochild(%struct.TYPE_9__*, i32*) #1

declare dso_local i8* @stb__alloc_chunk(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @stb__setparent(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
