; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_GenerateCRD.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_GenerateCRD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@cmsFLAGS_NODEFAULTRESOURCEDEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Color Rendering Dictionary (CRD)\00", align 1
@cmsSigNamedColorClass = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%%%%EndResource\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\0A%% CRD End\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.TYPE_7__*)* @GenerateCRD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GenerateCRD(i32 %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @cmsFLAGS_NODEFAULTRESOURCEDEF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @EmitHeader(i32 %18, %struct.TYPE_7__* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %5
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @cmsGetDeviceClass(i32 %23, i32 %24)
  %26 = load i64, i64* @cmsSigNamedColorClass, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @WriteNamedColorCRD(i32 %29, %struct.TYPE_7__* %30, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %65

37:                                               ; preds = %28
  br label %48

38:                                               ; preds = %22
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @WriteOutputLUT(i32 %39, %struct.TYPE_7__* %40, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %65

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @cmsFLAGS_NODEFAULTRESOURCEDEF, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %56 = call i32 @_cmsIOPrintf(i32 %54, %struct.TYPE_7__* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %59 = call i32 @_cmsIOPrintf(i32 %57, %struct.TYPE_7__* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %53, %48
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %46, %36
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @EmitHeader(i32, %struct.TYPE_7__*, i8*, i32) #1

declare dso_local i64 @cmsGetDeviceClass(i32, i32) #1

declare dso_local i32 @WriteNamedColorCRD(i32, %struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @WriteOutputLUT(i32, %struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @_cmsIOPrintf(i32, %struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
