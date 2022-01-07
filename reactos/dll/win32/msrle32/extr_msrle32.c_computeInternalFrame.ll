; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_computeInternalFrame.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_computeInternalFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i64, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @computeInternalFrame(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca [256 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64* %2, i64** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64*, i64** %6, align 8
  %22 = icmp ne i64* %21, null
  br label %23

23:                                               ; preds = %20, %17, %3
  %24 = phi i1 [ false, %17 ], [ false, %3 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = call i32 @DIBWIDTHBYTES(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul i32 %37, 8
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 @WIDTHBYTES(i32 %41)
  %43 = udiv i32 %42, 2
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %10, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = bitcast %struct.TYPE_6__* %53 to i64*
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %54, i64 %58
  %60 = bitcast i64* %59 to i32*
  store i32* %60, i32** %13, align 8
  store i64 0, i64* %11, align 8
  br label %61

61:                                               ; preds = %75, %23
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load i32*, i32** %13, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @Intensity(i32 %71)
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 %73
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %67
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %11, align 8
  br label %61

78:                                               ; preds = %61
  store i64 0, i64* %12, align 8
  br label %79

79:                                               ; preds = %196, %78
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %199

85:                                               ; preds = %79
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %187 [
    i32 1, label %89
    i32 4, label %127
    i32 8, label %165
  ]

89:                                               ; preds = %85
  store i64 0, i64* %14, align 8
  br label %90

90:                                               ; preds = %123, %89
  %91 = load i64, i64* %14, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sdiv i32 %94, 8
  %96 = sext i32 %95 to i64
  %97 = icmp slt i64 %91, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %90
  store i64 0, i64* %11, align 8
  br label %99

99:                                               ; preds = %119, %98
  %100 = load i64, i64* %11, align 8
  %101 = icmp ult i64 %100, 7
  br i1 %101, label %102, label %122

102:                                              ; preds = %99
  %103 = load i64*, i64** %6, align 8
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = sub i64 7, %107
  %109 = lshr i64 %106, %108
  %110 = and i64 %109, 1
  %111 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = load i64, i64* %14, align 8
  %115 = mul nsw i64 8, %114
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %115, %116
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  store i32 %112, i32* %118, align 4
  br label %119

119:                                              ; preds = %102
  %120 = load i64, i64* %11, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %11, align 8
  br label %99

122:                                              ; preds = %99
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %14, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %14, align 8
  br label %90

126:                                              ; preds = %90
  br label %187

127:                                              ; preds = %85
  store i64 0, i64* %14, align 8
  br label %128

128:                                              ; preds = %161, %127
  %129 = load i64, i64* %14, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sdiv i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %129, %134
  br i1 %135, label %136, label %164

136:                                              ; preds = %128
  %137 = load i64*, i64** %6, align 8
  %138 = load i64, i64* %14, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = lshr i64 %140, 4
  %142 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %10, align 8
  %145 = load i64, i64* %14, align 8
  %146 = mul nsw i64 2, %145
  %147 = add nsw i64 %146, 0
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 %143, i32* %148, align 4
  %149 = load i64*, i64** %6, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = and i64 %152, 15
  %154 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %10, align 8
  %157 = load i64, i64* %14, align 8
  %158 = mul nsw i64 2, %157
  %159 = add nsw i64 %158, 1
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %155, i32* %160, align 4
  br label %161

161:                                              ; preds = %136
  %162 = load i64, i64* %14, align 8
  %163 = add nsw i64 %162, 1
  store i64 %163, i64* %14, align 8
  br label %128

164:                                              ; preds = %128
  br label %187

165:                                              ; preds = %85
  store i64 0, i64* %14, align 8
  br label %166

166:                                              ; preds = %183, %165
  %167 = load i64, i64* %14, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = icmp slt i64 %167, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %166
  %174 = load i64*, i64** %6, align 8
  %175 = load i64, i64* %14, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %10, align 8
  %181 = load i64, i64* %14, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32 %179, i32* %182, align 4
  br label %183

183:                                              ; preds = %173
  %184 = load i64, i64* %14, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %14, align 8
  br label %166

186:                                              ; preds = %166
  br label %187

187:                                              ; preds = %85, %186, %164, %126
  %188 = load i32, i32* %8, align 4
  %189 = load i64*, i64** %6, align 8
  %190 = zext i32 %188 to i64
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  store i64* %191, i64** %6, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load i32*, i32** %10, align 8
  %194 = zext i32 %192 to i64
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32* %195, i32** %10, align 8
  br label %196

196:                                              ; preds = %187
  %197 = load i64, i64* %12, align 8
  %198 = add nsw i64 %197, 1
  store i64 %198, i64* %12, align 8
  br label %79

199:                                              ; preds = %79
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DIBWIDTHBYTES(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @WIDTHBYTES(i32) #1

declare dso_local i32 @Intensity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
