; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-sgi.c_next_sgilog16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-sgi.c_next_sgilog16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i32 }

@EOF = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"premature end of data in run length decode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i64)* @next_sgilog16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_sgilog16(i32* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @EOF, align 4
  store i32 %23, i32* %4, align 4
  br label %250

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(i32* %27, i32 0, i32 %33)
  store i32 8, i32* %12, align 4
  br label %35

35:                                               ; preds = %188, %24
  %36 = load i32, i32* %12, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %191

38:                                               ; preds = %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32* %47, i32** %10, align 8
  br label %48

48:                                               ; preds = %186, %38
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = icmp ult i32* %49, %50
  br i1 %51, label %52, label %187

52:                                               ; preds = %48
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %114

57:                                               ; preds = %52
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @fz_read_byte(i32* %58, i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %57
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %75 = call i32 @fz_throw(i32* %73, i32 %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %70, %57
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %79, 128
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %113

87:                                               ; preds = %76
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 126
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @fz_read_byte(i32* %94, i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %87
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i32 -1, i32* %108, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %111 = call i32 @fz_throw(i32* %109, i32 %110, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %112

112:                                              ; preds = %106, %87
  br label %113

113:                                              ; preds = %112, %81
  br label %114

114:                                              ; preds = %113, %52
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %117, 128
  br i1 %118, label %119, label %159

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %146, %119
  %121 = load i32*, i32** %9, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = icmp ult i32* %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br label %129

129:                                              ; preds = %124, %120
  %130 = phi i1 [ false, %120 ], [ %128, %124 ]
  br i1 %130, label %131, label %158

131:                                              ; preds = %129
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = call i8* @fz_read_byte(i32* %132, i32 %135)
  %137 = ptrtoint i8* %136 to i32
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %131
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store i32 -1, i32* %142, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %145 = call i32 @fz_throw(i32* %143, i32 %144, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %146

146:                                              ; preds = %140, %131
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %12, align 4
  %149 = shl i32 %147, %148
  %150 = load i32*, i32** %9, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %9, align 8
  %152 = load i32, i32* %150, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %150, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %155, align 8
  br label %120

158:                                              ; preds = %129
  br label %186

159:                                              ; preds = %114
  br label %160

160:                                              ; preds = %171, %159
  %161 = load i32*, i32** %9, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = icmp ult i32* %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %164, %160
  %170 = phi i1 [ false, %160 ], [ %168, %164 ]
  br i1 %170, label %171, label %185

171:                                              ; preds = %169
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %12, align 4
  %176 = shl i32 %174, %175
  %177 = load i32*, i32** %9, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %9, align 8
  %179 = load i32, i32* %177, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %177, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %182, align 8
  br label %160

185:                                              ; preds = %169
  br label %186

186:                                              ; preds = %185, %158
  br label %48

187:                                              ; preds = %48
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %12, align 4
  %190 = sub nsw i32 %189, 8
  store i32 %190, i32* %12, align 4
  br label %35

191:                                              ; preds = %35
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  store i32* %194, i32** %9, align 8
  %195 = load i32*, i32** %9, align 8
  store i32* %195, i32** %11, align 8
  %196 = load i32*, i32** %9, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %196, i64 %200
  store i32* %201, i32** %10, align 8
  br label %202

202:                                              ; preds = %206, %191
  %203 = load i32*, i32** %9, align 8
  %204 = load i32*, i32** %10, align 8
  %205 = icmp ult i32* %203, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %202
  %207 = load i32*, i32** %5, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = getelementptr inbounds i32, i32* %208, i32 1
  store i32* %209, i32** %9, align 8
  %210 = load i32, i32* %208, align 4
  %211 = call i32 @sgilog16val(i32* %207, i32 %210)
  %212 = load i32*, i32** %11, align 8
  %213 = getelementptr inbounds i32, i32* %212, i32 1
  store i32* %213, i32** %11, align 8
  store i32 %211, i32* %212, align 4
  br label %202

214:                                              ; preds = %202
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  store i32* %217, i32** %219, align 8
  %220 = load i32*, i32** %11, align 8
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 2
  store i32* %220, i32** %222, align 8
  %223 = load i32*, i32** %11, align 8
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = ptrtoint i32* %223 to i64
  %228 = ptrtoint i32* %226 to i64
  %229 = sub i64 %227, %228
  %230 = sdiv exact i64 %229, 4
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %230
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %232, align 8
  %237 = load i32*, i32** %11, align 8
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = icmp eq i32* %237, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %214
  %243 = load i32, i32* @EOF, align 4
  store i32 %243, i32* %4, align 4
  br label %250

244:                                              ; preds = %214
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i32 1
  store i32* %248, i32** %246, align 8
  %249 = load i32, i32* %247, align 4
  store i32 %249, i32* %4, align 4
  br label %250

250:                                              ; preds = %244, %242, %22
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @fz_read_byte(i32*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @sgilog16val(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
