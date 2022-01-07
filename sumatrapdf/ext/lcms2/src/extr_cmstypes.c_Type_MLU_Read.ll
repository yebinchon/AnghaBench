; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_MLU_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_MLU_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"multiLocalizedUnicodeType of len != 12 is not supported.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, i32*, i32*, i32)* @Type_MLU_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_MLU_Read(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %25 = call i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct* %24)
  %26 = load i32*, i32** %10, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @_cmsReadUInt32Number(i32 %27, i32* %28, i32* %13)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %215

32:                                               ; preds = %5
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @_cmsReadUInt32Number(i32 %33, i32* %34, i32* %14)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i8* null, i8** %6, align 8
  br label %215

38:                                               ; preds = %32
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 12
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %44 = call i32 @cmsSignalError(i32 %42, i32 %43, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %6, align 8
  br label %215

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call %struct.TYPE_6__* @cmsMLUalloc(i32 %46, i32 %47)
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %12, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = icmp eq %struct.TYPE_6__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i8* null, i8** %6, align 8
  br label %215

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 12, %56
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %16, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %19, align 4
  br label %61

61:                                               ; preds = %161, %52
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %164

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = call i32 @_cmsReadUInt16Number(i32 %66, i32* %67, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %65
  br label %207

78:                                               ; preds = %65
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = call i32 @_cmsReadUInt16Number(i32 %79, i32* %80, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %78
  br label %207

91:                                               ; preds = %78
  %92 = load i32, i32* %7, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @_cmsReadUInt32Number(i32 %92, i32* %93, i32* %17)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %207

97:                                               ; preds = %91
  %98 = load i32, i32* %7, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @_cmsReadUInt32Number(i32 %98, i32* %99, i32* %18)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %207

103:                                              ; preds = %97
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 8
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %207

109:                                              ; preds = %103
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %17, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %122, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 8
  %121 = icmp sgt i32 %118, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %115, %109
  br label %207

123:                                              ; preds = %115
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %16, align 4
  %126 = sub nsw i32 %124, %125
  %127 = sub nsw i32 %126, 8
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = udiv i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i32, i32* %19, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i32 %132, i32* %139, align 4
  %140 = load i32, i32* %21, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = udiv i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  store i32 %144, i32* %151, align 4
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %152, %153
  store i32 %154, i32* %22, align 4
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %23, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %123
  %159 = load i32, i32* %22, align 4
  store i32 %159, i32* %23, align 4
  br label %160

160:                                              ; preds = %158, %123
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %19, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %19, align 4
  br label %61

164:                                              ; preds = %61
  %165 = load i32, i32* %23, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 4
  %168 = udiv i64 %167, 4
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  store i32* null, i32** %20, align 8
  store i32 0, i32* %15, align 4
  br label %194

173:                                              ; preds = %164
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i64 @_cmsMalloc(i32 %174, i32 %175)
  %177 = inttoptr i64 %176 to i32*
  store i32* %177, i32** %20, align 8
  %178 = load i32*, i32** %20, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %207

181:                                              ; preds = %173
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = udiv i64 %183, 4
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %15, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load i32*, i32** %9, align 8
  %188 = load i32, i32* %15, align 4
  %189 = load i32*, i32** %20, align 8
  %190 = call i32 @_cmsReadWCharArray(i32 %186, i32* %187, i32 %188, i32* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %181
  br label %207

193:                                              ; preds = %181
  br label %194

194:                                              ; preds = %193, %172
  %195 = load i32*, i32** %20, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  store i32* %195, i32** %197, align 8
  %198 = load i32, i32* %11, align 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  %204 = load i32*, i32** %10, align 8
  store i32 1, i32* %204, align 4
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %206 = bitcast %struct.TYPE_6__* %205 to i8*
  store i8* %206, i8** %6, align 8
  br label %215

207:                                              ; preds = %192, %180, %122, %108, %102, %96, %90, %77
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %209 = icmp ne %struct.TYPE_6__* %208, null
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i32, i32* %7, align 4
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %213 = call i32 @cmsMLUfree(i32 %211, %struct.TYPE_6__* %212)
  br label %214

214:                                              ; preds = %210, %207
  store i8* null, i8** %6, align 8
  br label %215

215:                                              ; preds = %214, %194, %51, %41, %37, %31
  %216 = load i8*, i8** %6, align 8
  ret i8* %216
}

declare dso_local i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct*) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, i32*, i32*) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*) #1

declare dso_local %struct.TYPE_6__* @cmsMLUalloc(i32, i32) #1

declare dso_local i32 @_cmsReadUInt16Number(i32, i32*, i32*) #1

declare dso_local i64 @_cmsMalloc(i32, i32) #1

declare dso_local i32 @_cmsReadWCharArray(i32, i32*, i32, i32*) #1

declare dso_local i32 @cmsMLUfree(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
