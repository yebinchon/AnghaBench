; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_CopyPackedBufferToPicture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_CopyPackedBufferToPicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @CopyPackedBufferToPicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopyPackedBufferToPicture(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %117, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %120

15:                                               ; preds = %9
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %31, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %15
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %49, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @memcpy(i32* %59, i32* %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %4, align 8
  br label %117

67:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %113, %67
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %69, %77
  br i1 %78, label %79, label %116

79:                                               ; preds = %68
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @memcpy(i32* %80, i32* %81, i32 %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %4, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %6, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %6, align 8
  br label %113

113:                                              ; preds = %79
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %68

116:                                              ; preds = %68
  br label %117

117:                                              ; preds = %116, %41
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %9

120:                                              ; preds = %9
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
