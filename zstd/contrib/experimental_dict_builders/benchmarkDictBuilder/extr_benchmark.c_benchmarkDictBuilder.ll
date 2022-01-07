; ModuleID = '/home/carl/AnghaBench/zstd/contrib/experimental_dict_builders/benchmarkDictBuilder/extr_benchmark.c_benchmarkDictBuilder.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/experimental_dict_builders/benchmarkDictBuilder/extr_benchmark.c_benchmarkDictBuilder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }

@DEFAULT_DISPLAYLEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"RANDOM\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"COVER\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"LEGACY\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"FAST\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"NODICT\00", align 1
@DEFAULT_CLEVEL = common dso_local global i32 0, align 4
@SEC_TO_MICRO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"%s does not train successfully\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s took %f seconds to execute \0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Compressing with %s dictionary does not work\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Compression ratio with %s dictionary is %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @benchmarkDictBuilder(i32* %0, i32 %1, %struct.TYPE_21__* %2, %struct.TYPE_24__* %3, %struct.TYPE_22__* %4, %struct.TYPE_23__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_22__* %4, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_23__* %5, %struct.TYPE_23__** %12, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %23 = icmp ne %struct.TYPE_21__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %61

29:                                               ; preds = %6
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %31 = icmp ne %struct.TYPE_24__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %59

37:                                               ; preds = %29
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %39 = icmp ne %struct.TYPE_22__* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %57

45:                                               ; preds = %37
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %47 = icmp ne %struct.TYPE_23__* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  br label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @DEFAULT_DISPLAYLEVEL, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = phi i32 [ %52, %48 ], [ %54, %53 ]
  br label %57

57:                                               ; preds = %55, %40
  %58 = phi i32 [ %44, %40 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %32
  %60 = phi i32 [ %36, %32 ], [ %58, %57 ]
  br label %61

61:                                               ; preds = %59, %24
  %62 = phi i32 [ %28, %24 ], [ %60, %59 ]
  store i32 %62, i32* %13, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %64 = icmp ne %struct.TYPE_21__* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %83

66:                                               ; preds = %61
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %68 = icmp ne %struct.TYPE_24__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %81

70:                                               ; preds = %66
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %72 = icmp ne %struct.TYPE_22__* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %79

74:                                               ; preds = %70
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %76 = icmp ne %struct.TYPE_23__* %75, null
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  br label %79

79:                                               ; preds = %74, %73
  %80 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %73 ], [ %78, %74 ]
  br label %81

81:                                               ; preds = %79, %69
  %82 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %69 ], [ %80, %79 ]
  br label %83

83:                                               ; preds = %81, %65
  %84 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %65 ], [ %82, %81 ]
  store i8* %84, i8** %14, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %86 = icmp ne %struct.TYPE_21__* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  br label %124

92:                                               ; preds = %83
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %94 = icmp ne %struct.TYPE_24__* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  br label %122

100:                                              ; preds = %92
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %102 = icmp ne %struct.TYPE_22__* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  br label %120

108:                                              ; preds = %100
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %110 = icmp ne %struct.TYPE_23__* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  br label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @DEFAULT_CLEVEL, align 4
  br label %118

118:                                              ; preds = %116, %111
  %119 = phi i32 [ %115, %111 ], [ %117, %116 ]
  br label %120

120:                                              ; preds = %118, %103
  %121 = phi i32 [ %107, %103 ], [ %119, %118 ]
  br label %122

122:                                              ; preds = %120, %95
  %123 = phi i32 [ %99, %95 ], [ %121, %120 ]
  br label %124

124:                                              ; preds = %122, %87
  %125 = phi i32 [ %91, %87 ], [ %123, %122 ]
  store i32 %125, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %126 = call i32 (...) @UTIL_getTime()
  store i32 %126, i32* %17, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %133 = call i32* @createDictFromFiles(i32* %127, i32 %128, %struct.TYPE_21__* %129, %struct.TYPE_24__* %130, %struct.TYPE_22__* %131, %struct.TYPE_23__* %132)
  store i32* %133, i32** %18, align 8
  %134 = load i32, i32* %17, align 4
  %135 = call double @UTIL_clockSpanMicro(i32 %134)
  store double %135, double* %19, align 8
  %136 = load double, double* %19, align 8
  %137 = load i64, i64* @SEC_TO_MICRO, align 8
  %138 = sitofp i64 %137 to double
  %139 = fdiv double %136, %138
  store double %139, double* %20, align 8
  %140 = load i32*, i32** %18, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %124
  %143 = load i8*, i8** %14, align 8
  %144 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %143)
  store i32 1, i32* %16, align 4
  br label %163

145:                                              ; preds = %124
  %146 = load i8*, i8** %14, align 8
  %147 = load double, double* %20, align 8
  %148 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %146, double %147)
  %149 = load i32*, i32** %7, align 8
  %150 = load i32*, i32** %18, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call double @compressWithDict(i32* %149, i32* %150, i32 %151, i32 %152)
  store double %153, double* %21, align 8
  %154 = load double, double* %21, align 8
  %155 = fcmp olt double %154, 0.000000e+00
  br i1 %155, label %156, label %159

156:                                              ; preds = %145
  %157 = load i8*, i8** %14, align 8
  %158 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* %157)
  store i32 1, i32* %16, align 4
  br label %163

159:                                              ; preds = %145
  %160 = load i8*, i8** %14, align 8
  %161 = load double, double* %21, align 8
  %162 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %160, double %161)
  br label %163

163:                                              ; preds = %159, %156, %142
  %164 = load i32*, i32** %18, align 8
  %165 = call i32 @freeDictInfo(i32* %164)
  %166 = load i32, i32* %16, align 4
  ret i32 %166
}

declare dso_local i32 @UTIL_getTime(...) #1

declare dso_local i32* @createDictFromFiles(i32*, i32, %struct.TYPE_21__*, %struct.TYPE_24__*, %struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local double @UTIL_clockSpanMicro(i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*, ...) #1

declare dso_local double @compressWithDict(i32*, i32*, i32, i32) #1

declare dso_local i32 @freeDictInfo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
