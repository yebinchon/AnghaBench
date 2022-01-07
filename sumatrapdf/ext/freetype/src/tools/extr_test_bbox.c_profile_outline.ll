; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/tools/extr_test_bbox.c_profile_outline.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/tools/extr_test_bbox.c_profile_outline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"time = %6.3f cbox = [%8.4f %8.4f %8.4f %8.4f]\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cbox_hex = [%08X %08X %08X %08X]\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"time = %6.3f bbox = [%8.4f %8.4f %8.4f %8.4f]\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"bbox_hex = [%08X %08X %08X %08X]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @profile_outline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @profile_outline(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i64 (...) @get_time()
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %16, %2
  %11 = load i64, i64* %6, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @FT_Outline_Get_CBox(i32* %14, %struct.TYPE_4__* %5)
  br label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %6, align 8
  br label %10

19:                                               ; preds = %10
  %20 = call i64 (...) @get_time()
  %21 = load i64, i64* %7, align 8
  %22 = sub nsw i64 %20, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sitofp i64 %23 to double
  %25 = fdiv double %24, 1.000000e+04
  %26 = fptosi double %25 to i32
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call double @XVAL(i32 %28)
  %30 = fptosi double %29 to i32
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call double @XVAL(i32 %32)
  %34 = fptosi double %33 to i32
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call double @XVAL(i32 %36)
  %38 = fptosi double %37 to i32
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call double @XVAL(i32 %40)
  %42 = call i32 (i8*, i32, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30, i32 %34, i32 %38, double %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i32, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %46, i32 %48, i32 %50)
  %52 = call i64 (...) @get_time()
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %4, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %60, %19
  %55 = load i64, i64* %6, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @FT_Outline_Get_BBox(i32* %58, %struct.TYPE_4__* %5)
  br label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %6, align 8
  br label %54

63:                                               ; preds = %54
  %64 = call i64 (...) @get_time()
  %65 = load i64, i64* %7, align 8
  %66 = sub nsw i64 %64, %65
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sitofp i64 %67 to double
  %69 = fdiv double %68, 1.000000e+04
  %70 = fptosi double %69 to i32
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call double @XVAL(i32 %72)
  %74 = fptosi double %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call double @XVAL(i32 %76)
  %78 = fptosi double %77 to i32
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call double @XVAL(i32 %80)
  %82 = fptosi double %81 to i32
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call double @XVAL(i32 %84)
  %86 = call i32 (i8*, i32, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %74, i32 %78, i32 %82, double %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %90, i32 %92, i32 %94)
  ret void
}

declare dso_local i64 @get_time(...) #1

declare dso_local i32 @FT_Outline_Get_CBox(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, ...) #1

declare dso_local double @XVAL(i32) #1

declare dso_local i32 @FT_Outline_Get_BBox(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
