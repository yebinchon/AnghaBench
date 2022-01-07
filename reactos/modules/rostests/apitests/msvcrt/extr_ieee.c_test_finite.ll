; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/msvcrt/extr_ieee.c_test_finite.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/msvcrt/extr_ieee.c_test_finite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, double }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"_finite = TRUE\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"_finite = FALSE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_finite() #0 {
  %1 = alloca %struct.TYPE_2__, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 -1, i32* %2, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %4 = load double, double* %3, align 8
  %5 = call i64 @_finite(double %4)
  %6 = load i64, i64* @FALSE, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = call i64 @_finite(double %12)
  %14 = load i64, i64* @FALSE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = call i64 @_finite(double %20)
  %22 = load i64, i64* @FALSE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = call i64 @_finite(double %28)
  %30 = load i64, i64* @FALSE, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = call i64 @_finite(double %36)
  %38 = load i64, i64* @FALSE, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = call i64 @_finite(double %44)
  %46 = load i64, i64* @FALSE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 -1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %52 = load double, double* %51, align 8
  %53 = call i64 @_finite(double %52)
  %54 = load i64, i64* @TRUE, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %60 = load double, double* %59, align 8
  %61 = call i64 @_finite(double %60)
  %62 = load i64, i64* @TRUE, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 -1, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %68 = load double, double* %67, align 8
  %69 = call i64 @_finite(double %68)
  %70 = load i64, i64* @TRUE, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %76 = load double, double* %75, align 8
  %77 = call i64 @_finite(double %76)
  %78 = load i64, i64* @TRUE, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %84 = load double, double* %83, align 8
  %85 = call i64 @_finite(double %84)
  %86 = load i64, i64* @TRUE, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %92 = load double, double* %91, align 8
  %93 = call i64 @_finite(double %92)
  %94 = load i64, i64* @TRUE, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %100 = load double, double* %99, align 8
  %101 = call i64 @_finite(double %100)
  %102 = load i64, i64* @TRUE, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 -1, i32* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %108 = load double, double* %107, align 8
  %109 = call i64 @_finite(double %108)
  %110 = load i64, i64* @TRUE, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 0, i32* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %116 = load double, double* %115, align 8
  %117 = call i64 @_finite(double %116)
  %118 = load i64, i64* @TRUE, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 -1, i32* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %124 = load double, double* %123, align 8
  %125 = call i64 @_finite(double %124)
  %126 = load i64, i64* @TRUE, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 0, i32* %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %132 = load double, double* %131, align 8
  %133 = call i64 @_finite(double %132)
  %134 = load i64, i64* @FALSE, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @ok(i32 %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %140 = load double, double* %139, align 8
  %141 = call i64 @_finite(double %140)
  %142 = load i64, i64* @FALSE, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @ok(i32 %144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 -1, i32* %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %148 = load double, double* %147, align 8
  %149 = call i64 @_finite(double %148)
  %150 = load i64, i64* @FALSE, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @ok(i32 %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 0, i32* %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %156 = load double, double* %155, align 8
  %157 = call i64 @_finite(double %156)
  %158 = load i64, i64* @FALSE, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @ok(i32 %160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 -1, i32* %162, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %164 = load double, double* %163, align 8
  %165 = call i64 @_finite(double %164)
  %166 = load i64, i64* @FALSE, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @ok(i32 %168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %170 = call i64 @_finite(double 2.387000e+00)
  %171 = load i64, i64* @TRUE, align 8
  %172 = icmp eq i64 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @ok(i32 %173, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @_finite(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
