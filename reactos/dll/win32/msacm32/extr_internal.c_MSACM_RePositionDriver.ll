; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_RePositionDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_RePositionDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@MSACM_pFirstACMDriverID = common dso_local global %struct.TYPE_5__* null, align 8
@MSACM_pLastACMDriverID = common dso_local global %struct.TYPE_5__* null, align 8
@ACMDRIVERDETAILS_SUPPORTF_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSACM_RePositionDriver(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MSACM_pFirstACMDriverID, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = icmp eq %struct.TYPE_5__* %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** @MSACM_pFirstACMDriverID, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MSACM_pLastACMDriverID, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = icmp eq %struct.TYPE_5__* %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** @MSACM_pLastACMDriverID, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %33, align 8
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %46, align 8
  br label %47

47:                                               ; preds = %39, %34
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %5, align 8
  br label %54

54:                                               ; preds = %71, %50
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ACMDRIVERDETAILS_SUPPORTF_LOCAL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %59, %54
  %70 = phi i1 [ false, %54 ], [ %68, %59 ]
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %5, align 8
  br label %54

75:                                               ; preds = %69
  br label %94

76:                                               ; preds = %47
  %77 = load i32, i32* %4, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  store %struct.TYPE_5__* %82, %struct.TYPE_5__** %5, align 8
  br label %83

83:                                               ; preds = %88, %79
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = icmp ne %struct.TYPE_5__* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  store %struct.TYPE_5__* %91, %struct.TYPE_5__** %5, align 8
  br label %83

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %76
  br label %94

94:                                               ; preds = %93, %75
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %102, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = icmp ne %struct.TYPE_5__* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %94
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  store %struct.TYPE_5__* %108, %struct.TYPE_5__** %112, align 8
  br label %115

113:                                              ; preds = %94
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %114, %struct.TYPE_5__** @MSACM_pFirstACMDriverID, align 8
  br label %115

115:                                              ; preds = %113, %107
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = icmp ne %struct.TYPE_5__* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** %125, align 8
  br label %128

126:                                              ; preds = %115
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %127, %struct.TYPE_5__** @MSACM_pLastACMDriverID, align 8
  br label %128

128:                                              ; preds = %126, %120
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
