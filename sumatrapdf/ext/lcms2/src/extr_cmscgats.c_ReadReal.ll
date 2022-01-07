; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscgats.c_ReadReal.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscgats.c_ReadReal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @ReadReal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReadReal(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sitofp i32 %10 to double
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store double %11, double* %13, align 8
  br label %14

14:                                               ; preds = %20, %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 8
  %18 = call i64 @isdigit(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = fmul double %23, 1.000000e+01
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 8
  %28 = sext i8 %27 to i32
  %29 = sub nsw i32 %28, 48
  %30 = sitofp i32 %29 to double
  %31 = fadd double %24, %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store double %31, double* %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = call i32 @NextCh(%struct.TYPE_4__* %34)
  br label %14

36:                                               ; preds = %14
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i8, i8* %38, align 8
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %42, label %76

42:                                               ; preds = %36
  store double 0.000000e+00, double* %5, align 8
  store i32 0, i32* %6, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = call i32 @NextCh(%struct.TYPE_4__* %43)
  br label %45

45:                                               ; preds = %51, %42
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i8, i8* %47, align 8
  %49 = call i64 @isdigit(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load double, double* %5, align 8
  %53 = fmul double %52, 1.000000e+01
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 8
  %57 = sext i8 %56 to i32
  %58 = sub nsw i32 %57, 48
  %59 = sitofp i32 %58 to double
  %60 = fadd double %53, %59
  store double %60, double* %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = call i32 @NextCh(%struct.TYPE_4__* %63)
  br label %45

65:                                               ; preds = %45
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load double, double* %67, align 8
  %69 = load double, double* %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call double @xpow10(i32 %70)
  %72 = fdiv double %69, %71
  %73 = fadd double %68, %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store double %73, double* %75, align 8
  br label %76

76:                                               ; preds = %65, %36
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i8, i8* %78, align 8
  %80 = call signext i8 @toupper(i8 signext %79)
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 69
  br i1 %82, label %83, label %144

83:                                               ; preds = %76
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = call i32 @NextCh(%struct.TYPE_4__* %84)
  store i32 1, i32* %8, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i8, i8* %87, align 8
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 45
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  store i32 -1, i32* %8, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = call i32 @NextCh(%struct.TYPE_4__* %92)
  br label %104

94:                                               ; preds = %83
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i8, i8* %96, align 8
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 43
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  store i32 1, i32* %8, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = call i32 @NextCh(%struct.TYPE_4__* %101)
  br label %103

103:                                              ; preds = %100, %94
  br label %104

104:                                              ; preds = %103, %91
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %129, %104
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i8, i8* %107, align 8
  %109 = call i64 @isdigit(i8 signext %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %105
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i8, i8* %113, align 8
  %115 = sext i8 %114 to i32
  %116 = sub nsw i32 %115, 48
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %7, align 4
  %118 = sitofp i32 %117 to double
  %119 = fmul double %118, 1.000000e+01
  %120 = load i32, i32* %9, align 4
  %121 = sitofp i32 %120 to double
  %122 = fadd double %119, %121
  %123 = fcmp olt double %122, 0x41DFFFFFFFC00000
  br i1 %123, label %124, label %129

124:                                              ; preds = %111
  %125 = load i32, i32* %7, align 4
  %126 = mul nsw i32 %125, 10
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %124, %111
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %131 = call i32 @NextCh(%struct.TYPE_4__* %130)
  br label %105

132:                                              ; preds = %105
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %7, align 4
  %135 = mul nsw i32 %133, %134
  store i32 %135, i32* %7, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load double, double* %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call double @xpow10(i32 %139)
  %141 = fmul double %138, %140
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store double %141, double* %143, align 8
  br label %144

144:                                              ; preds = %132, %76
  ret void
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @NextCh(%struct.TYPE_4__*) #1

declare dso_local double @xpow10(i32) #1

declare dso_local signext i8 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
