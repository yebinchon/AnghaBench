; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_InvalidateSelection.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_InvalidateSelection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_23__* }

@diParagraph = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_InvalidateSelection(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %6, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %11 = call i32 @ME_GetTextLength(%struct.TYPE_22__* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %13 = call i32 @ME_GetSelectionOfs(%struct.TYPE_22__* %12, i32* %7, i32* %8)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %167

26:                                               ; preds = %17, %1
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %28 = call i32 @ME_WrapMarkedParagraphs(%struct.TYPE_22__* %27)
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %30 = call i32 @ME_GetSelectionParas(%struct.TYPE_22__* %29, %struct.TYPE_23__** %3, %struct.TYPE_23__** %4)
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @diParagraph, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @diParagraph, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %26
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %50, %26
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* @diParagraph, align 8
  %63 = call %struct.TYPE_23__* @ME_FindItemFwd(i32 %61, i64 %62)
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %5, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %71, align 8
  store %struct.TYPE_23__* %72, %struct.TYPE_23__** %6, align 8
  br label %128

73:                                               ; preds = %50
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_23__* %80, %struct.TYPE_23__** %5, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %82, align 8
  store %struct.TYPE_23__* %83, %struct.TYPE_23__** %6, align 8
  br label %96

84:                                               ; preds = %73
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %92, align 8
  store %struct.TYPE_23__* %93, %struct.TYPE_23__** %5, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_23__* %94, %struct.TYPE_23__** %6, align 8
  br label %95

95:                                               ; preds = %90, %84
  br label %96

96:                                               ; preds = %95, %79
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %104 = icmp ne %struct.TYPE_23__* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_23__* %106, %struct.TYPE_23__** %5, align 8
  br label %107

107:                                              ; preds = %105, %102
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  store %struct.TYPE_23__* %110, %struct.TYPE_23__** %6, align 8
  br label %127

111:                                              ; preds = %96
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %112, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %119 = icmp ne %struct.TYPE_23__* %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %122, align 8
  store %struct.TYPE_23__* %123, %struct.TYPE_23__** %5, align 8
  br label %124

124:                                              ; preds = %120, %117
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_23__* %125, %struct.TYPE_23__** %6, align 8
  br label %126

126:                                              ; preds = %124, %111
  br label %127

127:                                              ; preds = %126, %107
  br label %128

128:                                              ; preds = %127, %56
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %130 = icmp ne %struct.TYPE_23__* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %135 = call i32 @ME_InvalidateParagraphRange(%struct.TYPE_22__* %132, %struct.TYPE_23__* %133, %struct.TYPE_23__* %134)
  br label %136

136:                                              ; preds = %131, %128
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 1
  %142 = call i32 @ME_GetSelectionOfs(%struct.TYPE_22__* %137, i32* %139, i32* %141)
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 2
  %148 = call i32 @ME_GetSelectionParas(%struct.TYPE_22__* %143, %struct.TYPE_23__** %145, %struct.TYPE_23__** %147)
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @diParagraph, align 8
  %155 = icmp eq i64 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @diParagraph, align 8
  %164 = icmp eq i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  br label %167

167:                                              ; preds = %136, %25
  ret void
}

declare dso_local i32 @ME_GetTextLength(%struct.TYPE_22__*) #1

declare dso_local i32 @ME_GetSelectionOfs(%struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @ME_WrapMarkedParagraphs(%struct.TYPE_22__*) #1

declare dso_local i32 @ME_GetSelectionParas(%struct.TYPE_22__*, %struct.TYPE_23__**, %struct.TYPE_23__**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_23__* @ME_FindItemFwd(i32, i64) #1

declare dso_local i32 @ME_InvalidateParagraphRange(%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
