; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ShapeCharGlyphProp_Thai.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ShapeCharGlyphProp_Thai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i64 }

@SCRIPT_JUSTIFY_NONE = common dso_local global i8* null, align 8
@SCRIPT_JUSTIFY_CHARACTER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_13__*, i32*, i32, i32*, i32, i32*, %struct.TYPE_12__*, %struct.TYPE_11__*)* @ShapeCharGlyphProp_Thai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShapeCharGlyphProp_Thai(i32 %0, i32* %1, %struct.TYPE_13__* %2, i32* %3, i32 %4, i32* %5, i32 %6, i32* %7, %struct.TYPE_12__* %8, %struct.TYPE_11__* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [20 x i32], align 16
  %26 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %20, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %10
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  br label %40

37:                                               ; preds = %31, %10
  %38 = load i32, i32* %17, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %22, align 4
  store i32 1, i32* %23, align 4
  br label %40

40:                                               ; preds = %37, %36
  %41 = load i32*, i32** %12, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = load i32, i32* %17, align 4
  %44 = load i32*, i32** %18, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %47 = call i32 @OpenType_GDEF_UpdateGlyphProps(i32* %41, i32* %42, i32 %43, i32* %44, i32 %45, %struct.TYPE_11__* %46)
  store i32 0, i32* %21, align 4
  br label %48

48:                                               ; preds = %145, %40
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %148

52:                                               ; preds = %48
  store i32 0, i32* %26, align 4
  %53 = load i32*, i32** %18, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %21, align 4
  %56 = call i32 @USP10_FindGlyphInLogClust(i32* %53, i32 %54, i32 %55)
  store i32 %56, i32* %24, align 4
  %57 = load i32, i32* %24, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %80, %59
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32*, i32** %18, align 8
  %66 = load i32, i32* %24, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %21, align 4
  %71 = icmp eq i32 %69, %70
  br label %72

72:                                               ; preds = %64, %60
  %73 = phi i1 [ false, %60 ], [ %71, %64 ]
  br i1 %73, label %74, label %83

74:                                               ; preds = %72
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* %26, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %26, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds [20 x i32], [20 x i32]* %25, i64 0, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %24, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %24, align 4
  br label %60

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %52
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %22, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i8*, i8** @SCRIPT_JUSTIFY_NONE, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %91 = load i32, i32* %21, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i8* %89, i8** %95, align 8
  br label %104

96:                                               ; preds = %84
  %97 = load i8*, i8** @SCRIPT_JUSTIFY_CHARACTER, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i8* %97, i8** %103, align 8
  br label %104

104:                                              ; preds = %96, %88
  %105 = load i32, i32* %26, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %145

108:                                              ; preds = %104
  %109 = load i32, i32* %26, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load i32*, i32** %14, align 8
  %113 = getelementptr inbounds [20 x i32], [20 x i32]* %25, i64 0, i64 0
  %114 = load i32, i32* %113, align 16
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 32
  br i1 %118, label %119, label %126

119:                                              ; preds = %111
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %121 = getelementptr inbounds [20 x i32], [20 x i32]* %25, i64 0, i64 0
  %122 = load i32, i32* %121, align 16
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %111, %108
  %127 = load i32, i32* %26, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %144

129:                                              ; preds = %126
  %130 = load i32*, i32** %14, align 8
  %131 = getelementptr inbounds [20 x i32], [20 x i32]* %25, i64 0, i64 0
  %132 = load i32, i32* %131, align 16
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 3635
  br i1 %136, label %137, label %144

137:                                              ; preds = %129
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %139 = load i32, i32* %21, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %137, %129, %126
  br label %145

145:                                              ; preds = %144, %107
  %146 = load i32, i32* %21, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %21, align 4
  br label %48

148:                                              ; preds = %48
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %15, align 4
  %151 = load i32*, i32** %18, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %153 = call i32 @UpdateClustersFromGlyphProp(i32 %149, i32 %150, i32* %151, %struct.TYPE_11__* %152)
  store i32 0, i32* %21, align 4
  br label %154

154:                                              ; preds = %178, %148
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %17, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %181

158:                                              ; preds = %154
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %160 = load i32, i32* %21, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %177, label %167

167:                                              ; preds = %158
  %168 = load i8*, i8** @SCRIPT_JUSTIFY_NONE, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %23, align 4
  %172 = sub nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  store i8* %168, i8** %176, align 8
  br label %177

177:                                              ; preds = %167, %158
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %21, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %21, align 4
  br label %154

181:                                              ; preds = %154
  ret void
}

declare dso_local i32 @OpenType_GDEF_UpdateGlyphProps(i32*, i32*, i32, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @USP10_FindGlyphInLogClust(i32*, i32, i32) #1

declare dso_local i32 @UpdateClustersFromGlyphProp(i32, i32, i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
