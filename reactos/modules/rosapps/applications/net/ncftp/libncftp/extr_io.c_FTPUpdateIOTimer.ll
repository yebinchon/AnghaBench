; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_io.c_FTPUpdateIOTimer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_io.c_FTPUpdateIOTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, double, double, double, double, double, double, double, i64, i32 (%struct.TYPE_5__*, i32)*, %struct.timeval }
%struct.timeval = type { i64, double }

@kSizeUnknown = common dso_local global double 0.000000e+00, align 8
@kPrUpdateMsg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FTPUpdateIOTimer(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = call i32 @time(i64* %6)
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %174

14:                                               ; preds = %1
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 10
  store %struct.timeval* %22, %struct.timeval** %4, align 8
  %23 = load %struct.timeval*, %struct.timeval** %4, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1000000
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %34 = load double, double* %33, align 8
  %35 = fadd double %34, -1.000000e+00
  store double %35, double* %33, align 8
  br label %36

36:                                               ; preds = %29, %14
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.timeval*, %struct.timeval** %4, align 8
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = sitofp i64 %42 to double
  %44 = fmul double %43, 0x3EB0C6F7A0B5ED8D
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = load %struct.timeval*, %struct.timeval** %4, align 8
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fsub double %46, %49
  %51 = fadd double %44, %50
  store double %51, double* %3, align 8
  %52 = load double, double* %3, align 8
  %53 = fcmp ogt double %52, 0.000000e+00
  br i1 %53, label %54, label %63

54:                                               ; preds = %36
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load double, double* %56, align 8
  %58 = load double, double* %3, align 8
  %59 = fmul double 1.024000e+03, %58
  %60 = fdiv double %57, %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store double %60, double* %62, align 8
  br label %66

63:                                               ; preds = %36
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store double -1.000000e+00, double* %65, align 8
  br label %66

66:                                               ; preds = %63, %54
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load double, double* %68, align 8
  %70 = load double, double* @kSizeUnknown, align 8
  %71 = fcmp oeq double %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  store double -1.000000e+00, double* %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  store double -1.000000e+00, double* %76, align 8
  br label %154

77:                                               ; preds = %66
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load double, double* %79, align 8
  %81 = fcmp ole double %80, 0.000000e+00
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  store double 1.000000e+02, double* %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 5
  store double 0.000000e+00, double* %86, align 8
  br label %153

87:                                               ; preds = %77
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load double, double* %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 6
  %93 = load double, double* %92, align 8
  %94 = fadd double %90, %93
  %95 = fmul double 1.000000e+02, %94
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load double, double* %97, align 8
  %99 = fdiv double %95, %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  store double %99, double* %101, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 4
  %104 = load double, double* %103, align 8
  %105 = fcmp oge double %104, 1.000000e+02
  br i1 %105, label %106, label %111

106:                                              ; preds = %87
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 4
  store double 1.000000e+02, double* %108, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 5
  store double 0.000000e+00, double* %110, align 8
  br label %120

111:                                              ; preds = %87
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = load double, double* %113, align 8
  %115 = fcmp ole double %114, 0.000000e+00
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 5
  store double 9.990000e+02, double* %118, align 8
  br label %119

119:                                              ; preds = %116, %111
  br label %120

120:                                              ; preds = %119, %106
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load double, double* %122, align 8
  %124 = fcmp ogt double %123, 0.000000e+00
  br i1 %124, label %125, label %152

125:                                              ; preds = %120
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load double, double* %127, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  %131 = load double, double* %130, align 8
  %132 = fsub double %128, %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 6
  %135 = load double, double* %134, align 8
  %136 = fsub double %132, %135
  %137 = fdiv double %136, 1.024000e+03
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load double, double* %139, align 8
  %141 = fdiv double %137, %140
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 5
  store double %141, double* %143, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 5
  %146 = load double, double* %145, align 8
  %147 = fcmp olt double %146, 0.000000e+00
  br i1 %147, label %148, label %151

148:                                              ; preds = %125
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 5
  store double 0.000000e+00, double* %150, align 8
  br label %151

151:                                              ; preds = %148, %125
  br label %152

152:                                              ; preds = %151, %120
  br label %153

153:                                              ; preds = %152, %82
  br label %154

154:                                              ; preds = %153, %72
  %155 = load double, double* %3, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 7
  store double %155, double* %157, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 9
  %160 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %159, align 8
  %161 = icmp ne i32 (%struct.TYPE_5__*, i32)* %160, null
  br i1 %161, label %162, label %174

162:                                              ; preds = %154
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 8
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 9
  %170 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %169, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %172 = load i32, i32* @kPrUpdateMsg, align 4
  %173 = call i32 %170(%struct.TYPE_5__* %171, i32 %172)
  br label %174

174:                                              ; preds = %13, %167, %162, %154
  ret void
}

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
