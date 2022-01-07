; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileMtimeToDos.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileMtimeToDos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @zipfileMtimeToDos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zipfileMtimeToDos(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sdiv i32 %17, 86400
  %19 = sitofp i32 %18 to double
  %20 = fadd double 0x41429EC600000000, %19
  store double %20, double* %5, align 8
  %21 = load double, double* %5, align 8
  %22 = fsub double %21, 0x413C7DD040000000
  %23 = fdiv double %22, 0x40E1D58800000000
  %24 = fptosi double %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load double, double* %5, align 8
  %26 = fadd double %25, 1.000000e+00
  %27 = load i32, i32* %6, align 4
  %28 = sitofp i32 %27 to double
  %29 = fadd double %26, %28
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 4
  %32 = sitofp i32 %31 to double
  %33 = fsub double %29, %32
  %34 = fptosi double %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1524
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sitofp i32 %37 to double
  %39 = fsub double %38, 1.221000e+02
  %40 = fdiv double %39, 3.652500e+02
  %41 = fptosi double %40 to i32
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 32767
  %44 = mul nsw i32 36525, %43
  %45 = sdiv i32 %44, 100
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 3.060010e+01
  %51 = fptosi double %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = sitofp i32 %55 to double
  %57 = fmul double 3.060010e+01, %56
  %58 = fptosi double %57 to i32
  %59 = sub nsw i32 %54, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 14
  br i1 %61, label %62, label %65

62:                                               ; preds = %2
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, 1
  br label %68

65:                                               ; preds = %2
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %66, 13
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i32 [ %64, %62 ], [ %67, %65 ]
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 4716
  br label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, 4715
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i32 [ %74, %72 ], [ %77, %75 ]
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %4, align 4
  %81 = srem i32 %80, 86400
  %82 = sdiv i32 %81, 3600
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %4, align 4
  %84 = srem i32 %83, 3600
  %85 = sdiv i32 %84, 60
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %4, align 4
  %87 = srem i32 %86, 60
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp sge i32 %88, 1980
  br i1 %89, label %90, label %115

90:                                               ; preds = %78
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %12, align 4
  %93 = shl i32 %92, 5
  %94 = add nsw i32 %91, %93
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %95, 1980
  %97 = shl i32 %96, 9
  %98 = add nsw i32 %94, %97
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sdiv i32 %103, 2
  %105 = load i32, i32* %15, align 4
  %106 = shl i32 %105, 5
  %107 = add nsw i32 %104, %106
  %108 = load i32, i32* %14, align 4
  %109 = shl i32 %108, 11
  %110 = add nsw i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  br label %120

115:                                              ; preds = %78
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i8* null, i8** %117, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i8* null, i8** %119, align 8
  br label %120

120:                                              ; preds = %115, %90
  %121 = load i32, i32* %4, align 4
  %122 = icmp slt i32 %121, 315507600
  br i1 %122, label %140, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = call i32 @zipfileMtime(%struct.TYPE_4__* %125)
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %140, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %4, align 4
  %130 = srem i32 %129, 2
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i32, i32* %4, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %136 = call i32 @zipfileMtime(%struct.TYPE_4__* %135)
  %137 = icmp eq i32 %134, %136
  br label %138

138:                                              ; preds = %132, %128
  %139 = phi i1 [ false, %128 ], [ %137, %132 ]
  br label %140

140:                                              ; preds = %138, %123, %120
  %141 = phi i1 [ true, %123 ], [ true, %120 ], [ %139, %138 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zipfileMtime(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
