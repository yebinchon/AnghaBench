; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_vdbeSorterCompareInt.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_vdbeSorterCompareInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64* }

@vdbeSorterCompareInt.aLen = internal constant [10 x i64] [i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 8, i64 0, i64 0, i64 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8*, i32, i8*, i32)* @vdbeSorterCompareInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeSorterCompareInt(%struct.TYPE_8__* %0, i32* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** %13, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = bitcast i8* %24 to i64*
  store i64* %25, i64** %14, align 8
  %26 = load i64*, i64** %13, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %15, align 4
  %30 = load i64*, i64** %14, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %16, align 4
  %34 = load i64*, i64** %13, align 8
  %35 = load i64*, i64** %13, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  store i64* %38, i64** %17, align 8
  %39 = load i64*, i64** %14, align 8
  %40 = load i64*, i64** %14, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  store i64* %43, i64** %18, align 8
  %44 = load i32, i32* %15, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %6
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %47, 7
  br i1 %48, label %55, label %49

49:                                               ; preds = %46, %6
  %50 = load i32, i32* %15, align 4
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %15, align 4
  %54 = icmp eq i32 %53, 9
  br label %55

55:                                               ; preds = %52, %49, %46
  %56 = phi i1 [ true, %49 ], [ true, %46 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %16, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %16, align 4
  %63 = icmp slt i32 %62, 7
  br i1 %63, label %70, label %64

64:                                               ; preds = %61, %55
  %65 = load i32, i32* %16, align 4
  %66 = icmp eq i32 %65, 8
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %16, align 4
  %69 = icmp eq i32 %68, 9
  br label %70

70:                                               ; preds = %67, %64, %61
  %71 = phi i1 [ true, %64 ], [ true, %61 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %125

77:                                               ; preds = %70
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [10 x i64], [10 x i64]* @vdbeSorterCompareInt.aLen, i64 0, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %20, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %82

82:                                               ; preds = %121, %77
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %20, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %124

87:                                               ; preds = %82
  %88 = load i64*, i64** %17, align 8
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %18, align 8
  %94 = load i32, i32* %21, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %92, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %87
  %102 = load i64*, i64** %17, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %18, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  %108 = xor i64 %104, %107
  %109 = and i64 %108, 128
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %101
  %112 = load i64*, i64** %17, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = and i64 %114, 128
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 -1, i32 1
  store i32 %118, i32* %19, align 4
  br label %119

119:                                              ; preds = %111, %101
  br label %124

120:                                              ; preds = %87
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %21, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %21, align 4
  br label %82

124:                                              ; preds = %119, %82
  br label %171

125:                                              ; preds = %70
  %126 = load i32, i32* %15, align 4
  %127 = icmp sgt i32 %126, 7
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i32, i32* %16, align 4
  %130 = icmp sgt i32 %129, 7
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = sub nsw i32 %132, %133
  store i32 %134, i32* %19, align 4
  br label %170

135:                                              ; preds = %128, %125
  %136 = load i32, i32* %16, align 4
  %137 = icmp sgt i32 %136, 7
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 1, i32* %19, align 4
  br label %148

139:                                              ; preds = %135
  %140 = load i32, i32* %15, align 4
  %141 = icmp sgt i32 %140, 7
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 -1, i32* %19, align 4
  br label %147

143:                                              ; preds = %139
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %16, align 4
  %146 = sub nsw i32 %144, %145
  store i32 %146, i32* %19, align 4
  br label %147

147:                                              ; preds = %143, %142
  br label %148

148:                                              ; preds = %147, %138
  %149 = load i32, i32* %19, align 4
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load i32, i32* %19, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load i64*, i64** %17, align 8
  %157 = load i64, i64* %156, align 8
  %158 = and i64 %157, 128
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store i32 -1, i32* %19, align 4
  br label %161

161:                                              ; preds = %160, %155
  br label %169

162:                                              ; preds = %148
  %163 = load i64*, i64** %18, align 8
  %164 = load i64, i64* %163, align 8
  %165 = and i64 %164, 128
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i32 1, i32* %19, align 4
  br label %168

168:                                              ; preds = %167, %162
  br label %169

169:                                              ; preds = %168, %161
  br label %170

170:                                              ; preds = %169, %131
  br label %171

171:                                              ; preds = %170, %124
  %172 = load i32, i32* %19, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %192

174:                                              ; preds = %171
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %191

183:                                              ; preds = %174
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %185 = load i32*, i32** %8, align 8
  %186 = load i8*, i8** %9, align 8
  %187 = load i32, i32* %10, align 4
  %188 = load i8*, i8** %11, align 8
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @vdbeSorterCompareTail(%struct.TYPE_8__* %184, i32* %185, i8* %186, i32 %187, i8* %188, i32 %189)
  store i32 %190, i32* %19, align 4
  br label %191

191:                                              ; preds = %183, %174
  br label %207

192:                                              ; preds = %171
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %192
  %204 = load i32, i32* %19, align 4
  %205 = mul nsw i32 %204, -1
  store i32 %205, i32* %19, align 4
  br label %206

206:                                              ; preds = %203, %192
  br label %207

207:                                              ; preds = %206, %191
  %208 = load i32, i32* %19, align 4
  ret i32 %208
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vdbeSorterCompareTail(%struct.TYPE_8__*, i32*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
