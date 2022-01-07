; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_samplerate.c_src_process.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_samplerate.c_src_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double, i32, i32, i64, i64, i32*, i32* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)*, i64, i32, double }

@SRC_ERR_BAD_STATE = common dso_local global i32 0, align 4
@SRC_ERR_BAD_PROC_PTR = common dso_local global i32 0, align 4
@SRC_MODE_PROCESS = common dso_local global i64 0, align 8
@SRC_ERR_BAD_MODE = common dso_local global i32 0, align 4
@SRC_ERR_BAD_DATA = common dso_local global i32 0, align 4
@SRC_ERR_BAD_DATA_PTR = common dso_local global i32 0, align 4
@SRC_ERR_BAD_SRC_RATIO = common dso_local global i32 0, align 4
@SRC_ERR_DATA_OVERLAP = common dso_local global i32 0, align 4
@SRC_MAX_RATIO = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @src_process(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @SRC_ERR_BAD_STATE, align 4
  store i32 %13, i32* %3, align 4
  br label %167

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)** %16, align 8
  %18 = icmp eq i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)** %21, align 8
  %23 = icmp eq i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @SRC_ERR_BAD_PROC_PTR, align 4
  store i32 %25, i32* %3, align 4
  br label %167

26:                                               ; preds = %19
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SRC_MODE_PROCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @SRC_ERR_BAD_MODE, align 4
  store i32 %33, i32* %3, align 4
  br label %167

34:                                               ; preds = %26
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = icmp eq %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @SRC_ERR_BAD_DATA, align 4
  store i32 %38, i32* %3, align 4
  br label %167

39:                                               ; preds = %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @SRC_ERR_BAD_DATA_PTR, align 4
  store i32 %50, i32* %3, align 4
  br label %167

51:                                               ; preds = %44
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load double, double* %53, align 8
  %55 = call i64 @is_bad_src_ratio(double %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @SRC_ERR_BAD_SRC_RATIO, align 4
  store i32 %58, i32* %3, align 4
  br label %167

59:                                               ; preds = %51
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ult i32* %78, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %75
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %89, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %86, i64 %94
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ugt i32* %95, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %83
  %101 = load i32, i32* @SRC_ERR_DATA_OVERLAP, align 4
  store i32 %101, i32* %3, align 4
  br label %167

102:                                              ; preds = %83
  br label %123

103:                                              ; preds = %75
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %109, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %106, i64 %114
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 5
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ugt i32* %115, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %103
  %121 = load i32, i32* @SRC_ERR_DATA_OVERLAP, align 4
  store i32 %121, i32* %3, align 4
  br label %167

122:                                              ; preds = %103
  br label %123

123:                                              ; preds = %122, %102
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 4
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 4
  %130 = load double, double* %129, align 8
  %131 = load double, double* @SRC_MAX_RATIO, align 8
  %132 = fdiv double 1.000000e+00, %131
  %133 = fcmp olt double %130, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %123
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load double, double* %136, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 4
  store double %137, double* %139, align 8
  br label %140

140:                                              ; preds = %134, %123
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 4
  %143 = load double, double* %142, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load double, double* %145, align 8
  %147 = fsub double %143, %146
  %148 = call i32 @fabs(double %147)
  %149 = sitofp i32 %148 to double
  %150 = fcmp olt double %149, 1.000000e-15
  br i1 %150, label %151, label %158

151:                                              ; preds = %140
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)** %153, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = call i32 %154(%struct.TYPE_8__* %155, %struct.TYPE_9__* %156)
  store i32 %157, i32* %7, align 4
  br label %165

158:                                              ; preds = %140
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)** %160, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %164 = call i32 %161(%struct.TYPE_8__* %162, %struct.TYPE_9__* %163)
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %158, %151
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %165, %120, %100, %57, %49, %37, %32, %24, %12
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @is_bad_src_ratio(double) #1

declare dso_local i32 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
