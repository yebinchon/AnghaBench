; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Bra86.c_x86_Convert.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Bra86.c_x86_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kMaskToBitNumber = common dso_local global i32* null, align 8
@kMaskToAllowedStatus = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_Convert(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 7
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %226

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 5
  store i32 %30, i32* %9, align 4
  store i32 -1, i32* %13, align 4
  br label %31

31:                                               ; preds = %208, %103, %28
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %15, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = getelementptr inbounds i32, i32* %39, i64 -4
  store i32* %40, i32** %16, align 8
  br label %41

41:                                               ; preds = %52, %31
  %42 = load i32*, i32** %15, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = icmp ult i32* %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 254
  %49 = icmp eq i32 %48, 232
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %55

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  %53 = load i32*, i32** %15, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %15, align 8
  br label %41

55:                                               ; preds = %50, %41
  %56 = load i32*, i32** %15, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = ptrtoint i32* %56 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %12, align 4
  %63 = load i32*, i32** %15, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = icmp uge i32* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %209

67:                                               ; preds = %55
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp sgt i32 %71, 3
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 0, i32* %14, align 4
  br label %113

74:                                               ; preds = %67
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 %76, 1
  %78 = shl i32 %75, %77
  %79 = and i32 %78, 7
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %74
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** @kMaskToBitNumber, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 4, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %83, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %17, align 4
  %93 = load i32*, i32** @kMaskToAllowedStatus, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %82
  %100 = load i32, i32* %17, align 4
  %101 = call i64 @Test86MSByte(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99, %82
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = shl i32 %105, 1
  %107 = and i32 %106, 7
  %108 = or i32 %107, 1
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %31

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %74
  br label %113

113:                                              ; preds = %112, %73
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %13, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @Test86MSByte(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %201

120:                                              ; preds = %113
  %121 = load i32*, i32** %15, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 24
  %125 = load i32*, i32** %15, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 16
  %129 = or i32 %124, %128
  %130 = load i32*, i32** %15, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 8
  %134 = or i32 %129, %133
  %135 = load i32*, i32** %15, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %134, %137
  store i32 %138, i32* %18, align 4
  br label %139

139:                                              ; preds = %173, %120
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %145, %146
  store i32 %147, i32* %19, align 4
  br label %154

148:                                              ; preds = %139
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %150, %151
  %153 = sub nsw i32 %149, %152
  store i32 %153, i32* %19, align 4
  br label %154

154:                                              ; preds = %148, %142
  %155 = load i32, i32* %14, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %180

158:                                              ; preds = %154
  %159 = load i32*, i32** @kMaskToBitNumber, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %163, 8
  store i32 %164, i32* %21, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %21, align 4
  %167 = sub nsw i32 24, %166
  %168 = ashr i32 %165, %167
  store i32 %168, i32* %20, align 4
  %169 = load i32, i32* %20, align 4
  %170 = call i64 @Test86MSByte(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %158
  br label %180

173:                                              ; preds = %158
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %21, align 4
  %176 = sub nsw i32 32, %175
  %177 = shl i32 1, %176
  %178 = sub nsw i32 %177, 1
  %179 = xor i32 %174, %178
  store i32 %179, i32* %18, align 4
  br label %139

180:                                              ; preds = %172, %157
  %181 = load i32, i32* %19, align 4
  %182 = ashr i32 %181, 24
  %183 = and i32 %182, 1
  %184 = sub nsw i32 %183, 1
  %185 = xor i32 %184, -1
  %186 = load i32*, i32** %15, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 4
  store i32 %185, i32* %187, align 4
  %188 = load i32, i32* %19, align 4
  %189 = ashr i32 %188, 16
  %190 = load i32*, i32** %15, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %19, align 4
  %193 = ashr i32 %192, 8
  %194 = load i32*, i32** %15, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %19, align 4
  %197 = load i32*, i32** %15, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, 5
  store i32 %200, i32* %12, align 4
  br label %208

201:                                              ; preds = %113
  %202 = load i32, i32* %14, align 4
  %203 = shl i32 %202, 1
  %204 = and i32 %203, 7
  %205 = or i32 %204, 1
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %208

208:                                              ; preds = %201, %180
  br label %31

209:                                              ; preds = %66
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %13, align 4
  %212 = sub nsw i32 %210, %211
  store i32 %212, i32* %13, align 4
  %213 = load i32, i32* %13, align 4
  %214 = icmp sgt i32 %213, 3
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %222

216:                                              ; preds = %209
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* %13, align 4
  %219 = sub nsw i32 %218, 1
  %220 = shl i32 %217, %219
  %221 = and i32 %220, 7
  br label %222

222:                                              ; preds = %216, %215
  %223 = phi i32 [ 0, %215 ], [ %221, %216 ]
  %224 = load i32*, i32** %10, align 8
  store i32 %223, i32* %224, align 4
  %225 = load i32, i32* %12, align 4
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %222, %27
  %227 = load i32, i32* %6, align 4
  ret i32 %227
}

declare dso_local i64 @Test86MSByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
