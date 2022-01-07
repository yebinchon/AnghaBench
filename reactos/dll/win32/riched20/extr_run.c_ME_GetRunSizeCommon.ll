; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_GetRunSizeCommon.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_GetRunSizeCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_31__ = type { i32, i32, i32, %struct.TYPE_27__, %struct.TYPE_24__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_30__ = type { i8* }

@ME_GetRunSizeCommon.spaceW = internal constant [2 x i8] c" \00", align 1
@MERF_ENDPARA = common dso_local global i32 0, align 4
@MEPF_COMPLEX = common dso_local global i32 0, align 4
@MERF_TAB = common dso_local global i32 0, align 4
@PFM_TABLE = common dso_local global i32 0, align 4
@PFE_TABLE = common dso_local global i32 0, align 4
@lDefaultTab = common dso_local global i32 0, align 4
@MERF_GRAPHICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ME_GetRunSizeCommon(%struct.TYPE_33__* %0, %struct.TYPE_32__* %1, %struct.TYPE_31__* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_28__, align 4
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %9, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %10, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @min(i32 %22, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MERF_ENDPARA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %7
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @min(i32 %34, i32 1)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %39, align 8
  %41 = call i32 @ME_GetTextExtent(%struct.TYPE_33__* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @ME_GetRunSizeCommon.spaceW, i64 0, i64 0), i32 %37, %struct.TYPE_24__* %40, %struct.TYPE_28__* %8)
  br label %91

42:                                               ; preds = %7
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MEPF_COMPLEX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  br label %90

54:                                               ; preds = %42
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %54
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call %struct.TYPE_30__* @ME_MakeStringR(i64 %66, i32 %67)
  store %struct.TYPE_30__* %68, %struct.TYPE_30__** %16, align 8
  %69 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %75, align 8
  %77 = call i32 @ME_GetTextExtent(%struct.TYPE_33__* %69, i8* %72, i32 %73, %struct.TYPE_24__* %76, %struct.TYPE_28__* %8)
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %79 = call i32 @ME_DestroyString(%struct.TYPE_30__* %78)
  br label %89

80:                                               ; preds = %54
  %81 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %83 = call i8* @get_text(%struct.TYPE_31__* %82, i32 0)
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %86, align 8
  %88 = call i32 @ME_GetTextExtent(%struct.TYPE_33__* %81, i8* %83, i32 %84, %struct.TYPE_24__* %87, %struct.TYPE_28__* %8)
  br label %89

89:                                               ; preds = %80, %61
  br label %90

90:                                               ; preds = %89, %49
  br label %91

91:                                               ; preds = %90, %33
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %14, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %15, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32*, i32** %14, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %15, align 8
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %107, %109
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 1
  store i32 %110, i32* %111, align 4
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @MERF_TAB, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %215

118:                                              ; preds = %91
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 1
  store %struct.TYPE_29__* %120, %struct.TYPE_29__** %21, align 8
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %118
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @PFM_TABLE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %127
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @PFE_TABLE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %144, 2
  store i32 %145, i32* %20, align 4
  br label %146

146:                                              ; preds = %141, %134, %127, %118
  br label %147

147:                                              ; preds = %207, %146
  %148 = load i32, i32* %18, align 4
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %176

153:                                              ; preds = %147
  %154 = load i32, i32* %18, align 4
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, 1
  %159 = icmp eq i32 %154, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = load i32, i32* %20, align 4
  %162 = ashr i32 %161, 1
  store i32 %162, i32* %20, align 4
  br label %163

163:                                              ; preds = %160, %153
  %164 = load i32, i32* %20, align 4
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, 16777215
  %173 = add nsw i32 %164, %172
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %18, align 4
  br label %184

176:                                              ; preds = %147
  %177 = load i32, i32* @lDefaultTab, align 4
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* @lDefaultTab, align 4
  %180 = srem i32 %178, %179
  %181 = sub nsw i32 %177, %180
  %182 = load i32, i32* %17, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %17, align 4
  br label %184

184:                                              ; preds = %176, %163
  %185 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %186 = load i32, i32* %17, align 4
  %187 = call i32 @ME_twips2pointsX(%struct.TYPE_33__* %185, i32 %186)
  store i32 %187, i32* %19, align 4
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* %13, align 4
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %189, %193
  %195 = icmp sgt i32 %188, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %184
  %197 = load i32, i32* %19, align 4
  %198 = load i32, i32* %13, align 4
  %199 = sub nsw i32 %197, %198
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %199, %203
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  store i32 %204, i32* %205, align 4
  br label %208

206:                                              ; preds = %184
  br label %207

207:                                              ; preds = %206
  br i1 true, label %147, label %208

208:                                              ; preds = %207, %196
  %209 = load i32*, i32** %14, align 8
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %15, align 8
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %210, %212
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 1
  store i32 %213, i32* %214, align 4
  br label %237

215:                                              ; preds = %91
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @MERF_GRAPHICS, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %236

222:                                              ; preds = %215
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %224 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %225 = call i32 @ME_GetOLEObjectSize(%struct.TYPE_33__* %223, %struct.TYPE_31__* %224, %struct.TYPE_28__* %8)
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %14, align 8
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %227, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %222
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %14, align 8
  store i32 %233, i32* %234, align 4
  br label %235

235:                                              ; preds = %231, %222
  br label %237

236:                                              ; preds = %215
  br label %237

237:                                              ; preds = %236, %235, %208
  %238 = bitcast %struct.TYPE_28__* %8 to i64*
  %239 = load i64, i64* %238, align 4
  ret i64 %239
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ME_GetTextExtent(%struct.TYPE_33__*, i8*, i32, %struct.TYPE_24__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_30__* @ME_MakeStringR(i64, i32) #1

declare dso_local i32 @ME_DestroyString(%struct.TYPE_30__*) #1

declare dso_local i8* @get_text(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @ME_twips2pointsX(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @ME_GetOLEObjectSize(%struct.TYPE_33__*, %struct.TYPE_31__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
