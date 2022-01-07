; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_LButtonDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_LButtonDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, i32*, %struct.TYPE_15__, i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@VK_SHIFT = common dso_local global i32 0, align 4
@stWord = common dso_local global i32 0, align 4
@stParagraph = common dso_local global i32 0, align 4
@stPosition = common dso_local global i64 0, align 8
@stLine = common dso_local global i32 0, align 4
@stDocument = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_LButtonDown(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = call i32 @ME_IsSelection(%struct.TYPE_16__* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @VK_SHIFT, align 4
  %39 = call i64 @GetKeyState(i32 %38)
  %40 = icmp slt i64 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 5
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @ME_FindPixelPos(%struct.TYPE_16__* %42, i32 %43, i32 %44, i32* %48, i32* %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %53, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %148

62:                                               ; preds = %59, %4
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %107

65:                                               ; preds = %62
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %65
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sge i32 %78, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = load i32, i32* @stWord, align 4
  %87 = call i32 @ME_SelectByType(%struct.TYPE_16__* %85, i32 %86)
  br label %92

88:                                               ; preds = %77
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = load i32, i32* @stParagraph, align 4
  %91 = call i32 @ME_SelectByType(%struct.TYPE_16__* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  br label %106

93:                                               ; preds = %65
  %94 = load i32, i32* %8, align 4
  %95 = srem i32 %94, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = load i32, i32* @stWord, align 4
  %100 = call i32 @ME_SelectByType(%struct.TYPE_16__* %98, i32 %99)
  br label %105

101:                                              ; preds = %93
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = load i32, i32* @stParagraph, align 4
  %104 = call i32 @ME_SelectByType(%struct.TYPE_16__* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %92
  br label %147

107:                                              ; preds = %62
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %107
  %111 = load i64, i64* @stPosition, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  store i32 %118, i32* %122, align 4
  br label %146

123:                                              ; preds = %107
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %123
  %127 = load i64, i64* @stPosition, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 %130, i32* %134, align 4
  br label %145

135:                                              ; preds = %123
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @stPosition, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = call i32 @ME_ExtendAnchorSelection(%struct.TYPE_16__* %142)
  br label %144

144:                                              ; preds = %141, %135
  br label %145

145:                                              ; preds = %144, %126
  br label %146

146:                                              ; preds = %145, %110
  br label %147

147:                                              ; preds = %146, %106
  br label %172

148:                                              ; preds = %59
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %149, 2
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %153 = load i32, i32* @stLine, align 4
  %154 = call i32 @ME_SelectByType(%struct.TYPE_16__* %152, i32 %153)
  br label %171

155:                                              ; preds = %148
  %156 = load i32, i32* %8, align 4
  %157 = srem i32 %156, 2
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159, %155
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %164 = load i32, i32* @stParagraph, align 4
  %165 = call i32 @ME_SelectByType(%struct.TYPE_16__* %163, i32 %164)
  br label %170

166:                                              ; preds = %159
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %168 = load i32, i32* @stDocument, align 4
  %169 = call i32 @ME_SelectByType(%struct.TYPE_16__* %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %162
  br label %171

171:                                              ; preds = %170, %151
  br label %172

172:                                              ; preds = %171, %147
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %174 = call i32 @ME_InvalidateSelection(%struct.TYPE_16__* %173)
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @FALSE, align 4
  %179 = call i32 @ITextHost_TxShowCaret(i32 %177, i32 %178)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %181 = call i32 @ME_ShowCaret(%struct.TYPE_16__* %180)
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = call i32 @ME_SendSelChange(%struct.TYPE_16__* %182)
  ret void
}

declare dso_local i32 @ME_IsSelection(%struct.TYPE_16__*) #1

declare dso_local i64 @GetKeyState(i32) #1

declare dso_local i32 @ME_FindPixelPos(%struct.TYPE_16__*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ME_SelectByType(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ME_ExtendAnchorSelection(%struct.TYPE_16__*) #1

declare dso_local i32 @ME_InvalidateSelection(%struct.TYPE_16__*) #1

declare dso_local i32 @ITextHost_TxShowCaret(i32, i32) #1

declare dso_local i32 @ME_ShowCaret(%struct.TYPE_16__*) #1

declare dso_local i32 @ME_SendSelChange(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
