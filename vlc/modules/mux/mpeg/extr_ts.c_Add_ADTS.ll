; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ts.c_Add_ADTS.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ts.c_Add_ADTS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i32*, i32 }

@ADTS_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*, %struct.TYPE_8__*)* @Add_ADTS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @Add_ADTS(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %19, %2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %3, align 8
  br label %125

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 7
  store i64 %33, i64* %7, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 1
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 7
  %42 = or i32 %37, %41
  %43 = and i32 %42, 15
  store i32 %43, i32* %8, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 3
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 15
  br i1 %50, label %51, label %58

51:                                               ; preds = %29
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 5
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %3, align 8
  br label %125

58:                                               ; preds = %51, %29
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 15
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 4, i32 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 3
  %68 = and i32 %67, 15
  store i32 %68, i32* %10, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.TYPE_9__* @block_Realloc(%struct.TYPE_9__* %69, i64 7, i64 %72)
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %11, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %12, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 255, i32* %78, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 241, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = shl i32 %81, 6
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 15
  %85 = shl i32 %84, 2
  %86 = or i32 %82, %85
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %87, 2
  %89 = and i32 %88, 1
  %90 = or i32 %86, %89
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %10, align 4
  %94 = shl i32 %93, 6
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %7, align 8
  %97 = lshr i64 %96, 11
  %98 = and i64 %97, 3
  %99 = or i64 %95, %98
  %100 = trunc i64 %99 to i32
  %101 = load i32*, i32** %12, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  store i32 %100, i32* %102, align 4
  store i32 2047, i32* %13, align 4
  %103 = load i64, i64* %7, align 8
  %104 = lshr i64 %103, 3
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %12, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  store i32 %105, i32* %107, align 4
  %108 = load i64, i64* %7, align 8
  %109 = and i64 %108, 7
  %110 = shl i64 %109, 5
  %111 = load i32, i32* %13, align 4
  %112 = ashr i32 %111, 6
  %113 = and i32 %112, 31
  %114 = sext i32 %113 to i64
  %115 = or i64 %110, %114
  %116 = trunc i64 %115 to i32
  %117 = load i32*, i32** %12, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 5
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %13, align 4
  %120 = and i32 %119, 63
  %121 = shl i32 %120, 2
  %122 = load i32*, i32** %12, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 6
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %124, %struct.TYPE_9__** %3, align 8
  br label %125

125:                                              ; preds = %58, %56, %27
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %126
}

declare dso_local %struct.TYPE_9__* @block_Realloc(%struct.TYPE_9__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
