; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadSetOfCurves.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadSetOfCurves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_6__ = type { i32 (i32, %struct.TYPE_6__*, i32)* }

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_6__*, i32, i32)* @ReadSetOfCurves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ReadSetOfCurves(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @cmsMAXCHANNELS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32*, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  store i32* null, i32** %15, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @cmsMAXCHANNELS, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32*, i32** @FALSE, align 8
  store i32* %25, i32** %6, align 8
  store i32 1, i32* %16, align 4
  br label %99

26:                                               ; preds = %5
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32 (i32, %struct.TYPE_6__*, i32)*, i32 (i32, %struct.TYPE_6__*, i32)** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 %29(i32 %30, %struct.TYPE_6__* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = load i32*, i32** @FALSE, align 8
  store i32* %36, i32** %6, align 8
  store i32 1, i32* %16, align 4
  br label %99

37:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %46, %37
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %20, i64 %44
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %38

49:                                               ; preds = %38
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %75, %49
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %58 = call i32* @ReadEmbeddedCurve(i32 %55, %struct._cms_typehandler_struct* %56, %struct.TYPE_6__* %57)
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %20, i64 %60
  store i32* %58, i32** %61, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %20, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %82

68:                                               ; preds = %54
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %71 = call i32 @_cmsReadAlignment(i32 %69, %struct.TYPE_6__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %82

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %50

78:                                               ; preds = %50
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32* @cmsStageAllocToneCurves(i32 %79, i32 %80, i32** %20)
  store i32* %81, i32** %15, align 8
  br label %82

82:                                               ; preds = %78, %73, %67
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %94, %82
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %20, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @cmsFreeToneCurve(i32 %88, i32* %92)
  br label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %83

97:                                               ; preds = %83
  %98 = load i32*, i32** %15, align 8
  store i32* %98, i32** %6, align 8
  store i32 1, i32* %16, align 4
  br label %99

99:                                               ; preds = %97, %35, %24
  %100 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32*, i32** %6, align 8
  ret i32* %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @ReadEmbeddedCurve(i32, %struct._cms_typehandler_struct*, %struct.TYPE_6__*) #2

declare dso_local i32 @_cmsReadAlignment(i32, %struct.TYPE_6__*) #2

declare dso_local i32* @cmsStageAllocToneCurves(i32, i32, i32**) #2

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
