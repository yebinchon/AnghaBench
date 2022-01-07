; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_parse_chunk_headers.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_parse_chunk_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32, i32*)* @parse_chunk_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @parse_chunk_headers(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 32
  %17 = trunc i64 %16 to i32
  %18 = call %struct.TYPE_4__* @xmalloc(i32 %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %119, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %122

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 16
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32* %28, i32** %10, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %9, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 15
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 128
  %48 = icmp eq i32 %47, 128
  br i1 %48, label %49, label %88

49:                                               ; preds = %23
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 15
  %54 = shl i32 %53, 4
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 240
  %59 = ashr i32 %58, 4
  %60 = or i32 %54, %59
  store i32 %60, i32* %11, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 15
  %65 = shl i32 %64, 4
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 240
  %70 = ashr i32 %69, 4
  %71 = or i32 %65, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %77, i32* %81, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  store i32 0, i32* %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 5
  store i32 0, i32* %85, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  store i32 1, i32* %87, align 4
  br label %118

88:                                               ; preds = %23
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 8
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %92, %95
  %97 = shl i32 %96, 4
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 4
  %102 = or i32 %97, %101
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %107
  store i32 %110, i32* %108, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 4
  store i32 0, i32* %112, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 8
  %115 = call i32 @U64_AT(i32* %114)
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %88, %49
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %19

122:                                              ; preds = %19
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  ret %struct.TYPE_4__* %123
}

declare dso_local %struct.TYPE_4__* @xmalloc(i32) #1

declare dso_local i32 @U64_AT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
