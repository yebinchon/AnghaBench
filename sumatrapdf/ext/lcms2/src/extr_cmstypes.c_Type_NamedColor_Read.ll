; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_NamedColor_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_NamedColor_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_8__ = type { i32 (i32, %struct.TYPE_8__*, i8*, i32, i32)* }

@cmsERROR_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Too many named colors '%d'\00", align 1
@cmsMAXCHANNELS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Too many device coordinates '%d'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_8__*, i64*, i64)* @Type_NamedColor_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_NamedColor_Read(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_8__* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [32 x i8], align 16
  %16 = alloca [32 x i8], align 16
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [3 x i32], align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca [33 x i8], align 16
  %23 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %24 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %25 = ptrtoint %struct._cms_typehandler_struct* %24 to i64
  %26 = call i32 @cmsUNUSED_PARAMETER(i64 %25)
  %27 = load i64*, i64** %10, align 8
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = call i32 @_cmsReadUInt32Number(i32 %28, %struct.TYPE_8__* %29, i64* %12)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %150

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = call i32 @_cmsReadUInt32Number(i32 %34, %struct.TYPE_8__* %35, i64* %13)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i8* null, i8** %6, align 8
  br label %150

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = call i32 @_cmsReadUInt32Number(i32 %40, %struct.TYPE_8__* %41, i64* %14)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i8* null, i8** %6, align 8
  br label %150

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32 (i32, %struct.TYPE_8__*, i8*, i32, i32)*, i32 (i32, %struct.TYPE_8__*, i8*, i32, i32)** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %52 = call i32 %48(i32 %49, %struct.TYPE_8__* %50, i8* %51, i32 32, i32 1)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i8* null, i8** %6, align 8
  br label %150

55:                                               ; preds = %45
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32 (i32, %struct.TYPE_8__*, i8*, i32, i32)*, i32 (i32, %struct.TYPE_8__*, i8*, i32, i32)** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %62 = call i32 %58(i32 %59, %struct.TYPE_8__* %60, i8* %61, i32 32, i32 1)
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i8* null, i8** %6, align 8
  br label %150

65:                                               ; preds = %55
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 31
  store i8 0, i8* %66, align 1
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 31
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* %7, align 4
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %14, align 8
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %73 = call i32* @cmsAllocNamedColorList(i32 %68, i64 %69, i64 %70, i8* %71, i8* %72)
  store i32* %73, i32** %17, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @cmsERROR_RANGE, align 4
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @cmsSignalError(i32 %77, i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %79)
  store i8* null, i8** %6, align 8
  br label %150

81:                                               ; preds = %65
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* @cmsMAXCHANNELS, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @cmsERROR_RANGE, align 4
  %88 = load i64, i64* %14, align 8
  %89 = call i32 @cmsSignalError(i32 %86, i32 %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  br label %146

90:                                               ; preds = %81
  store i64 0, i64* %18, align 8
  br label %91

91:                                               ; preds = %139, %90
  %92 = load i64, i64* %18, align 8
  %93 = load i64, i64* %13, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %142

95:                                               ; preds = %91
  %96 = load i64, i64* @cmsMAXCHANNELS, align 8
  %97 = call i8* @llvm.stacksave()
  store i8* %97, i8** %20, align 8
  %98 = alloca i32, i64 %96, align 16
  store i64 %96, i64* %21, align 8
  %99 = mul nuw i64 4, %96
  %100 = trunc i64 %99 to i32
  %101 = call i32 @memset(i32* %98, i32 0, i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32 (i32, %struct.TYPE_8__*, i8*, i32, i32)*, i32 (i32, %struct.TYPE_8__*, i8*, i32, i32)** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %107 = getelementptr inbounds [33 x i8], [33 x i8]* %22, i64 0, i64 0
  %108 = call i32 %104(i32 %105, %struct.TYPE_8__* %106, i8* %107, i32 32, i32 1)
  %109 = icmp ne i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %95
  store i32 2, i32* %23, align 4
  br label %135

111:                                              ; preds = %95
  %112 = getelementptr inbounds [33 x i8], [33 x i8]* %22, i64 0, i64 32
  store i8 0, i8* %112, align 16
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %116 = call i32 @_cmsReadUInt16Array(i32 %113, %struct.TYPE_8__* %114, i64 3, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  store i32 2, i32* %23, align 4
  br label %135

119:                                              ; preds = %111
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %122 = load i64, i64* %14, align 8
  %123 = call i32 @_cmsReadUInt16Array(i32 %120, %struct.TYPE_8__* %121, i64 %122, i32* %98)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %119
  store i32 2, i32* %23, align 4
  br label %135

126:                                              ; preds = %119
  %127 = load i32, i32* %7, align 4
  %128 = load i32*, i32** %17, align 8
  %129 = getelementptr inbounds [33 x i8], [33 x i8]* %22, i64 0, i64 0
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %131 = call i32 @cmsAppendNamedColor(i32 %127, i32* %128, i8* %129, i32* %130, i32* %98)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  store i32 2, i32* %23, align 4
  br label %135

134:                                              ; preds = %126
  store i32 0, i32* %23, align 4
  br label %135

135:                                              ; preds = %133, %125, %118, %110, %134
  %136 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %23, align 4
  switch i32 %137, label %152 [
    i32 0, label %138
    i32 2, label %146
  ]

138:                                              ; preds = %135
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %18, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %18, align 8
  br label %91

142:                                              ; preds = %91
  %143 = load i64*, i64** %10, align 8
  store i64 1, i64* %143, align 8
  %144 = load i32*, i32** %17, align 8
  %145 = bitcast i32* %144 to i8*
  store i8* %145, i8** %6, align 8
  br label %150

146:                                              ; preds = %135, %85
  %147 = load i32, i32* %7, align 4
  %148 = load i32*, i32** %17, align 8
  %149 = call i32 @cmsFreeNamedColorList(i32 %147, i32* %148)
  store i8* null, i8** %6, align 8
  br label %150

150:                                              ; preds = %146, %142, %76, %64, %54, %44, %38, %32
  %151 = load i8*, i8** %6, align 8
  ret i8* %151

152:                                              ; preds = %135
  unreachable
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i64) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, %struct.TYPE_8__*, i64*) #1

declare dso_local i32* @cmsAllocNamedColorList(i32, i64, i64, i8*, i8*) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @_cmsReadUInt16Array(i32, %struct.TYPE_8__*, i64, i32*) #1

declare dso_local i32 @cmsAppendNamedColor(i32, i32*, i8*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @cmsFreeNamedColorList(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
