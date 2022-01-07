; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzmaEnc.c_LzmaEnc_Init.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzmaEnc.c_LzmaEnc_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i8**, %struct.TYPE_6__, %struct.TYPE_5__, i8**, i8***, i8**, i8**, i8**, i8**, i8**, i8***, i8***, i32, i64*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@LZMA_NUM_REPS = common dso_local global i64 0, align 8
@kNumStates = common dso_local global i64 0, align 8
@LZMA_NUM_PB_STATES_MAX = common dso_local global i64 0, align 8
@kProbInitValue = common dso_local global i8* null, align 8
@kNumLenToPosStates = common dso_local global i64 0, align 8
@kNumPosSlotBits = common dso_local global i32 0, align 4
@kNumFullDistances = common dso_local global i64 0, align 8
@kEndPosModelIndex = common dso_local global i64 0, align 8
@kNumAlignBits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_Init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 22
  store i64 0, i64* %9, align 8
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %20, %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @LZMA_NUM_REPS, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 21
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %10

23:                                               ; preds = %10
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 20
  %26 = call i32 @RangeEnc_Init(i32* %25)
  store i64 0, i64* %3, align 8
  br label %27

27:                                               ; preds = %83, %23
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @kNumStates, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %86

31:                                               ; preds = %27
  store i64 0, i64* %4, align 8
  br label %32

32:                                               ; preds = %55, %31
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @LZMA_NUM_PB_STATES_MAX, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load i8*, i8** @kProbInitValue, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 19
  %40 = load i8***, i8**** %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds i8**, i8*** %40, i64 %41
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  store i8* %37, i8** %45, align 8
  %46 = load i8*, i8** @kProbInitValue, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 18
  %49 = load i8***, i8**** %48, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds i8**, i8*** %49, i64 %50
  %52 = load i8**, i8*** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  store i8* %46, i8** %54, align 8
  br label %55

55:                                               ; preds = %36
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %4, align 8
  br label %32

58:                                               ; preds = %32
  %59 = load i8*, i8** @kProbInitValue, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 17
  %62 = load i8**, i8*** %61, align 8
  %63 = load i64, i64* %3, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  store i8* %59, i8** %64, align 8
  %65 = load i8*, i8** @kProbInitValue, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 16
  %68 = load i8**, i8*** %67, align 8
  %69 = load i64, i64* %3, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  store i8* %65, i8** %70, align 8
  %71 = load i8*, i8** @kProbInitValue, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 15
  %74 = load i8**, i8*** %73, align 8
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  store i8* %71, i8** %76, align 8
  %77 = load i8*, i8** @kProbInitValue, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 14
  %80 = load i8**, i8*** %79, align 8
  %81 = load i64, i64* %3, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  store i8* %77, i8** %82, align 8
  br label %83

83:                                               ; preds = %58
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %3, align 8
  br label %27

86:                                               ; preds = %27
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = shl i32 768, %93
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %5, align 8
  store i64 0, i64* %3, align 8
  br label %96

96:                                               ; preds = %107, %86
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* %5, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load i8*, i8** @kProbInitValue, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 13
  %104 = load i8**, i8*** %103, align 8
  %105 = load i64, i64* %3, align 8
  %106 = getelementptr inbounds i8*, i8** %104, i64 %105
  store i8* %101, i8** %106, align 8
  br label %107

107:                                              ; preds = %100
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %3, align 8
  br label %96

110:                                              ; preds = %96
  store i64 0, i64* %3, align 8
  br label %111

111:                                              ; preds = %137, %110
  %112 = load i64, i64* %3, align 8
  %113 = load i64, i64* @kNumLenToPosStates, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %140

115:                                              ; preds = %111
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 12
  %118 = load i8***, i8**** %117, align 8
  %119 = load i64, i64* %3, align 8
  %120 = getelementptr inbounds i8**, i8*** %118, i64 %119
  %121 = load i8**, i8*** %120, align 8
  store i8** %121, i8*** %6, align 8
  store i64 0, i64* %7, align 8
  br label %122

122:                                              ; preds = %133, %115
  %123 = load i64, i64* %7, align 8
  %124 = load i32, i32* @kNumPosSlotBits, align 4
  %125 = shl i32 1, %124
  %126 = sext i32 %125 to i64
  %127 = icmp ult i64 %123, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load i8*, i8** @kProbInitValue, align 8
  %130 = load i8**, i8*** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds i8*, i8** %130, i64 %131
  store i8* %129, i8** %132, align 8
  br label %133

133:                                              ; preds = %128
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %7, align 8
  br label %122

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %3, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %3, align 8
  br label %111

140:                                              ; preds = %111
  store i64 0, i64* %3, align 8
  br label %141

141:                                              ; preds = %154, %140
  %142 = load i64, i64* %3, align 8
  %143 = load i64, i64* @kNumFullDistances, align 8
  %144 = load i64, i64* @kEndPosModelIndex, align 8
  %145 = sub i64 %143, %144
  %146 = icmp ult i64 %142, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %141
  %148 = load i8*, i8** @kProbInitValue, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 11
  %151 = load i8**, i8*** %150, align 8
  %152 = load i64, i64* %3, align 8
  %153 = getelementptr inbounds i8*, i8** %151, i64 %152
  store i8* %148, i8** %153, align 8
  br label %154

154:                                              ; preds = %147
  %155 = load i64, i64* %3, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %3, align 8
  br label %141

157:                                              ; preds = %141
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 10
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = call i32 @LenEnc_Init(i32* %160)
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 9
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = call i32 @LenEnc_Init(i32* %164)
  store i64 0, i64* %3, align 8
  br label %166

166:                                              ; preds = %179, %157
  %167 = load i64, i64* %3, align 8
  %168 = load i32, i32* @kNumAlignBits, align 4
  %169 = shl i32 1, %168
  %170 = sext i32 %169 to i64
  %171 = icmp ult i64 %167, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = load i8*, i8** @kProbInitValue, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 8
  %176 = load i8**, i8*** %175, align 8
  %177 = load i64, i64* %3, align 8
  %178 = getelementptr inbounds i8*, i8** %176, i64 %177
  store i8* %173, i8** %178, align 8
  br label %179

179:                                              ; preds = %172
  %180 = load i64, i64* %3, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %3, align 8
  br label %166

182:                                              ; preds = %166
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 7
  store i64 0, i64* %184, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 6
  store i64 0, i64* %186, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 5
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 1, %191
  %193 = sub nsw i32 %192, 1
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = shl i32 1, %198
  %200 = sub nsw i32 %199, 1
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  ret void
}

declare dso_local i32 @RangeEnc_Init(i32*) #1

declare dso_local i32 @LenEnc_Init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
