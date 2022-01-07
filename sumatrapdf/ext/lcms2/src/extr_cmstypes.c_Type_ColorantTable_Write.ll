; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ColorantTable_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_ColorantTable_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_6__ = type { i32 (i32, %struct.TYPE_6__*, i32, i8*)* }

@FALSE = common dso_local global i32 0, align 4
@cmsMAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_6__*, i8*, i64)* @Type_ColorantTable_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_ColorantTable_Write(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_6__* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [3 x i32], align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = call i64 @cmsNamedColorCount(i32 %21, i32* %22)
  store i64 %23, i64* %14, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = load i64, i64* %14, align 8
  %27 = call i32 @_cmsWriteUInt32Number(i32 %24, %struct.TYPE_6__* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %6, align 4
  br label %79

31:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %32

32:                                               ; preds = %74, %31
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %14, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %32
  %37 = load i32, i32* @cmsMAX_PATH, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %15, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %16, align 8
  %41 = trunc i64 %38 to i32
  %42 = call i32 @memset(i8* %40, i32 0, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %47 = call i32 @cmsNamedColorInfo(i32 %43, i32* %44, i64 %45, i8* %40, i32* null, i32* null, i32* %46, i32* null)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %70

50:                                               ; preds = %36
  %51 = getelementptr inbounds i8, i8* %40, i64 32
  store i8 0, i8* %51, align 16
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (i32, %struct.TYPE_6__*, i32, i8*)*, i32 (i32, %struct.TYPE_6__*, i32, i8*)** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = call i32 %54(i32 %55, %struct.TYPE_6__* %56, i32 32, i8* %40)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %70

61:                                               ; preds = %50
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %65 = call i32 @_cmsWriteUInt16Array(i32 %62, %struct.TYPE_6__* %63, i32 3, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %70

69:                                               ; preds = %61
  store i32 0, i32* %18, align 4
  br label %70

70:                                               ; preds = %69, %67, %59, %49
  %71 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %18, align 4
  switch i32 %72, label %81 [
    i32 0, label %73
    i32 1, label %79
  ]

73:                                               ; preds = %70
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %13, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %13, align 8
  br label %32

77:                                               ; preds = %32
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %70, %29
  %80 = load i32, i32* %6, align 4
  ret i32 %80

81:                                               ; preds = %70
  unreachable
}

declare dso_local i64 @cmsNamedColorCount(i32, i32*) #1

declare dso_local i32 @_cmsWriteUInt32Number(i32, %struct.TYPE_6__*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @cmsNamedColorInfo(i32, i32*, i64, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @_cmsWriteUInt16Array(i32, %struct.TYPE_6__*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
