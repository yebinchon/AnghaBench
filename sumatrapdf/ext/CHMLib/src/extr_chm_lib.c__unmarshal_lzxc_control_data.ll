; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__unmarshal_lzxc_control_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__unmarshal_lzxc_control_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmLzxcControlData = type { i32, i32, i32, i32, i32, i32, i32 }

@_CHM_LZXC_MIN_LEN = common dso_local global i32 0, align 4
@_CHM_LZXC_V2_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"LZXC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, %struct.chmLzxcControlData*)* @_unmarshal_lzxc_control_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_unmarshal_lzxc_control_data(i8** %0, i32* %1, %struct.chmLzxcControlData* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.chmLzxcControlData*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.chmLzxcControlData* %2, %struct.chmLzxcControlData** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @_CHM_LZXC_MIN_LEN, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %108

13:                                               ; preds = %3
  %14 = load i8**, i8*** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %17 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %16, i32 0, i32 0
  %18 = call i32 @_unmarshal_uint32(i8** %14, i32* %15, i32* %17)
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %22 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @_unmarshal_char_array(i8** %19, i32* %20, i32 %23, i32 4)
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %28 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %27, i32 0, i32 1
  %29 = call i32 @_unmarshal_uint32(i8** %25, i32* %26, i32* %28)
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %33 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %32, i32 0, i32 2
  %34 = call i32 @_unmarshal_uint32(i8** %30, i32* %31, i32* %33)
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %38 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %37, i32 0, i32 3
  %39 = call i32 @_unmarshal_uint32(i8** %35, i32* %36, i32* %38)
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %43 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %42, i32 0, i32 4
  %44 = call i32 @_unmarshal_uint32(i8** %40, i32* %41, i32* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @_CHM_LZXC_V2_LEN, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %13
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %53 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %52, i32 0, i32 5
  %54 = call i32 @_unmarshal_uint32(i8** %50, i32* %51, i32* %53)
  br label %58

55:                                               ; preds = %13
  %56 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %57 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %56, i32 0, i32 5
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %60 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %65 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 32768
  store i32 %67, i32* %65, align 4
  %68 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %69 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 32768
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %63, %58
  %73 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %74 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %79 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %72
  store i32 0, i32* %4, align 4
  br label %108

83:                                               ; preds = %77
  %84 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %85 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %108

89:                                               ; preds = %83
  %90 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %91 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %94 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 %95, 2
  %97 = srem i32 %92, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %108

100:                                              ; preds = %89
  %101 = load %struct.chmLzxcControlData*, %struct.chmLzxcControlData** %7, align 8
  %102 = getelementptr inbounds %struct.chmLzxcControlData, %struct.chmLzxcControlData* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @memcmp(i32 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %108

107:                                              ; preds = %100
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %106, %99, %88, %82, %12
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @_unmarshal_uint32(i8**, i32*, i32*) #1

declare dso_local i32 @_unmarshal_char_array(i8**, i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
