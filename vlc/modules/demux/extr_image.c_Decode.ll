; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_image.c_Decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_image.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i32*, i32, %struct.TYPE_13__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @Decode(i32* %0, i32* %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @image_HandlerCreate(i32* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = call i32 @block_Release(%struct.TYPE_13__* %24)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %137

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @video_format_Init(i32* %11, i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call %struct.TYPE_12__* @image_Read(i32* %29, %struct.TYPE_13__* %30, i32* %31, i32* %11)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %12, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @image_HandlerDelete(i32* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %36 = icmp ne %struct.TYPE_12__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %137

38:                                               ; preds = %26
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @es_format_Clean(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @es_format_InitFromVideo(i32* %41, i32* %11)
  %43 = call i32 @video_format_Clean(i32* %11)
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %70, %38
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %44
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = mul i64 %58, %66
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %50
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %44

73:                                               ; preds = %44
  %74 = load i64, i64* %13, align 8
  %75 = call %struct.TYPE_13__* @block_Alloc(i64 %74)
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %9, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = icmp ne %struct.TYPE_13__* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %80 = call i32 @picture_Release(%struct.TYPE_12__* %79)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %137

81:                                               ; preds = %73
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %130, %81
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %133

88:                                               ; preds = %82
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %93
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %17, align 8
  store i32 0, i32* %18, align 4
  br label %95

95:                                               ; preds = %126, %88
  %96 = load i32, i32* %18, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %95
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %15, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = mul i64 %111, %114
  %116 = getelementptr inbounds i32, i32* %109, i64 %115
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @memcpy(i32* %106, i32* %116, i64 %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %15, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %15, align 8
  br label %126

126:                                              ; preds = %101
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %18, align 4
  br label %95

129:                                              ; preds = %95
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %16, align 4
  br label %82

133:                                              ; preds = %82
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %135 = call i32 @picture_Release(%struct.TYPE_12__* %134)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %136, %struct.TYPE_13__** %5, align 8
  br label %137

137:                                              ; preds = %133, %78, %37, %23
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  ret %struct.TYPE_13__* %138
}

declare dso_local i32* @image_HandlerCreate(i32*) #1

declare dso_local i32 @block_Release(%struct.TYPE_13__*) #1

declare dso_local i32 @video_format_Init(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @image_Read(i32*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @image_HandlerDelete(i32*) #1

declare dso_local i32 @es_format_Clean(i32*) #1

declare dso_local i32 @es_format_InitFromVideo(i32*, i32*) #1

declare dso_local i32 @video_format_Clean(i32*) #1

declare dso_local %struct.TYPE_13__* @block_Alloc(i64) #1

declare dso_local i32 @picture_Release(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
