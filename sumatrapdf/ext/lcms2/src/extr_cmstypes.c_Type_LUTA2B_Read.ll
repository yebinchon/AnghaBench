; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_LUTA2B_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_LUTA2B_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_10__ = type { i64 (i32, %struct.TYPE_10__*)* }

@cmsMAXCHANNELS = common dso_local global i64 0, align 8
@cmsAT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_10__*, i64*, i64)* @Type_LUTA2B_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_LUTA2B_Read(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_10__* %2, i64* %3, i64 %4) #0 {
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
  store i64 %27, i64* %12, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = call i32 @_cmsReadUInt8Number(i32 %28, %struct.TYPE_10__* %29, i64* %13)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %201

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = call i32 @_cmsReadUInt8Number(i32 %34, %struct.TYPE_10__* %35, i64* %14)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i8* null, i8** %6, align 8
  br label %201

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = call i32 @_cmsReadUInt16Number(i32 %40, %struct.TYPE_10__* %41, i32* null)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i8* null, i8** %6, align 8
  br label %201

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %48 = call i32 @_cmsReadUInt32Number(i32 %46, %struct.TYPE_10__* %47, i64* %15)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i8* null, i8** %6, align 8
  br label %201

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = call i32 @_cmsReadUInt32Number(i32 %52, %struct.TYPE_10__* %53, i64* %16)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i8* null, i8** %6, align 8
  br label %201

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %60 = call i32 @_cmsReadUInt32Number(i32 %58, %struct.TYPE_10__* %59, i64* %17)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i8* null, i8** %6, align 8
  br label %201

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = call i32 @_cmsReadUInt32Number(i32 %64, %struct.TYPE_10__* %65, i64* %18)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i8* null, i8** %6, align 8
  br label %201

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = call i32 @_cmsReadUInt32Number(i32 %70, %struct.TYPE_10__* %71, i64* %19)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i8* null, i8** %6, align 8
  br label %201

75:                                               ; preds = %69
  %76 = load i64, i64* %13, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* @cmsMAXCHANNELS, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %75
  store i8* null, i8** %6, align 8
  br label %201

83:                                               ; preds = %78
  %84 = load i64, i64* %14, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* @cmsMAXCHANNELS, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %83
  store i8* null, i8** %6, align 8
  br label %201

91:                                               ; preds = %86
  %92 = load i32, i32* %7, align 4
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* %14, align 8
  %95 = call i8* @cmsPipelineAlloc(i32 %92, i64 %93, i64 %94)
  store i8* %95, i8** %20, align 8
  %96 = load i8*, i8** %20, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i8* null, i8** %6, align 8
  br label %201

99:                                               ; preds = %91
  %100 = load i64, i64* %19, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = load i8*, i8** %20, align 8
  %105 = load i32, i32* @cmsAT_END, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* %19, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i64, i64* %13, align 8
  %113 = call i32 @ReadSetOfCurves(i32 %106, %struct._cms_typehandler_struct* %107, %struct.TYPE_10__* %108, i64 %111, i64 %112)
  %114 = call i32 @cmsPipelineInsertStage(i32 %103, i8* %104, i32 %105, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %102
  br label %197

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117, %99
  %119 = load i64, i64* %18, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  %122 = load i32, i32* %7, align 4
  %123 = load i8*, i8** %20, align 8
  %124 = load i32, i32* @cmsAT_END, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* %18, align 8
  %130 = add nsw i64 %128, %129
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* %14, align 8
  %133 = call i32 @ReadCLUT(i32 %125, %struct._cms_typehandler_struct* %126, %struct.TYPE_10__* %127, i64 %130, i64 %131, i64 %132)
  %134 = call i32 @cmsPipelineInsertStage(i32 %122, i8* %123, i32 %124, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %121
  br label %197

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137, %118
  %139 = load i64, i64* %17, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %138
  %142 = load i32, i32* %7, align 4
  %143 = load i8*, i8** %20, align 8
  %144 = load i32, i32* @cmsAT_END, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %148 = load i64, i64* %12, align 8
  %149 = load i64, i64* %17, align 8
  %150 = add nsw i64 %148, %149
  %151 = load i64, i64* %14, align 8
  %152 = call i32 @ReadSetOfCurves(i32 %145, %struct._cms_typehandler_struct* %146, %struct.TYPE_10__* %147, i64 %150, i64 %151)
  %153 = call i32 @cmsPipelineInsertStage(i32 %142, i8* %143, i32 %144, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %141
  br label %197

156:                                              ; preds = %141
  br label %157

157:                                              ; preds = %156, %138
  %158 = load i64, i64* %16, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %157
  %161 = load i32, i32* %7, align 4
  %162 = load i8*, i8** %20, align 8
  %163 = load i32, i32* @cmsAT_END, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* %16, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @ReadMatrix(i32 %164, %struct._cms_typehandler_struct* %165, %struct.TYPE_10__* %166, i64 %169)
  %171 = call i32 @cmsPipelineInsertStage(i32 %161, i8* %162, i32 %163, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %160
  br label %197

174:                                              ; preds = %160
  br label %175

175:                                              ; preds = %174, %157
  %176 = load i64, i64* %15, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %175
  %179 = load i32, i32* %7, align 4
  %180 = load i8*, i8** %20, align 8
  %181 = load i32, i32* @cmsAT_END, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %185 = load i64, i64* %12, align 8
  %186 = load i64, i64* %15, align 8
  %187 = add nsw i64 %185, %186
  %188 = load i64, i64* %14, align 8
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

197:                                              ; preds = %192, %173, %155, %136, %116
  %198 = load i32, i32* %7, align 4
  %199 = load i8*, i8** %20, align 8
  %200 = call i32 @cmsPipelineFree(i32 %198, i8* %199)
  store i8* null, i8** %6, align 8
  br label %201

201:                                              ; preds = %197, %194, %98, %90, %82, %74, %68, %62, %56, %50, %44, %38, %32
  %202 = load i8*, i8** %6, align 8
  ret i8* %202
}

declare dso_local i32 @_cmsReadUInt8Number(i32, %struct.TYPE_10__*, i64*) #1

declare dso_local i32 @_cmsReadUInt16Number(i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, %struct.TYPE_10__*, i64*) #1

declare dso_local i8* @cmsPipelineAlloc(i32, i64, i64) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i8*, i32, i32) #1

declare dso_local i32 @ReadSetOfCurves(i32, %struct._cms_typehandler_struct*, %struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @ReadCLUT(i32, %struct._cms_typehandler_struct*, %struct.TYPE_10__*, i64, i64, i64) #1

declare dso_local i32 @ReadMatrix(i32, %struct._cms_typehandler_struct*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @cmsPipelineFree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
