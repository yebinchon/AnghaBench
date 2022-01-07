; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_UcrBg_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_UcrBg_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_12__ = type { i32 (i32, %struct.TYPE_12__*, i8*, i32, i32)* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@cmsNoLanguage = common dso_local global i32 0, align 4
@cmsNoCountry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_12__*, i32*, i32)* @Type_UcrBg_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_UcrBg_Read(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_12__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @_cmsMallocZero(i32 %16, i32 24)
  %18 = inttoptr i64 %17 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %12, align 8
  %19 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %20 = call i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct* %19)
  %21 = load i32*, i32** %10, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %23 = icmp eq %struct.TYPE_11__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %181

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = call i32 @_cmsReadUInt32Number(i32 %26, %struct.TYPE_12__* %27, i32* %13)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i8* null, i8** %6, align 8
  br label %181

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 4
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i8* null, i8** %6, align 8
  br label %181

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i8* @cmsBuildTabulatedToneCurve16(i32 %41, i32 %42, i32* null)
  %44 = bitcast i8* %43 to %struct.TYPE_9__*
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = icmp eq %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  store i8* null, i8** %6, align 8
  br label %181

52:                                               ; preds = %36
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @_cmsReadUInt16Array(i32 %53, %struct.TYPE_12__* %54, i32 %55, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  store i8* null, i8** %6, align 8
  br label %181

64:                                               ; preds = %52
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %66, 4
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i8* null, i8** %6, align 8
  br label %181

69:                                               ; preds = %64
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %79 = call i32 @_cmsReadUInt32Number(i32 %77, %struct.TYPE_12__* %78, i32* %14)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %69
  store i8* null, i8** %6, align 8
  br label %181

82:                                               ; preds = %69
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ult i64 %84, 4
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i8* null, i8** %6, align 8
  br label %181

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = sub i64 %89, 4
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i8* @cmsBuildTabulatedToneCurve16(i32 %92, i32 %93, i32* null)
  %95 = bitcast i8* %94 to %struct.TYPE_10__*
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %97, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = icmp eq %struct.TYPE_10__* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  store i8* null, i8** %6, align 8
  br label %181

103:                                              ; preds = %87
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @_cmsReadUInt16Array(i32 %104, %struct.TYPE_12__* %105, i32 %106, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %103
  store i8* null, i8** %6, align 8
  br label %181

115:                                              ; preds = %103
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 4
  %121 = icmp ult i64 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  store i8* null, i8** %6, align 8
  br label %181

123:                                              ; preds = %115
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = sub i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @UINT_MAX, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  store i8* null, i8** %6, align 8
  br label %181

135:                                              ; preds = %123
  %136 = load i32, i32* %7, align 4
  %137 = call i32* @cmsMLUalloc(i32 %136, i32 1)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  store i32* %137, i32** %139, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  store i8* null, i8** %6, align 8
  br label %181

145:                                              ; preds = %135
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  %149 = call i64 @_cmsMalloc(i32 %146, i32 %148)
  %150 = inttoptr i64 %149 to i8*
  store i8* %150, i8** %15, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32 (i32, %struct.TYPE_12__*, i8*, i32, i32)*, i32 (i32, %struct.TYPE_12__*, i8*, i32, i32)** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %156 = load i8*, i8** %15, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i32 %153(i32 %154, %struct.TYPE_12__* %155, i8* %156, i32 1, i32 %157)
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %145
  store i8* null, i8** %6, align 8
  br label %181

162:                                              ; preds = %145
  %163 = load i8*, i8** %15, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  store i8 0, i8* %166, align 1
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* @cmsNoLanguage, align 4
  %172 = load i32, i32* @cmsNoCountry, align 4
  %173 = load i8*, i8** %15, align 8
  %174 = call i32 @cmsMLUsetASCII(i32 %167, i32* %170, i32 %171, i32 %172, i8* %173)
  %175 = load i32, i32* %7, align 4
  %176 = load i8*, i8** %15, align 8
  %177 = call i32 @_cmsFree(i32 %175, i8* %176)
  %178 = load i32*, i32** %10, align 8
  store i32 1, i32* %178, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %180 = bitcast %struct.TYPE_11__* %179 to i8*
  store i8* %180, i8** %6, align 8
  br label %181

181:                                              ; preds = %162, %161, %144, %134, %122, %114, %102, %86, %81, %68, %63, %51, %35, %30, %24
  %182 = load i8*, i8** %6, align 8
  ret i8* %182
}

declare dso_local i64 @_cmsMallocZero(i32, i32) #1

declare dso_local i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct*) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i8* @cmsBuildTabulatedToneCurve16(i32, i32, i32*) #1

declare dso_local i32 @_cmsReadUInt16Array(i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32* @cmsMLUalloc(i32, i32) #1

declare dso_local i64 @_cmsMalloc(i32, i32) #1

declare dso_local i32 @cmsMLUsetASCII(i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @_cmsFree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
