; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_SetMatShaper.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_SetMatShaper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i8**, i8***, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@MatShaperEval16 = common dso_local global i32 0, align 4
@FreeMatShaper = common dso_local global i32 0, align 4
@DupMatShaper = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32**, %struct.TYPE_9__*, %struct.TYPE_8__*, i32**, i32*)* @SetMatShaper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SetMatShaper(i32 %0, i32* %1, i32** %2, %struct.TYPE_9__* %3, %struct.TYPE_8__* %4, i32** %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32** %2, i32*** %11, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @_cmsFormatterIs8bit(i32 %21)
  store i64 %22, i64* %19, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @_cmsMalloc(i32 %23, i32 40)
  %25 = inttoptr i64 %24 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %16, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %27 = icmp eq %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %8, align 8
  br label %171

30:                                               ; preds = %7
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load i32**, i32*** %11, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @FillFirstShaper(i32 %31, i32 %34, i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load i32**, i32*** %11, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @FillFirstShaper(i32 %39, i32 %42, i32* %45)
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32**, i32*** %11, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @FillFirstShaper(i32 %47, i32 %50, i32* %53)
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32**, i32*** %14, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %19, align 8
  %63 = call i32 @FillSecondShaper(i32 %55, i32 %58, i32* %61, i64 %62)
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32**, i32*** %14, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %19, align 8
  %72 = call i32 @FillSecondShaper(i32 %64, i32 %67, i32* %70, i64 %71)
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32**, i32*** %14, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %19, align 8
  %81 = call i32 @FillSecondShaper(i32 %73, i32 %76, i32* %79, i64 %80)
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %117, %30
  %83 = load i32, i32* %17, align 4
  %84 = icmp slt i32 %83, 3
  br i1 %84, label %85, label %120

85:                                               ; preds = %82
  store i32 0, i32* %18, align 4
  br label %86

86:                                               ; preds = %113, %85
  %87 = load i32, i32* %18, align 4
  %88 = icmp slt i32 %87, 3
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @DOUBLE_TO_1FIXED14(i32 %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i8***, i8**** %104, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8**, i8*** %105, i64 %107
  %109 = load i8**, i8*** %108, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  store i8* %102, i8** %112, align 8
  br label %113

113:                                              ; preds = %89
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %18, align 4
  br label %86

116:                                              ; preds = %86
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %17, align 4
  br label %82

120:                                              ; preds = %82
  store i32 0, i32* %17, align 4
  br label %121

121:                                              ; preds = %150, %120
  %122 = load i32, i32* %17, align 4
  %123 = icmp slt i32 %122, 3
  br i1 %123, label %124, label %153

124:                                              ; preds = %121
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %126 = icmp eq %struct.TYPE_8__* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i8**, i8*** %129, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  store i8* null, i8** %133, align 8
  br label %149

134:                                              ; preds = %124
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @DOUBLE_TO_1FIXED14(i32 %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i8**, i8*** %144, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  store i8* %142, i8** %148, align 8
  br label %149

149:                                              ; preds = %134, %127
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %17, align 4
  br label %121

153:                                              ; preds = %121
  %154 = load i64, i64* %19, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = call i32 @OPTIMIZED_SH(i32 1)
  %158 = load i32*, i32** %15, align 8
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %157
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %156, %153
  %162 = load i32, i32* %9, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* @MatShaperEval16, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %166 = bitcast %struct.TYPE_10__* %165 to i8*
  %167 = load i32, i32* @FreeMatShaper, align 4
  %168 = load i32, i32* @DupMatShaper, align 4
  %169 = call i32 @_cmsPipelineSetOptimizationParameters(i32 %162, i32* %163, i32 %164, i8* %166, i32 %167, i32 %168)
  %170 = load i64, i64* @TRUE, align 8
  store i64 %170, i64* %8, align 8
  br label %171

171:                                              ; preds = %161, %28
  %172 = load i64, i64* %8, align 8
  ret i64 %172
}

declare dso_local i64 @_cmsFormatterIs8bit(i32) #1

declare dso_local i64 @_cmsMalloc(i32, i32) #1

declare dso_local i32 @FillFirstShaper(i32, i32, i32*) #1

declare dso_local i32 @FillSecondShaper(i32, i32, i32*, i64) #1

declare dso_local i8* @DOUBLE_TO_1FIXED14(i32) #1

declare dso_local i32 @OPTIMIZED_SH(i32) #1

declare dso_local i32 @_cmsPipelineSetOptimizationParameters(i32, i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
