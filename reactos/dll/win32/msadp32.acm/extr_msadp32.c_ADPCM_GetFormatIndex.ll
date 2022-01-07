; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msadp32.acm/extr_msadp32.c_ADPCM_GetFormatIndex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msadp32.acm/extr_msadp32.c_ADPCM_GetFormatIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i64, i64, i64, i32, i32, i32 }

@PCM_Formats = common dso_local global %struct.TYPE_8__* null, align 8
@ADPCM_Formats = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ADPCM_GetFormatIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ADPCM_GetFormatIndex(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %18 [
    i32 128, label %10
    i32 129, label %14
  ]

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PCM_Formats, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PCM_Formats, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %6, align 8
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ADPCM_Formats, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ADPCM_Formats, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %6, align 8
  br label %19

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %133

19:                                               ; preds = %14, %10
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %60, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %27, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %24
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %38, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %35
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %49, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %133

59:                                               ; preds = %46, %35, %24
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %20

63:                                               ; preds = %20
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %132 [
    i32 128, label %67
    i32 129, label %109
  ]

67:                                               ; preds = %63
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 3, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %67
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %72
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = mul nsw i64 2, %84
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = mul nsw i64 %85, %88
  %90 = icmp eq i64 %81, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %77
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = mul nsw i64 2, %98
  %100 = icmp eq i64 %95, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %91
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 16
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %133

108:                                              ; preds = %101, %91, %77, %72, %67
  br label %132

109:                                              ; preds = %63
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 3, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %109
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %114
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 4
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 32
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %133

131:                                              ; preds = %124, %119, %114, %109
  br label %132

132:                                              ; preds = %63, %131, %108
  store i32 -1, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %129, %106, %57, %18
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
