; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzFind.c_GetMatchesSpec1.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzFind.c_GetMatchesSpec1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kEmptyHashValue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetMatchesSpec1(i32 %0, i32 %1, i32 %2, i64* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i64*, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i64* %3, i64** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  %30 = load i32*, i32** %16, align 8
  %31 = load i32, i32* %17, align 4
  %32 = shl i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32* %35, i32** %22, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = load i32, i32* %17, align 4
  %38 = shl i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32* %40, i32** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %41

41:                                               ; preds = %191, %10
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %26, align 4
  %45 = load i32, i32* %19, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %19, align 4
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %26, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48, %41
  %53 = load i32, i32* @kEmptyHashValue, align 4
  %54 = load i32*, i32** %23, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %22, align 8
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %20, align 8
  store i32* %56, i32** %11, align 8
  br label %192

57:                                               ; preds = %48
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %26, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %26, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %18, align 4
  br label %68

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = add nsw i32 %61, %69
  %71 = shl i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %58, i64 %72
  store i32* %73, i32** %27, align 8
  %74 = load i64*, i64** %15, align 8
  %75 = load i32, i32* %26, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  store i64* %78, i64** %28, align 8
  %79 = load i32, i32* %24, align 4
  %80 = load i32, i32* %25, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %24, align 4
  br label %86

84:                                               ; preds = %68
  %85 = load i32, i32* %25, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %29, align 4
  %88 = load i64*, i64** %28, align 8
  %89 = load i32, i32* %29, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %15, align 8
  %94 = load i32, i32* %29, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %92, %97
  br i1 %98, label %99, label %164

99:                                               ; preds = %86
  %100 = load i32, i32* %29, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %29, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %137

104:                                              ; preds = %99
  %105 = load i64*, i64** %28, align 8
  %106 = load i32, i32* %29, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %15, align 8
  %111 = load i32, i32* %29, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %109, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %135, %116
  %118 = load i32, i32* %29, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %29, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = load i64*, i64** %28, align 8
  %124 = load i32, i32* %29, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %15, align 8
  %129 = load i32, i32* %29, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %127, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  br label %136

135:                                              ; preds = %122
  br label %117

136:                                              ; preds = %134, %117
  br label %137

137:                                              ; preds = %136, %104, %99
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %29, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %163

141:                                              ; preds = %137
  %142 = load i32, i32* %29, align 4
  store i32 %142, i32* %21, align 4
  %143 = load i32*, i32** %20, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %20, align 8
  store i32 %142, i32* %143, align 4
  %145 = load i32, i32* %26, align 4
  %146 = sub nsw i32 %145, 1
  %147 = load i32*, i32** %20, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %20, align 8
  store i32 %146, i32* %147, align 4
  %149 = load i32, i32* %29, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %141
  %153 = load i32*, i32** %27, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %23, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32*, i32** %27, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %22, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i32*, i32** %20, align 8
  store i32* %161, i32** %11, align 8
  br label %192

162:                                              ; preds = %141
  br label %163

163:                                              ; preds = %162, %137
  br label %164

164:                                              ; preds = %163, %86
  %165 = load i64*, i64** %28, align 8
  %166 = load i32, i32* %29, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** %15, align 8
  %171 = load i32, i32* %29, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = icmp slt i64 %169, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %164
  %177 = load i32, i32* %13, align 4
  %178 = load i32*, i32** %23, align 8
  store i32 %177, i32* %178, align 4
  %179 = load i32*, i32** %27, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  store i32* %180, i32** %23, align 8
  %181 = load i32*, i32** %23, align 8
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %29, align 4
  store i32 %183, i32* %25, align 4
  br label %191

184:                                              ; preds = %164
  %185 = load i32, i32* %13, align 4
  %186 = load i32*, i32** %22, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32*, i32** %27, align 8
  store i32* %187, i32** %22, align 8
  %188 = load i32*, i32** %22, align 8
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %29, align 4
  store i32 %190, i32* %24, align 4
  br label %191

191:                                              ; preds = %184, %176
  br label %41

192:                                              ; preds = %152, %52
  %193 = load i32*, i32** %11, align 8
  ret i32* %193
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
