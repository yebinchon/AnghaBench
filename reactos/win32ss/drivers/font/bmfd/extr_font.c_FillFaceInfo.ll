; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/font/bmfd/extr_font.c_FillFaceInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/font/bmfd/extr_font.c_FillFaceInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32 }

@DFF_1COLOR = common dso_local global i32 0, align 4
@FM_INFO_MASK = common dso_local global i32 0, align 4
@DFF_FIXED = common dso_local global i32 0, align 4
@FM_INFO_CONSTANT_WIDTH = common dso_local global i32 0, align 4
@FM_INFO_1BPP = common dso_local global i32 0, align 4
@DFF_16COLOR = common dso_local global i32 0, align 4
@FM_INFO_4BPP = common dso_local global i32 0, align 4
@DFF_256COLOR = common dso_local global i32 0, align 4
@FM_INFO_8BPP = common dso_local global i32 0, align 4
@DFF_RGBCOLOR = common dso_local global i32 0, align 4
@FM_INFO_24BPP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*)* @FillFaceInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FillFaceInfo(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca [4 x i64], align 16
  %6 = alloca [4 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 17
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 14
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @GETVAL(i32 %14)
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 13
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 11
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = add nsw i64 %25, 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 16
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 11
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  store i64 %31, i64* %32, align 16
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 13
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 1
  store i64 %35, i64* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 11
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 12
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 2
  store i64 %43, i64* %44, align 16
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 11
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 10
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 3
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %55 = call i32 @EngMultiByteToUnicodeN(i8** %53, i32 32, i32* %7, i64* %54, i32 4)
  %56 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %57 = load i8*, i8** %56, align 16
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 15
  store i8* %57, i8** %59, align 8
  %60 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 14
  store i8* %61, i8** %63, align 8
  %64 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 2
  %65 = load i8*, i8** %64, align 16
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 13
  store i8* %65, i8** %67, align 8
  %68 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 3
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 12
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @GETVAL(i32 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 9
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @GETVAL(i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @GETVAL(i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 11
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @GETVAL(i32 %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 8
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 9
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 8
  %101 = load i8*, i8** %100, align 8
  %102 = ptrtoint i8* %98 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 10
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp sge i32 %110, 768
  br i1 %111, label %112, label %143

112:                                              ; preds = %2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @GETVAL(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  store i32 %117, i32* %8, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @GETVAL(i32 %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 7
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @GETVAL(i32 %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 6
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @GETVAL(i32 %132)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 5
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 4
  store i32* %138, i32** %140, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  store i32 4, i32* %142, align 4
  br label %158

143:                                              ; preds = %2
  %144 = load i32, i32* @DFF_1COLOR, align 4
  store i32 %144, i32* %8, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 7
  store i8* null, i8** %146, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 6
  store i8* null, i8** %148, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 5
  store i8* null, i8** %150, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 4
  store i32* %153, i32** %155, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  store i32 4, i32* %157, align 4
  br label %158

158:                                              ; preds = %143, %112
  %159 = load i32, i32* @FM_INFO_MASK, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @DFF_FIXED, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %158
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %166, %158
  %172 = load i32, i32* @FM_INFO_CONSTANT_WIDTH, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %166
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @DFF_1COLOR, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load i32, i32* @FM_INFO_1BPP, align 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %224

188:                                              ; preds = %177
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @DFF_16COLOR, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load i32, i32* @FM_INFO_4BPP, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %223

199:                                              ; preds = %188
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* @DFF_256COLOR, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load i32, i32* @FM_INFO_8BPP, align 4
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %222

210:                                              ; preds = %199
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @DFF_RGBCOLOR, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load i32, i32* @FM_INFO_24BPP, align 4
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %215, %210
  br label %222

222:                                              ; preds = %221, %204
  br label %223

223:                                              ; preds = %222, %193
  br label %224

224:                                              ; preds = %223, %182
  %225 = load i32, i32* @TRUE, align 4
  ret i32 %225
}

declare dso_local i8* @GETVAL(i32) #1

declare dso_local i32 @EngMultiByteToUnicodeN(i8**, i32, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
