; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Read8bitTables.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Read8bitTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, %struct.TYPE_10__*, i32*, i32, i32)* }
%struct.TYPE_9__ = type { i64* }

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@cmsAT_END = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__*, i32*, i32)* @Read8bitTables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Read8bitTables(i32 %0, %struct.TYPE_10__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %16 = load i32, i32* @cmsMAXCHANNELS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca %struct.TYPE_9__*, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @cmsMAXCHANNELS, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %165

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %165

30:                                               ; preds = %25
  %31 = mul nuw i64 8, %17
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(%struct.TYPE_9__** %19, i32 0, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @_cmsMalloc(i32 %34, i32 256)
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %165

41:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = call %struct.TYPE_9__* @cmsBuildTabulatedToneCurve16(i32 %47, i32 256, i32* null)
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %19, i64 %50
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %19, i64 %53
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = icmp eq %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %134

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %42

62:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %101, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %63
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32 (i32, %struct.TYPE_10__*, i32*, i32, i32)*, i32 (i32, %struct.TYPE_10__*, i32*, i32, i32)** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 %70(i32 %71, %struct.TYPE_10__* %72, i32* %73, i32 256, i32 1)
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %134

77:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %97, %77
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 256
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @FROM_8_TO_16(i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %19, i64 %89
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %87, i64* %96, align 8
  br label %97

97:                                               ; preds = %81
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %78

100:                                              ; preds = %78
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %63

104:                                              ; preds = %63
  %105 = load i32, i32* %6, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @_cmsFree(i32 %105, i32* %106)
  store i32* null, i32** %10, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* @cmsAT_END, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @cmsStageAllocToneCurves(i32 %111, i32 %112, %struct.TYPE_9__** %19)
  %114 = call i32 @cmsPipelineInsertStage(i32 %108, i32* %109, i32 %110, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %104
  br label %134

117:                                              ; preds = %104
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %129, %117
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %19, i64 %125
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = call i32 @cmsFreeToneCurve(i32 %123, %struct.TYPE_9__* %127)
  br label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %118

132:                                              ; preds = %118
  %133 = load i32, i32* @TRUE, align 4
  store i32 %133, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %165

134:                                              ; preds = %116, %76, %57
  store i32 0, i32* %11, align 4
  br label %135

135:                                              ; preds = %153, %134
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %135
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %19, i64 %141
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = icmp ne %struct.TYPE_9__* %143, null
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %19, i64 %148
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = call i32 @cmsFreeToneCurve(i32 %146, %struct.TYPE_9__* %150)
  br label %152

152:                                              ; preds = %145, %139
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %135

156:                                              ; preds = %135
  %157 = load i32*, i32** %10, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i32, i32* %6, align 4
  %161 = load i32*, i32** %10, align 8
  %162 = call i32 @_cmsFree(i32 %160, i32* %161)
  br label %163

163:                                              ; preds = %159, %156
  %164 = load i32, i32* @FALSE, align 4
  store i32 %164, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %165

165:                                              ; preds = %163, %132, %39, %28, %23
  %166 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_9__**, i32, i32) #2

declare dso_local i64 @_cmsMalloc(i32, i32) #2

declare dso_local %struct.TYPE_9__* @cmsBuildTabulatedToneCurve16(i32, i32, i32*) #2

declare dso_local i64 @FROM_8_TO_16(i32) #2

declare dso_local i32 @_cmsFree(i32, i32*) #2

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32) #2

declare dso_local i32 @cmsStageAllocToneCurves(i32, i32, %struct.TYPE_9__**) #2

declare dso_local i32 @cmsFreeToneCurve(i32, %struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
