; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ShapeCharGlyphProp_Tibet.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ShapeCharGlyphProp_Tibet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }

@SCRIPT_JUSTIFY_BLANK = common dso_local global i32 0, align 4
@SCRIPT_JUSTIFY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32, i32*, i32, i32*, %struct.TYPE_10__*, %struct.TYPE_9__*)* @ShapeCharGlyphProp_Tibet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShapeCharGlyphProp_Tibet(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i32 %6, i32* %7, %struct.TYPE_10__* %8, %struct.TYPE_9__* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [20 x i32], align 16
  %24 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %20, align 8
  store i32 0, i32* %21, align 4
  br label %25

25:                                               ; preds = %99, %10
  %26 = load i32, i32* %21, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %102

29:                                               ; preds = %25
  store i32 0, i32* %24, align 4
  %30 = load i32*, i32** %18, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %21, align 4
  %33 = call i32 @USP10_FindGlyphInLogClust(i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %22, align 4
  %34 = load i32, i32* %22, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i32, i32* %22, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32*, i32** %18, align 8
  %43 = load i32, i32* %22, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %21, align 4
  %48 = icmp eq i32 %46, %47
  br label %49

49:                                               ; preds = %41, %37
  %50 = phi i1 [ false, %37 ], [ %48, %41 ]
  br i1 %50, label %51, label %60

51:                                               ; preds = %49
  %52 = load i32, i32* %22, align 4
  %53 = load i32, i32* %24, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %24, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds [20 x i32], [20 x i32]* %23, i64 0, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %22, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %22, align 4
  br label %37

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %29
  %62 = load i32, i32* %24, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %99

65:                                               ; preds = %61
  %66 = load i32, i32* %24, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load i32*, i32** %14, align 8
  %70 = getelementptr inbounds [20 x i32], [20 x i32]* %23, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %90

76:                                               ; preds = %68
  %77 = load i32, i32* @SCRIPT_JUSTIFY_BLANK, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %79 = load i32, i32* %21, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  store i32 %77, i32* %83, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %85 = getelementptr inbounds [20 x i32], [20 x i32]* %23, i64 0, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  br label %98

90:                                               ; preds = %68, %65
  %91 = load i32, i32* @SCRIPT_JUSTIFY_NONE, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %93 = load i32, i32* %21, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  store i32 %91, i32* %97, align 4
  br label %98

98:                                               ; preds = %90, %76
  br label %99

99:                                               ; preds = %98, %64
  %100 = load i32, i32* %21, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %21, align 4
  br label %25

102:                                              ; preds = %25
  %103 = load i32*, i32** %12, align 8
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* %17, align 4
  %106 = load i32*, i32** %18, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %109 = call i32 @OpenType_GDEF_UpdateGlyphProps(i32* %103, i32* %104, i32 %105, i32* %106, i32 %107, %struct.TYPE_9__* %108)
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32*, i32** %18, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %114 = call i32 @UpdateClustersFromGlyphProp(i32 %110, i32 %111, i32* %112, %struct.TYPE_9__* %113)
  store i32 0, i32* %21, align 4
  br label %115

115:                                              ; preds = %142, %102
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %145

119:                                              ; preds = %115
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %121 = load i32, i32* %21, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %119
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %136 = load i32, i32* %21, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %128, %119
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %21, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %21, align 4
  br label %115

145:                                              ; preds = %115
  ret void
}

declare dso_local i32 @USP10_FindGlyphInLogClust(i32*, i32, i32) #1

declare dso_local i32 @OpenType_GDEF_UpdateGlyphProps(i32*, i32*, i32, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @UpdateClustersFromGlyphProp(i32, i32, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
