; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_benchfn.c_BMK_benchFunction.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_benchfn.c_BMK_benchFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 (i32, i64, i32, i32, i32)*, i64*, i64*, i64 (i64)*, i32, i32*, i32*, i32*, i32, i32 (i32)* }
%struct.TYPE_5__ = type { double, i64 }

@.str = private unnamed_addr constant [65 x i8] c"Function benchmark failed on block %u (of size %u) with error %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BMK_benchFunction(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  store i32 %1, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, %15
  store i32 %17, i32* %3, align 4
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %35, %2
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memset(i32 %28, i32 229, i32 %33)
  br label %35

35:                                               ; preds = %23
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %18

38:                                               ; preds = %18
  %39 = call i32 (...) @UTIL_getTime()
  store i32 %39, i32* %6, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = icmp ne i32 (i32)* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %45(i32 %47)
  br label %49

49:                                               ; preds = %43, %38
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %137, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %140

54:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %133, %54
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %57, %59
  br i1 %60, label %61, label %136

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %63 = load i64 (i32, i64, i32, i32, i32)*, i64 (i32, i64, i32, i32, i32)** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = call i64 %63(i32 %69, i64 %75, i32 %81, i32 %87, i32 %89)
  store i64 %90, i64* %9, align 8
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %132

93:                                               ; preds = %61
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = icmp ne i64* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 %98, i64* %103, align 8
  br label %104

104:                                              ; preds = %97, %93
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %106 = load i64 (i64)*, i64 (i64)** %105, align 8
  %107 = icmp ne i64 (i64)* %106, null
  br i1 %107, label %108, label %128

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %110 = load i64 (i64)*, i64 (i64)** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i64 %110(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %108
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @BMK_runOutcome_error(i64 %115)
  %117 = load i32, i32* %8, align 4
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i64, i64* %9, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @RETURN_QUIET_ERROR(i32 %116, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %124, i32 %126)
  br label %128

128:                                              ; preds = %114, %108, %104
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* %4, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %4, align 8
  br label %132

132:                                              ; preds = %128, %61
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %55

136:                                              ; preds = %55
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %7, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %50

140:                                              ; preds = %50
  %141 = load i32, i32* %6, align 4
  %142 = call i64 @UTIL_clockSpanNano(i32 %141)
  store i64 %142, i64* %10, align 8
  %143 = load i64, i64* %10, align 8
  %144 = sitofp i64 %143 to double
  %145 = load i32, i32* %3, align 4
  %146 = uitofp i32 %145 to double
  %147 = fdiv double %144, %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store double %147, double* %148, align 8
  %149 = load i64, i64* %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i64 %149, i64* %150, align 8
  %151 = bitcast %struct.TYPE_5__* %11 to { double, i64 }*
  %152 = getelementptr inbounds { double, i64 }, { double, i64 }* %151, i32 0, i32 0
  %153 = load double, double* %152, align 8
  %154 = getelementptr inbounds { double, i64 }, { double, i64 }* %151, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @BMK_setValid_runTime(double %153, i64 %155)
  ret i32 %156
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @UTIL_getTime(...) #1

declare dso_local i32 @RETURN_QUIET_ERROR(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @BMK_runOutcome_error(i64) #1

declare dso_local i64 @UTIL_clockSpanNano(i32) #1

declare dso_local i32 @BMK_setValid_runTime(double, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
