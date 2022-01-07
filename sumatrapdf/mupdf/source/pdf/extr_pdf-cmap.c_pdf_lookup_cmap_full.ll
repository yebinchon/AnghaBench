; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap.c_pdf_lookup_cmap_full.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap.c_pdf_lookup_cmap_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_lookup_cmap_full(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 7
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %9, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %10, align 8
  store i32 0, i32* %12, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %81, %3
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %82

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %35, %36
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %39, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %81

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ugt i32 %51, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %80

62:                                               ; preds = %50
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub i32 %63, %69
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %70, %76
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %77, i32* %79, align 4
  store i32 1, i32* %4, align 4
  br label %224

80:                                               ; preds = %59
  br label %81

81:                                               ; preds = %80, %47
  br label %30

82:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %138, %82
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %139

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %92, %93
  %95 = ashr i32 %94, 1
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ult i32 %96, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load i32, i32* %14, align 4
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %138

107:                                              ; preds = %91
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ugt i32 %108, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %137

119:                                              ; preds = %107
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sub i32 %120, %126
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = add i32 %127, %133
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %134, i32* %136, align 4
  store i32 1, i32* %4, align 4
  br label %224

137:                                              ; preds = %116
  br label %138

138:                                              ; preds = %137, %104
  br label %87

139:                                              ; preds = %87
  store i32 0, i32* %12, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %210, %139
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %211

148:                                              ; preds = %144
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %149, %150
  %152 = ashr i32 %151, 1
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ult i32 %153, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %148
  %162 = load i32, i32* %14, align 4
  %163 = sub nsw i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %210

164:                                              ; preds = %148
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ugt i32 %165, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %164
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  br label %209

176:                                              ; preds = %164
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds i32, i32* %179, i64 %187
  store i32* %188, i32** %15, align 8
  %189 = load i32*, i32** %15, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %15, align 8
  %191 = load i32, i32* %189, align 4
  store i32 %191, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %192

192:                                              ; preds = %204, %176
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %16, align 4
  %195 = icmp ult i32 %193, %194
  br i1 %195, label %196, label %207

196:                                              ; preds = %192
  %197 = load i32*, i32** %15, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %15, align 8
  %199 = load i32, i32* %197, align 4
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* %11, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %199, i32* %203, align 4
  br label %204

204:                                              ; preds = %196
  %205 = load i32, i32* %11, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %11, align 4
  br label %192

207:                                              ; preds = %192
  %208 = load i32, i32* %16, align 4
  store i32 %208, i32* %4, align 4
  br label %224

209:                                              ; preds = %173
  br label %210

210:                                              ; preds = %209, %161
  br label %144

211:                                              ; preds = %144
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 4
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = icmp ne %struct.TYPE_9__* %214, null
  br i1 %215, label %216, label %223

216:                                              ; preds = %211
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = load i32*, i32** %7, align 8
  %222 = call i32 @pdf_lookup_cmap_full(%struct.TYPE_9__* %219, i32 %220, i32* %221)
  store i32 %222, i32* %4, align 4
  br label %224

223:                                              ; preds = %211
  store i32 0, i32* %4, align 4
  br label %224

224:                                              ; preds = %223, %216, %207, %119, %62
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
