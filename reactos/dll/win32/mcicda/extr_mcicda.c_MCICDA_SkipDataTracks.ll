; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_SkipDataTracks.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_SkipDataTracks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MCIERR_OUTOFRANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*)* @MCICDA_SkipDataTracks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MCICDA_SkipDataTracks(i32* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @MCICDA_ReadTOC(i32* %9, %struct.TYPE_6__* %8, i64* %7)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @MCICDA_GetError(i32* %13)
  store i64 %14, i64* %3, align 8
  br label %129

15:                                               ; preds = %2
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = bitcast %struct.TYPE_6__* %8 to { i64, %struct.TYPE_5__* }*
  %21 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %20, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = call i64 @FRAME_OF_TOC(i64 %22, %struct.TYPE_5__* %24, i32 %19)
  %26 = icmp slt i64 %17, %25
  br i1 %26, label %40, label %27

27:                                               ; preds = %15
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = bitcast %struct.TYPE_6__* %8 to { i64, %struct.TYPE_5__* }*
  %34 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %33, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = call i64 @FRAME_OF_TOC(i64 %35, %struct.TYPE_5__* %37, i32 %32)
  %39 = icmp sge i64 %29, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27, %15
  %41 = load i64, i64* @MCIERR_OUTOFRANGE, align 8
  store i64 %41, i64* %3, align 8
  br label %129

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %64, %42
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = bitcast %struct.TYPE_6__* %8 to { i64, %struct.TYPE_5__* }*
  %54 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %53, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i64 @FRAME_OF_TOC(i64 %55, %struct.TYPE_5__* %57, i32 %52)
  %59 = load i64*, i64** %5, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %67

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %6, align 4
  br label %46

67:                                               ; preds = %62, %46
  br label %68

68:                                               ; preds = %88, %67
  %69 = load i32, i32* %6, align 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %69, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %73
  br label %91

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %68

91:                                               ; preds = %86, %68
  %92 = load i32, i32* %6, align 4
  %93 = bitcast %struct.TYPE_6__* %8 to { i64, %struct.TYPE_5__* }*
  %94 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %93, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = call i64 @FRAME_OF_TOC(i64 %95, %struct.TYPE_5__* %97, i32 %92)
  %99 = load i64*, i64** %5, align 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %98, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %91
  %103 = load i32, i32* %6, align 4
  %104 = bitcast %struct.TYPE_6__* %8 to { i64, %struct.TYPE_5__* }*
  %105 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %104, i32 0, i32 1
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = call i64 @FRAME_OF_TOC(i64 %106, %struct.TYPE_5__* %108, i32 %103)
  %110 = load i64*, i64** %5, align 8
  store i64 %109, i64* %110, align 8
  br label %111

111:                                              ; preds = %102, %91
  %112 = load i64*, i64** %5, align 8
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  %117 = bitcast %struct.TYPE_6__* %8 to { i64, %struct.TYPE_5__* }*
  %118 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %117, i32 0, i32 1
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = call i64 @FRAME_OF_TOC(i64 %119, %struct.TYPE_5__* %121, i32 %116)
  %123 = icmp eq i64 %113, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %111
  %125 = load i64*, i64** %5, align 8
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, -1
  store i64 %127, i64* %125, align 8
  br label %128

128:                                              ; preds = %124, %111
  store i64 0, i64* %3, align 8
  br label %129

129:                                              ; preds = %128, %40, %12
  %130 = load i64, i64* %3, align 8
  ret i64 %130
}

declare dso_local i32 @MCICDA_ReadTOC(i32*, %struct.TYPE_6__*, i64*) #1

declare dso_local i64 @MCICDA_GetError(i32*) #1

declare dso_local i64 @FRAME_OF_TOC(i64, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
