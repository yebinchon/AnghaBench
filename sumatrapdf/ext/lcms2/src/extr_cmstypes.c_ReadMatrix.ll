; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadMatrix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_5__ = type { i32 (i32, %struct.TYPE_5__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_5__*, i32)* @ReadMatrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ReadMatrix(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._cms_typehandler_struct*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [9 x i32], align 16
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %7, align 8
  %14 = call i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32 (i32, %struct.TYPE_5__*, i32)*, i32 (i32, %struct.TYPE_5__*, i32)** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 %17(i32 %18, %struct.TYPE_5__* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %114

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %28 = call i32 @_cmsRead15Fixed16Number(i32 %25, %struct.TYPE_5__* %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32* null, i32** %5, align 8
  br label %114

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 1
  %35 = call i32 @_cmsRead15Fixed16Number(i32 %32, %struct.TYPE_5__* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32* null, i32** %5, align 8
  br label %114

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 2
  %42 = call i32 @_cmsRead15Fixed16Number(i32 %39, %struct.TYPE_5__* %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32* null, i32** %5, align 8
  br label %114

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 3
  %49 = call i32 @_cmsRead15Fixed16Number(i32 %46, %struct.TYPE_5__* %47, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store i32* null, i32** %5, align 8
  br label %114

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 4
  %56 = call i32 @_cmsRead15Fixed16Number(i32 %53, %struct.TYPE_5__* %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  store i32* null, i32** %5, align 8
  br label %114

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 5
  %63 = call i32 @_cmsRead15Fixed16Number(i32 %60, %struct.TYPE_5__* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  store i32* null, i32** %5, align 8
  br label %114

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 6
  %70 = call i32 @_cmsRead15Fixed16Number(i32 %67, %struct.TYPE_5__* %68, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  store i32* null, i32** %5, align 8
  br label %114

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 7
  %77 = call i32 @_cmsRead15Fixed16Number(i32 %74, %struct.TYPE_5__* %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  store i32* null, i32** %5, align 8
  br label %114

80:                                               ; preds = %73
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 8
  %84 = call i32 @_cmsRead15Fixed16Number(i32 %81, %struct.TYPE_5__* %82, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  store i32* null, i32** %5, align 8
  br label %114

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %91 = call i32 @_cmsRead15Fixed16Number(i32 %88, %struct.TYPE_5__* %89, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  store i32* null, i32** %5, align 8
  br label %114

94:                                               ; preds = %87
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %98 = call i32 @_cmsRead15Fixed16Number(i32 %95, %struct.TYPE_5__* %96, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  store i32* null, i32** %5, align 8
  br label %114

101:                                              ; preds = %94
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %105 = call i32 @_cmsRead15Fixed16Number(i32 %102, %struct.TYPE_5__* %103, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  store i32* null, i32** %5, align 8
  br label %114

108:                                              ; preds = %101
  %109 = load i32, i32* %6, align 4
  %110 = getelementptr inbounds [9 x i32], [9 x i32]* %10, i64 0, i64 0
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %112 = call i32* @cmsStageAllocMatrix(i32 %109, i32 3, i32 3, i32* %110, i32* %111)
  store i32* %112, i32** %12, align 8
  %113 = load i32*, i32** %12, align 8
  store i32* %113, i32** %5, align 8
  br label %114

114:                                              ; preds = %108, %107, %100, %93, %86, %79, %72, %65, %58, %51, %44, %37, %30, %23
  %115 = load i32*, i32** %5, align 8
  ret i32* %115
}

declare dso_local i32 @cmsUNUSED_PARAMETER(%struct._cms_typehandler_struct*) #1

declare dso_local i32 @_cmsRead15Fixed16Number(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32* @cmsStageAllocMatrix(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
