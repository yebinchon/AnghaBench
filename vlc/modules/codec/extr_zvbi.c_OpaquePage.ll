; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_zvbi.c_OpaquePage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_zvbi.c_OpaquePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }

@VLC_CODEC_RGBA = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32)* @OpaquePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpaquePage(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VLC_CODEC_RGBA, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %117, %5
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %120

29:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %113, %29
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %116

36:                                               ; preds = %30
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = udiv i32 %41, 10
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul i32 %42, %45
  %47 = add i32 %40, %46
  %48 = load i32, i32* %11, align 4
  %49 = udiv i32 %48, 12
  %50 = add i32 %47, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = udiv i32 %59, 10
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul i32 %60, %63
  %65 = add i32 %58, %64
  %66 = load i32, i32* %11, align 4
  %67 = udiv i32 %66, 12
  %68 = add i32 %65, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %14, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul i32 %78, %83
  %85 = load i32, i32* %11, align 4
  %86 = mul i32 4, %85
  %87 = add i32 %84, %86
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %77, i64 %88
  store i32* %89, i32** %15, align 8
  %90 = load i32, i32* %13, align 4
  switch i32 %90, label %112 [
    i32 131, label %91
    i32 130, label %91
    i32 129, label %96
    i32 128, label %110
  ]

91:                                               ; preds = %36, %36
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %112

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %36, %95
  %97 = load i32*, i32** %15, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = or i32 -16777216, %105
  %107 = icmp ne i32 %98, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  br label %112

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %36, %109
  %111 = load i32*, i32** %15, align 8
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %36, %110, %108, %94
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %11, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %30

116:                                              ; preds = %30
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %23

120:                                              ; preds = %23
  %121 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %121
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
