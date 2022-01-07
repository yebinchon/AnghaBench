; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_suminfo.c_load_summary_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_suminfo.c_load_summary_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"property set not big-endian %04X\0A\00", align 1
@FMTID_SummaryInformation = common dso_local global i32 0, align 4
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@SECT_HDR_SIZE = common dso_local global i64 0, align 8
@MSI_MAX_PROPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"too many properties %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to read properties %d %d\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*)* @load_summary_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_summary_info(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_18__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %14, i32* %15)
  store i64 32, i64* %12, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %12, align 8
  %19 = call i32 @IStream_Read(i32* %17, %struct.TYPE_16__* %6, i64 %18, i64* %11)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call i64 @FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %2
  %28 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %28, i32* %3, align 4
  br label %143

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 65534
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %38, i32* %3, align 4
  br label %143

39:                                               ; preds = %29
  store i64 32, i64* %12, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @IStream_Read(i32* %40, %struct.TYPE_16__* %7, i64 %41, i64* %11)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %39
  %51 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %51, i32* %3, align 4
  br label %143

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 4
  %54 = call i32 @IsEqualGUID(i32* @FMTID_SummaryInformation, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %57, i32* %3, align 4
  br label %143

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @STREAM_SEEK_SET, align 4
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @IStream_Seek(i32* %62, i32 %65, i32 %63, i32* null)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i64 @FAILED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %71, i32* %3, align 4
  br label %143

72:                                               ; preds = %58
  %73 = load i64, i64* @SECT_HDR_SIZE, align 8
  store i64 %73, i64* %12, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @IStream_Read(i32* %74, %struct.TYPE_16__* %8, i64 %75, i64* %11)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i64 @FAILED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80, %72
  %85 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %85, i32* %3, align 4
  br label %143

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MSI_MAX_PROPS, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %94)
  %96 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %96, i32* %3, align 4
  br label %143

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call %struct.TYPE_16__* @msi_alloc(i64 %99)
  store %struct.TYPE_16__* %100, %struct.TYPE_16__** %9, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %102 = icmp ne %struct.TYPE_16__* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %104, i32* %3, align 4
  br label %143

105:                                              ; preds = %97
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %107 = load i64, i64* @SECT_HDR_SIZE, align 8
  %108 = call i32 @memcpy(%struct.TYPE_16__* %106, %struct.TYPE_16__* %8, i64 %107)
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SECT_HDR_SIZE, align 8
  %112 = sub i64 %110, %111
  store i64 %112, i64* %12, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %115 = load i64, i64* @SECT_HDR_SIZE, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i64 %115
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @IStream_Read(i32* %113, %struct.TYPE_16__* %116, i64 %117, i64* %11)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i64 @SUCCEEDED(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %105
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %12, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* @SECT_HDR_SIZE, align 8
  %133 = add i64 %131, %132
  %134 = call i32 @read_properties_from_data(i32 %129, %struct.TYPE_16__* %130, i64 %133)
  br label %139

135:                                              ; preds = %122, %105
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %12, align 8
  %138 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %136, i64 %137)
  br label %139

139:                                              ; preds = %135, %126
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %141 = call i32 @msi_free(%struct.TYPE_16__* %140)
  %142 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %103, %91, %84, %70, %56, %50, %33, %27
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @IStream_Read(i32*, %struct.TYPE_16__*, i64, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i64, ...) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @IStream_Seek(i32*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @msi_alloc(i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i64) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @read_properties_from_data(i32, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @msi_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
