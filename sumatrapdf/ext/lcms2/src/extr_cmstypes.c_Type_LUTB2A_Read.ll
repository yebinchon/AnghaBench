; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_LUTB2A_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_LUTB2A_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_10__ = type { i64 (i32, %struct.TYPE_10__*)* }

@cmsMAXCHANNELS = common dso_local global i64 0, align 8
@cmsAT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_10__*, i64*, i64)* @Type_LUTB2A_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_LUTB2A_Read(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_10__* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64 (i32, %struct.TYPE_10__*)*, i64 (i32, %struct.TYPE_10__*)** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = call i64 %23(i32 %24, %struct.TYPE_10__* %25)
  %27 = sub i64 %26, 4
  store i64 %27, i64* %14, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = call i32 @_cmsReadUInt8Number(i32 %28, %struct.TYPE_10__* %29, i64* %12)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %201

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = call i32 @_cmsReadUInt8Number(i32 %34, %struct.TYPE_10__* %35, i64* %13)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i8* null, i8** %6, align 8
  br label %201

39:                                               ; preds = %33
  %40 = load i64, i64* %12, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @cmsMAXCHANNELS, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %39
  store i8* null, i8** %6, align 8
  br label %201

47:                                               ; preds = %42
  %48 = load i64, i64* %13, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @cmsMAXCHANNELS, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %47
  store i8* null, i8** %6, align 8
  br label %201

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = call i32 @_cmsReadUInt16Number(i32 %56, %struct.TYPE_10__* %57, i32* null)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i8* null, i8** %6, align 8
  br label %201

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = call i32 @_cmsReadUInt32Number(i32 %62, %struct.TYPE_10__* %63, i64* %15)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i8* null, i8** %6, align 8
  br label %201

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = call i32 @_cmsReadUInt32Number(i32 %68, %struct.TYPE_10__* %69, i64* %16)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i8* null, i8** %6, align 8
  br label %201

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %76 = call i32 @_cmsReadUInt32Number(i32 %74, %struct.TYPE_10__* %75, i64* %17)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i8* null, i8** %6, align 8
  br label %201

79:                                               ; preds = %73
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = call i32 @_cmsReadUInt32Number(i32 %80, %struct.TYPE_10__* %81, i64* %18)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i8* null, i8** %6, align 8
  br label %201

85:                                               ; preds = %79
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %88 = call i32 @_cmsReadUInt32Number(i32 %86, %struct.TYPE_10__* %87, i64* %19)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store i8* null, i8** %6, align 8
  br label %201

91:                                               ; preds = %85
  %92 = load i32, i32* %7, align 4
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %13, align 8
  %95 = call i8* @cmsPipelineAlloc(i32 %92, i64 %93, i64 %94)
  store i8* %95, i8** %20, align 8
  %96 = load i8*, i8** %20, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i8* null, i8** %6, align 8
  br label %201

99:                                               ; preds = %91
  %100 = load i64, i64* %15, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = load i8*, i8** %20, align 8
  %105 = load i32, i32* @cmsAT_END, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %15, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i64, i64* %12, align 8
  %113 = call i32 @ReadSetOfCurves(i32 %106, %struct._cms_typehandler_struct* %107, %struct.TYPE_10__* %108, i64 %111, i64 %112)
  %114 = call i32 @cmsPipelineInsertStage(i32 %103, i8* %104, i32 %105, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %102
  br label %197

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117, %99
  %119 = load i64, i64* %16, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %118
  %122 = load i32, i32* %7, align 4
  %123 = load i8*, i8** %20, align 8
  %124 = load i32, i32* @cmsAT_END, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* %16, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @ReadMatrix(i32 %125, %struct._cms_typehandler_struct* %126, %struct.TYPE_10__* %127, i64 %130)
  %132 = call i32 @cmsPipelineInsertStage(i32 %122, i8* %123, i32 %124, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %121
  br label %197

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135, %118
  %137 = load i64, i64* %17, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %136
  %140 = load i32, i32* %7, align 4
  %141 = load i8*, i8** %20, align 8
  %142 = load i32, i32* @cmsAT_END, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* %17, align 8
  %148 = add nsw i64 %146, %147
  %149 = load i64, i64* %12, align 8
  %150 = call i32 @ReadSetOfCurves(i32 %143, %struct._cms_typehandler_struct* %144, %struct.TYPE_10__* %145, i64 %148, i64 %149)
  %151 = call i32 @cmsPipelineInsertStage(i32 %140, i8* %141, i32 %142, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %139
  br label %197

154:                                              ; preds = %139
  br label %155

155:                                              ; preds = %154, %136
  %156 = load i64, i64* %18, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = load i32, i32* %7, align 4
  %160 = load i8*, i8** %20, align 8
  %161 = load i32, i32* @cmsAT_END, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %165 = load i64, i64* %14, align 8
  %166 = load i64, i64* %18, align 8
  %167 = add nsw i64 %165, %166
  %168 = load i64, i64* %12, align 8
  %169 = load i64, i64* %13, align 8
  %170 = call i32 @ReadCLUT(i32 %162, %struct._cms_typehandler_struct* %163, %struct.TYPE_10__* %164, i64 %167, i64 %168, i64 %169)
  %171 = call i32 @cmsPipelineInsertStage(i32 %159, i8* %160, i32 %161, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %158
  br label %197

174:                                              ; preds = %158
  br label %175

175:                                              ; preds = %174, %155
  %176 = load i64, i64* %19, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %175
  %179 = load i32, i32* %7, align 4
  %180 = load i8*, i8** %20, align 8
  %181 = load i32, i32* @cmsAT_END, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %185 = load i64, i64* %14, align 8
  %186 = load i64, i64* %19, align 8
  %187 = add nsw i64 %185, %186
  %188 = load i64, i64* %13, align 8
  %189 = call i32 @ReadSetOfCurves(i32 %182, %struct._cms_typehandler_struct* %183, %struct.TYPE_10__* %184, i64 %187, i64 %188)
  %190 = call i32 @cmsPipelineInsertStage(i32 %179, i8* %180, i32 %181, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %178
  br label %197

193:                                              ; preds = %178
  br label %194

194:                                              ; preds = %193, %175
  %195 = load i64*, i64** %10, align 8
  store i64 1, i64* %195, align 8
  %196 = load i8*, i8** %20, align 8
  store i8* %196, i8** %6, align 8
  br label %201

197:                                              ; preds = %192, %173, %153, %134, %116
  %198 = load i32, i32* %7, align 4
  %199 = load i8*, i8** %20, align 8
  %200 = call i32 @cmsPipelineFree(i32 %198, i8* %199)
  store i8* null, i8** %6, align 8
  br label %201

201:                                              ; preds = %197, %194, %98, %90, %84, %78, %72, %66, %60, %54, %46, %38, %32
  %202 = load i8*, i8** %6, align 8
  ret i8* %202
}

declare dso_local i32 @_cmsReadUInt8Number(i32, %struct.TYPE_10__*, i64*) #1

declare dso_local i32 @_cmsReadUInt16Number(i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, %struct.TYPE_10__*, i64*) #1

declare dso_local i8* @cmsPipelineAlloc(i32, i64, i64) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i8*, i32, i32) #1

declare dso_local i32 @ReadSetOfCurves(i32, %struct._cms_typehandler_struct*, %struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @ReadMatrix(i32, %struct._cms_typehandler_struct*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @ReadCLUT(i32, %struct._cms_typehandler_struct*, %struct.TYPE_10__*, i64, i64, i64) #1

declare dso_local i32 @cmsPipelineFree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
