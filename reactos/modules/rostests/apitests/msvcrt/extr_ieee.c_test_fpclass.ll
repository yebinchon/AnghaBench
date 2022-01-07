; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/msvcrt/extr_ieee.c_test_fpclass.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/msvcrt/extr_ieee.c_test_fpclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, double }

@_FPCLASS_QNAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"class = %d\0A\00", align 1
@_FPCLASS_NINF = common dso_local global i32 0, align 4
@_FPCLASS_NN = common dso_local global i32 0, align 4
@_FPCLASS_ND = common dso_local global i32 0, align 4
@_FPCLASS_NZ = common dso_local global i32 0, align 4
@_FPCLASS_PZ = common dso_local global i32 0, align 4
@_FPCLASS_PD = common dso_local global i32 0, align 4
@_FPCLASS_PN = common dso_local global i32 0, align 4
@_FPCLASS_PINF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fpclass() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_2__, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 -1, i32* %3, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %5 = load double, double* %4, align 8
  %6 = call i32 @_fpclass(double %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @_FPCLASS_QNAN, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = call i32 @_fpclass(double %15)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @_FPCLASS_QNAN, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %25 = load double, double* %24, align 8
  %26 = call i32 @_fpclass(double %25)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @_FPCLASS_QNAN, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = call i32 @_fpclass(double %35)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @_FPCLASS_QNAN, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = call i32 @_fpclass(double %45)
  store i32 %46, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @_FPCLASS_QNAN, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %55 = load double, double* %54, align 8
  %56 = call i32 @_fpclass(double %55)
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* @_FPCLASS_NINF, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %1, align 4
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %65 = load double, double* %64, align 8
  %66 = call i32 @_fpclass(double %65)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @_FPCLASS_NN, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %75 = load double, double* %74, align 8
  %76 = call i32 @_fpclass(double %75)
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* %1, align 4
  %78 = load i32, i32* @_FPCLASS_NN, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 -1, i32* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %85 = load double, double* %84, align 8
  %86 = call i32 @_fpclass(double %85)
  store i32 %86, i32* %1, align 4
  %87 = load i32, i32* %1, align 4
  %88 = load i32, i32* @_FPCLASS_ND, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %95 = load double, double* %94, align 8
  %96 = call i32 @_fpclass(double %95)
  store i32 %96, i32* %1, align 4
  %97 = load i32, i32* %1, align 4
  %98 = load i32, i32* @_FPCLASS_ND, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %1, align 4
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %105 = load double, double* %104, align 8
  %106 = call i32 @_fpclass(double %105)
  store i32 %106, i32* %1, align 4
  %107 = load i32, i32* %1, align 4
  %108 = load i32, i32* @_FPCLASS_NZ, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %1, align 4
  %112 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %115 = load double, double* %114, align 8
  %116 = call i32 @_fpclass(double %115)
  store i32 %116, i32* %1, align 4
  %117 = load i32, i32* %1, align 4
  %118 = load i32, i32* @_FPCLASS_PZ, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %1, align 4
  %122 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %125 = load double, double* %124, align 8
  %126 = call i32 @_fpclass(double %125)
  store i32 %126, i32* %1, align 4
  %127 = load i32, i32* %1, align 4
  %128 = load i32, i32* @_FPCLASS_PD, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %1, align 4
  %132 = call i32 @ok(i32 %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 -1, i32* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %135 = load double, double* %134, align 8
  %136 = call i32 @_fpclass(double %135)
  store i32 %136, i32* %1, align 4
  %137 = load i32, i32* %1, align 4
  %138 = load i32, i32* @_FPCLASS_PD, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %1, align 4
  %142 = call i32 @ok(i32 %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 0, i32* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %145 = load double, double* %144, align 8
  %146 = call i32 @_fpclass(double %145)
  store i32 %146, i32* %1, align 4
  %147 = load i32, i32* %1, align 4
  %148 = load i32, i32* @_FPCLASS_PN, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %1, align 4
  %152 = call i32 @ok(i32 %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %151)
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 -1, i32* %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %155 = load double, double* %154, align 8
  %156 = call i32 @_fpclass(double %155)
  store i32 %156, i32* %1, align 4
  %157 = load i32, i32* %1, align 4
  %158 = load i32, i32* @_FPCLASS_PN, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %1, align 4
  %162 = call i32 @ok(i32 %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 0, i32* %163, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %165 = load double, double* %164, align 8
  %166 = call i32 @_fpclass(double %165)
  store i32 %166, i32* %1, align 4
  %167 = load i32, i32* %1, align 4
  %168 = load i32, i32* @_FPCLASS_PINF, align 4
  %169 = icmp eq i32 %167, %168
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %1, align 4
  %172 = call i32 @ok(i32 %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 1, i32* %173, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %175 = load double, double* %174, align 8
  %176 = call i32 @_fpclass(double %175)
  store i32 %176, i32* %1, align 4
  %177 = load i32, i32* %1, align 4
  %178 = load i32, i32* @_FPCLASS_QNAN, align 4
  %179 = icmp eq i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %1, align 4
  %182 = call i32 @ok(i32 %180, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %181)
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 -1, i32* %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %185 = load double, double* %184, align 8
  %186 = call i32 @_fpclass(double %185)
  store i32 %186, i32* %1, align 4
  %187 = load i32, i32* %1, align 4
  %188 = load i32, i32* @_FPCLASS_QNAN, align 4
  %189 = icmp eq i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = load i32, i32* %1, align 4
  %192 = call i32 @ok(i32 %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %191)
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 0, i32* %193, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %195 = load double, double* %194, align 8
  %196 = call i32 @_fpclass(double %195)
  store i32 %196, i32* %1, align 4
  %197 = load i32, i32* %1, align 4
  %198 = load i32, i32* @_FPCLASS_QNAN, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %1, align 4
  %202 = call i32 @ok(i32 %200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %201)
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 -1, i32* %203, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  %205 = load double, double* %204, align 8
  %206 = call i32 @_fpclass(double %205)
  store i32 %206, i32* %1, align 4
  %207 = load i32, i32* %1, align 4
  %208 = load i32, i32* @_FPCLASS_QNAN, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = load i32, i32* %1, align 4
  %212 = call i32 @ok(i32 %210, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %211)
  %213 = call i32 @_fpclass(double 2.387000e+00)
  store i32 %213, i32* %1, align 4
  %214 = load i32, i32* %1, align 4
  %215 = load i32, i32* @_FPCLASS_PN, align 4
  %216 = icmp eq i32 %214, %215
  %217 = zext i1 %216 to i32
  %218 = load i32, i32* %1, align 4
  %219 = call i32 @ok(i32 %217, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %218)
  ret void
}

declare dso_local i32 @_fpclass(double) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
