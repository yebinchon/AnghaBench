; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_MPEmatrix_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_MPEmatrix_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }

@cmsMAXCHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, i32*, i64*, i64)* @Type_MPEmatrix_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_MPEmatrix_Read(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %22 = ptrtoint %struct._cms_typehandler_struct* %21 to i64
  %23 = call i32 @cmsUNUSED_PARAMETER(i64 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @_cmsReadUInt16Number(i32 %24, i32* %25, i64* %13)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %132

29:                                               ; preds = %5
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @_cmsReadUInt16Number(i32 %30, i32* %31, i64* %14)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i8* null, i8** %6, align 8
  br label %132

35:                                               ; preds = %29
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* @cmsMAXCHANNELS, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i8* null, i8** %6, align 8
  br label %132

40:                                               ; preds = %35
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* @cmsMAXCHANNELS, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i8* null, i8** %6, align 8
  br label %132

45:                                               ; preds = %40
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = mul nsw i64 %46, %47
  store i64 %48, i64* %15, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i64, i64* %15, align 8
  %51 = call i64 @_cmsCalloc(i32 %49, i64 %50, i32 4)
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %17, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  store i8* null, i8** %6, align 8
  br label %132

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* %14, align 8
  %59 = call i64 @_cmsCalloc(i32 %57, i64 %58, i32 4)
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %18, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = load i32*, i32** %17, align 8
  %66 = call i32 @_cmsFree(i32 %64, i32* %65)
  store i8* null, i8** %6, align 8
  br label %132

67:                                               ; preds = %56
  store i64 0, i64* %16, align 8
  br label %68

68:                                               ; preds = %89, %67
  %69 = load i64, i64* %16, align 8
  %70 = load i64, i64* %15, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @_cmsReadFloat32Number(i32 %73, i32* %74, i32* %19)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = load i32*, i32** %17, align 8
  %80 = call i32 @_cmsFree(i32 %78, i32* %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** %18, align 8
  %83 = call i32 @_cmsFree(i32 %81, i32* %82)
  store i8* null, i8** %6, align 8
  br label %132

84:                                               ; preds = %72
  %85 = load i32, i32* %19, align 4
  %86 = load i32*, i32** %17, align 8
  %87 = load i64, i64* %16, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %84
  %90 = load i64, i64* %16, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %16, align 8
  br label %68

92:                                               ; preds = %68
  store i64 0, i64* %16, align 8
  br label %93

93:                                               ; preds = %114, %92
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* %14, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %93
  %98 = load i32, i32* %7, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @_cmsReadFloat32Number(i32 %98, i32* %99, i32* %20)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %7, align 4
  %104 = load i32*, i32** %17, align 8
  %105 = call i32 @_cmsFree(i32 %103, i32* %104)
  %106 = load i32, i32* %7, align 4
  %107 = load i32*, i32** %18, align 8
  %108 = call i32 @_cmsFree(i32 %106, i32* %107)
  store i8* null, i8** %6, align 8
  br label %132

109:                                              ; preds = %97
  %110 = load i32, i32* %20, align 4
  %111 = load i32*, i32** %18, align 8
  %112 = load i64, i64* %16, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %109
  %115 = load i64, i64* %16, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %16, align 8
  br label %93

117:                                              ; preds = %93
  %118 = load i32, i32* %7, align 4
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %13, align 8
  %121 = load i32*, i32** %17, align 8
  %122 = load i32*, i32** %18, align 8
  %123 = call i8* @cmsStageAllocMatrix(i32 %118, i64 %119, i64 %120, i32* %121, i32* %122)
  store i8* %123, i8** %12, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i32*, i32** %17, align 8
  %126 = call i32 @_cmsFree(i32 %124, i32* %125)
  %127 = load i32, i32* %7, align 4
  %128 = load i32*, i32** %18, align 8
  %129 = call i32 @_cmsFree(i32 %127, i32* %128)
  %130 = load i64*, i64** %10, align 8
  store i64 1, i64* %130, align 8
  %131 = load i8*, i8** %12, align 8
  store i8* %131, i8** %6, align 8
  br label %132

132:                                              ; preds = %117, %102, %77, %63, %55, %44, %39, %34, %28
  %133 = load i8*, i8** %6, align 8
  ret i8* %133
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i64) #1

declare dso_local i32 @_cmsReadUInt16Number(i32, i32*, i64*) #1

declare dso_local i64 @_cmsCalloc(i32, i64, i32) #1

declare dso_local i32 @_cmsFree(i32, i32*) #1

declare dso_local i32 @_cmsReadFloat32Number(i32, i32*, i32*) #1

declare dso_local i8* @cmsStageAllocMatrix(i32, i64, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
