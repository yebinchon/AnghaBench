; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__atodbl.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__atodbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"_atodbl_l(&d, \22\22, NULL) returned %d, expected 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"d.x = %lf, expected 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"_atodbl(&d, \22\22) returned %d, expected 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"_atodbl_l(&d, \22t\22, NULL) returned %d, expected 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"_atodbl(&d, \22t\22) returned %d, expected 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"_atodbl_l(&d, \220\22, NULL) returned %d, expected 0\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"_atodbl(&d, \220\22) returned %d, expected 0\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"_atodbl_l(&d, \22123\22, NULL) returned %d, expected 0\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"d.x = %lf, expected 123\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"_atodbl(&d, \22123\22) returned %d, expected 0\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"1e-309\00", align 1
@_UNDERFLOW = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [64 x i8] c"_atodbl_l(&d, \221e-309\22, NULL) returned %d, expected _UNDERFLOW\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"d.x = %le, expected 0\0A\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"_atodbl(&d, \221e-309\22) returned %d, expected _UNDERFLOW\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"1e309\00", align 1
@_OVERFLOW = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [62 x i8] c"_atodbl_l(&d, \221e309\22, NULL) returned %d, expected _OVERFLOW\0A\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"_atodbl(&d, \221e309\22) returned %d, expected _OVERFLOW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__atodbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__atodbl() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %4, align 16
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %6 = call i32 @p__atodbl_l(%struct.TYPE_4__* %1, i8* %5, i32* null)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %20 = call i32 @_atodbl(%struct.TYPE_4__* %1, i8* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %34 = call i32 @strcpy(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %36 = call i32 @p__atodbl_l(%struct.TYPE_4__* %1, i8* %35, i32* null)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %50 = call i32 @_atodbl(%struct.TYPE_4__* %1, i8* %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %64 = call i32 @strcpy(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %66 = call i32 @p__atodbl_l(%struct.TYPE_4__* %1, i8* %65, i32* null)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %80 = call i32 @_atodbl(%struct.TYPE_4__* %1, i8* %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %94 = call i32 @strcpy(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %96 = call i32 @p__atodbl_l(%struct.TYPE_4__* %1, i8* %95, i32* null)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 123
  %105 = zext i1 %104 to i32
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %107)
  %109 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %110 = call i32 @_atodbl(%struct.TYPE_4__* %1, i8* %109)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 123
  %119 = zext i1 %118 to i32
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %121)
  %123 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %124 = call i32 @strcpy(i8* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %126 = call i32 @p__atodbl_l(%struct.TYPE_4__* %1, i8* %125, i32* null)
  store i32 %126, i32* %3, align 4
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @_UNDERFLOW, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @ok(i32 %130, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.14, i64 0, i64 0), i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @almost_equal(i32 %138, i32 0)
  %140 = icmp ne i64 %139, 0
  br label %141

141:                                              ; preds = %136, %0
  %142 = phi i1 [ false, %0 ], [ %140, %136 ]
  %143 = zext i1 %142 to i32
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ok(i32 %143, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %145)
  %147 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %148 = call i32 @_atodbl(%struct.TYPE_4__* %1, i8* %147)
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* @_UNDERFLOW, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @ok(i32 %152, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %141
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @almost_equal(i32 %160, i32 0)
  %162 = icmp ne i64 %161, 0
  br label %163

163:                                              ; preds = %158, %141
  %164 = phi i1 [ false, %141 ], [ %162, %158 ]
  %165 = zext i1 %164 to i32
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ok(i32 %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %167)
  %169 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %170 = call i32 @strcpy(i8* %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %171 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %172 = call i32 @p__atodbl_l(%struct.TYPE_4__* %1, i8* %171, i32* null)
  store i32 %172, i32* %3, align 4
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @_OVERFLOW, align 4
  %175 = icmp eq i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %3, align 4
  %178 = call i32 @ok(i32 %176, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i64 0, i64 0), i32 %177)
  %179 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %180 = call i32 @_atodbl(%struct.TYPE_4__* %1, i8* %179)
  store i32 %180, i32* %3, align 4
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* @_OVERFLOW, align 4
  %183 = icmp eq i32 %181, %182
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %3, align 4
  %186 = call i32 @ok(i32 %184, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0), i32 %185)
  ret void
}

declare dso_local i32 @p__atodbl_l(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @_atodbl(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @almost_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
