; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictComputeFastQKey.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictComputeFastQKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32*, i32, i32)* @xmlDictComputeFastQKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xmlDictComputeFastQKey(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i64, i64* %11, align 8
  %19 = add i64 %18, 1740
  store i64 %19, i64* %11, align 8
  br label %27

20:                                               ; preds = %5
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 30, %22
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %11, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %11, align 8
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 10
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = add nsw i32 %33, 1
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 11
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %11, align 8
  store i32 10, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %50, 10
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 10, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %27
  %55 = load i32, i32* %7, align 4
  switch i32 %55, label %126 [
    i32 10, label %56
    i32 9, label %63
    i32 8, label %70
    i32 7, label %77
    i32 6, label %84
    i32 5, label %91
    i32 4, label %98
    i32 3, label %105
    i32 2, label %112
    i32 1, label %119
  ]

56:                                               ; preds = %54
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 9
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %11, align 8
  br label %63

63:                                               ; preds = %54, %56
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %11, align 8
  br label %70

70:                                               ; preds = %54, %63
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %54, %70
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 6
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %54, %77
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 5
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %11, align 8
  br label %91

91:                                               ; preds = %54, %84
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %11, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %54, %91
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %11, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %11, align 8
  br label %105

105:                                              ; preds = %54, %98
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %11, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %11, align 8
  br label %112

112:                                              ; preds = %54, %105
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %11, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %11, align 8
  br label %119

119:                                              ; preds = %54, %112
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %11, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %11, align 8
  br label %126

126:                                              ; preds = %54, %119
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %134, 58
  store i64 %135, i64* %11, align 8
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %133, %127
  %139 = load i32, i32* %9, align 4
  switch i32 %139, label %210 [
    i32 10, label %140
    i32 9, label %147
    i32 8, label %154
    i32 7, label %161
    i32 6, label %168
    i32 5, label %175
    i32 4, label %182
    i32 3, label %189
    i32 2, label %196
    i32 1, label %203
  ]

140:                                              ; preds = %138
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 9
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %11, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %11, align 8
  br label %147

147:                                              ; preds = %138, %140
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 8
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %11, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %11, align 8
  br label %154

154:                                              ; preds = %138, %147
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 7
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %11, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %11, align 8
  br label %161

161:                                              ; preds = %138, %154
  %162 = load i32*, i32** %8, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 6
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %11, align 8
  %167 = add i64 %166, %165
  store i64 %167, i64* %11, align 8
  br label %168

168:                                              ; preds = %138, %161
  %169 = load i32*, i32** %8, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 5
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %11, align 8
  %174 = add i64 %173, %172
  store i64 %174, i64* %11, align 8
  br label %175

175:                                              ; preds = %138, %168
  %176 = load i32*, i32** %8, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 4
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* %11, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %11, align 8
  br label %182

182:                                              ; preds = %138, %175
  %183 = load i32*, i32** %8, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %11, align 8
  %188 = add i64 %187, %186
  store i64 %188, i64* %11, align 8
  br label %189

189:                                              ; preds = %138, %182
  %190 = load i32*, i32** %8, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* %11, align 8
  %195 = add i64 %194, %193
  store i64 %195, i64* %11, align 8
  br label %196

196:                                              ; preds = %138, %189
  %197 = load i32*, i32** %8, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %11, align 8
  %202 = add i64 %201, %200
  store i64 %202, i64* %11, align 8
  br label %203

203:                                              ; preds = %138, %196
  %204 = load i32*, i32** %8, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = load i64, i64* %11, align 8
  %209 = add i64 %208, %207
  store i64 %209, i64* %11, align 8
  br label %210

210:                                              ; preds = %138, %203
  br label %211

211:                                              ; preds = %210
  %212 = load i64, i64* %11, align 8
  ret i64 %212
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
