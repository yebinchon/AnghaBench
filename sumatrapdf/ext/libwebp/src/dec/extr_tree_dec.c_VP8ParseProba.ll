; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_tree_dec.c_VP8ParseProba.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_tree_dec.c_VP8ParseProba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__**, %struct.TYPE_5__*** }
%struct.TYPE_5__ = type { i32** }

@NUM_TYPES = common dso_local global i32 0, align 4
@NUM_BANDS = common dso_local global i32 0, align 4
@NUM_CTX = common dso_local global i32 0, align 4
@NUM_PROBAS = common dso_local global i32 0, align 4
@CoeffsUpdateProba = common dso_local global i32**** null, align 8
@.str = private unnamed_addr constant [14 x i8] c"global-header\00", align 1
@CoeffsProba0 = common dso_local global i8***** null, align 8
@kBands = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VP8ParseProba(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %140, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NUM_TYPES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %143

17:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %105, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NUM_BANDS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %108

22:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %101, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NUM_CTX, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %104

27:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %97, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @NUM_PROBAS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %100

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = load i32****, i32***** @CoeffsUpdateProba, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32***, i32**** %34, i64 %36
  %38 = load i32***, i32**** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32**, i32*** %38, i64 %40
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @VP8GetBit(i32* %33, i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %32
  %54 = load i32*, i32** %3, align 8
  %55 = call i8* @VP8GetValue(i32* %54, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %74

56:                                               ; preds = %32
  %57 = load i8*****, i8****** @CoeffsProba0, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8****, i8***** %57, i64 %59
  %61 = load i8****, i8***** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8***, i8**** %61, i64 %63
  %65 = load i8***, i8**** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8**, i8*** %65, i64 %67
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  br label %74

74:                                               ; preds = %56, %53
  %75 = phi i8* [ %55, %53 ], [ %73, %56 ]
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %80, i64 %82
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %77, i32* %96, align 4
  br label %97

97:                                               ; preds = %74
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %28

100:                                              ; preds = %28
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %23

104:                                              ; preds = %23
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %18

108:                                              ; preds = %18
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %136, %108
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 17
  br i1 %111, label %112, label %139

112:                                              ; preds = %109
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %115, i64 %117
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i64*, i64** @kBands, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_5__**, %struct.TYPE_5__*** %128, i64 %130
  %132 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %132, i64 %134
  store %struct.TYPE_5__* %125, %struct.TYPE_5__** %135, align 8
  br label %136

136:                                              ; preds = %112
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %109

139:                                              ; preds = %109
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %13

143:                                              ; preds = %13
  %144 = load i32*, i32** %3, align 8
  %145 = call i64 @VP8Get(i32* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %143
  %153 = load i32*, i32** %3, align 8
  %154 = call i8* @VP8GetValue(i32* %153, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %152, %143
  ret void
}

declare dso_local i64 @VP8GetBit(i32*, i32, i8*) #1

declare dso_local i8* @VP8GetValue(i32*, i32, i8*) #1

declare dso_local i64 @VP8Get(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
