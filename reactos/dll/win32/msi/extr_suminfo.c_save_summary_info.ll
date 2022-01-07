; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_suminfo.c_save_summary_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_suminfo.c_save_summary_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i32, i64, i32, i32 }

@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@MSI_MAX_PROPS = common dso_local global i32 0, align 4
@FMTID_SummaryInformation = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*)* @save_summary_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_summary_info(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @MSI_MAX_PROPS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca %struct.TYPE_16__, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %12, align 8
  store i64 32, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = call i32 @memset(%struct.TYPE_15__* %7, i32 0, i64 %23)
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  store i32 65534, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  store i32 131077, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %14, align 8
  %31 = call i32 @IStream_Write(i32* %29, %struct.TYPE_15__* %7, i64 %30, i64* %13)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i64 @FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %2
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %2
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %172

41:                                               ; preds = %35
  store i64 32, i64* %14, align 8
  %42 = load i32, i32* @FMTID_SummaryInformation, align 4
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  store i32 64, i32* %44, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @IStream_Write(i32* %45, %struct.TYPE_15__* %8, i64 %46, i64* %13)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i64 @FAILED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %41
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %172

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i32 24, i32* %58, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @get_property_count(i32* %61)
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 24
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, %64
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i64 0, i64* %70, align 8
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %107, %57
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @MSI_MAX_PROPS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %71
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i64 @write_property_to_data(i32* %81, %struct.TYPE_15__* null)
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %14, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %75
  br label %107

86:                                               ; preds = %75
  %87 = load i32, i32* %16, align 4
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  store i32 %87, i32* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  store i32 %93, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = load i64, i64* %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, %101
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  br label %107

107:                                              ; preds = %86, %85
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %16, align 4
  br label %71

110:                                              ; preds = %71
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = call %struct.TYPE_15__* @msi_alloc_zero(i64 %113)
  store %struct.TYPE_15__* %114, %struct.TYPE_15__** %12, align 8
  store i64 0, i64* %14, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %116 = load i64, i64* %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i64 %116
  %118 = call i32 @memcpy(%struct.TYPE_15__* %117, %struct.TYPE_16__* %9, i32 24)
  %119 = load i64, i64* %14, align 8
  %120 = add i64 %119, 24
  store i64 %120, i64* %14, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %122 = load i64, i64* %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = mul i64 %125, 24
  %127 = trunc i64 %126 to i32
  %128 = call i32 @memcpy(%struct.TYPE_15__* %123, %struct.TYPE_16__* %22, i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = mul i64 %130, 24
  %132 = load i64, i64* %14, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %14, align 8
  store i32 0, i32* %16, align 4
  br label %134

134:                                              ; preds = %151, %110
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* @MSI_MAX_PROPS, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %134
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %146 = load i64, i64* %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i64 %146
  %148 = call i64 @write_property_to_data(i32* %144, %struct.TYPE_15__* %147)
  %149 = load i64, i64* %14, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %14, align 8
  br label %151

151:                                              ; preds = %138
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  br label %134

154:                                              ; preds = %134
  %155 = load i32*, i32** %5, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %157 = load i64, i64* %14, align 8
  %158 = call i32 @IStream_Write(i32* %155, %struct.TYPE_15__* %156, i64 %157, i64* %13)
  store i32 %158, i32* %15, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %160 = call i32 @msi_free(%struct.TYPE_15__* %159)
  %161 = load i32, i32* %15, align 4
  %162 = call i64 @FAILED(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %154
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* %14, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164, %154
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %172

170:                                              ; preds = %164
  %171 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %171, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %172

172:                                              ; preds = %170, %168, %55, %39
  %173 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i64) #2

declare dso_local i32 @IStream_Write(i32*, %struct.TYPE_15__*, i64, i64*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @get_property_count(i32*) #2

declare dso_local i64 @write_property_to_data(i32*, %struct.TYPE_15__*) #2

declare dso_local %struct.TYPE_15__* @msi_alloc_zero(i64) #2

declare dso_local i32 @memcpy(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #2

declare dso_local i32 @msi_free(%struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
