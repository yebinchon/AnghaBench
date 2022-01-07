; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zuiFind.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zuiFind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i32 }

@OBJ_SET = common dso_local global i64 0, align 8
@OBJ_ENCODING_INTSET = common dso_local global i64 0, align 8
@OBJ_ENCODING_HT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown set encoding\00", align 1
@OBJ_ZSET = common dso_local global i64 0, align 8
@OBJ_ENCODING_ZIPLIST = common dso_local global i64 0, align 8
@OBJ_ENCODING_SKIPLIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown sorted set encoding\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Unsupported type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zuiFind(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca double*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store double* %2, double** %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = icmp eq %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %135

16:                                               ; preds = %3
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OBJ_SET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %16
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OBJ_ENCODING_INTSET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = call i64 @zuiLongLongFromValue(%struct.TYPE_14__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @intsetFind(%struct.TYPE_16__* %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load double*, double** %7, align 8
  store double 1.000000e+00, double* %44, align 8
  store i32 1, i32* %4, align 4
  br label %135

45:                                               ; preds = %32, %28
  store i32 0, i32* %4, align 4
  br label %135

46:                                               ; preds = %22
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %8, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = call i32 @zuiSdsFromValue(%struct.TYPE_14__* %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32* @dictFind(%struct.TYPE_16__* %60, i32 %63)
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load double*, double** %7, align 8
  store double 1.000000e+00, double* %67, align 8
  store i32 1, i32* %4, align 4
  br label %135

68:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %135

69:                                               ; preds = %46
  %70 = call i32 @serverPanic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71
  br label %135

73:                                               ; preds = %16
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @OBJ_ZSET, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %132

79:                                               ; preds = %73
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = call i32 @zuiSdsFromValue(%struct.TYPE_14__* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @OBJ_ENCODING_ZIPLIST, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %79
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load double*, double** %7, align 8
  %97 = call i32* @zzlFind(%struct.TYPE_16__* %92, i32 %95, double* %96)
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  store i32 1, i32* %4, align 4
  br label %135

100:                                              ; preds = %87
  store i32 0, i32* %4, align 4
  br label %135

101:                                              ; preds = %79
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @OBJ_ENCODING_SKIPLIST, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %101
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  store %struct.TYPE_16__* %112, %struct.TYPE_16__** %9, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32* @dictFind(%struct.TYPE_16__* %115, i32 %118)
  store i32* %119, i32** %10, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %107
  %122 = load i32*, i32** %10, align 8
  %123 = call i64 @dictGetVal(i32* %122)
  %124 = inttoptr i64 %123 to double*
  %125 = load double, double* %124, align 8
  %126 = load double*, double** %7, align 8
  store double %125, double* %126, align 8
  store i32 1, i32* %4, align 4
  br label %135

127:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %135

128:                                              ; preds = %101
  %129 = call i32 @serverPanic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130
  br label %134

132:                                              ; preds = %73
  %133 = call i32 @serverPanic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %131
  br label %135

135:                                              ; preds = %15, %43, %45, %66, %68, %99, %100, %121, %127, %134, %72
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @zuiLongLongFromValue(%struct.TYPE_14__*) #1

declare dso_local i64 @intsetFind(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @zuiSdsFromValue(%struct.TYPE_14__*) #1

declare dso_local i32* @dictFind(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32* @zzlFind(%struct.TYPE_16__*, i32, double*) #1

declare dso_local i64 @dictGetVal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
