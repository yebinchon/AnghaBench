; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_copy.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_ps_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }

@stb_ps_array_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @stb_ps_copy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = ptrtoint i32* %10 to i64
  %12 = trunc i64 %11 to i32
  %13 = and i32 3, %12
  switch i32 %13, label %81 [
    i32 129, label %14
    i32 130, label %16
    i32 131, label %25
    i32 128, label %66
  ]

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  store i32* %15, i32** %2, align 8
  br label %83

16:                                               ; preds = %1
  %17 = call i64 @malloc(i32 4)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @GetBucket(i32* %19)
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @EncodeBucket(i32* %23)
  store i32* %24, i32** %2, align 8
  br label %83

25:                                               ; preds = %1
  %26 = load i32*, i32** %3, align 8
  %27 = call %struct.TYPE_9__* @GetArray(i32* %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %6, align 8
  %28 = load i32, i32* @stb_ps_array_max, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = add i64 16, %30
  %32 = trunc i64 %31 to i32
  %33 = call i64 @malloc(i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %7, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %60, %25
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %40

63:                                               ; preds = %40
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = call i32* @EncodeArray(%struct.TYPE_9__* %64)
  store i32* %65, i32** %2, align 8
  br label %83

66:                                               ; preds = %1
  %67 = load i32*, i32** %3, align 8
  %68 = call %struct.TYPE_8__* @GetHash(i32* %67)
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %8, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.TYPE_8__* @stb_ps_makehash(i32 %71, i32 %74, i32 %77)
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %9, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = call i32* @EncodeHash(%struct.TYPE_8__* %79)
  store i32* %80, i32** %2, align 8
  br label %83

81:                                               ; preds = %1
  %82 = call i32 @assert(i32 0)
  store i32* null, i32** %2, align 8
  br label %83

83:                                               ; preds = %81, %66, %63, %16, %14
  %84 = load i32*, i32** %2, align 8
  ret i32* %84
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @GetBucket(i32*) #1

declare dso_local i32* @EncodeBucket(i32*) #1

declare dso_local %struct.TYPE_9__* @GetArray(i32*) #1

declare dso_local i32* @EncodeArray(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_8__* @GetHash(i32*) #1

declare dso_local %struct.TYPE_8__* @stb_ps_makehash(i32, i32, i32) #1

declare dso_local i32* @EncodeHash(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
