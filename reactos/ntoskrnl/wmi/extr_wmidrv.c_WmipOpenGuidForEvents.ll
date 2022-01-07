; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/wmi/extr_wmidrv.c_WmipOpenGuidForEvents.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/wmi/extr_wmidrv.c_WmipOpenGuidForEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ProbeAndCaptureGuidObjectAttributes failed: 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"WmipOpenGuidObjectByName failed: 0x%lx\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32*)* @WmipOpenGuidForEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WmipOpenGuidForEvents(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [46 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = bitcast %struct.TYPE_7__* %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 4
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %3
  %29 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %29, i32* %4, align 4
  br label %65

30:                                               ; preds = %23
  %31 = call i32 (...) @ExGetPreviousMode()
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [46 x i32], [46 x i32]* %12, i64 0, i64 0
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @WmipCaptureGuidObjectAttributes(i32 %34, i32* %10, i32* %11, i32* %35, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @NT_SUCCESS(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @DPRINT1(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %4, align 4
  br label %65

45:                                               ; preds = %30
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @WmipOpenGuidObjectByName(i32* %10, i32 %48, i32 %49, i32* %14, %struct.TYPE_7__** %15)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @NT_SUCCESS(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @DPRINT1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %4, align 4
  br label %65

58:                                               ; preds = %45
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %63 = call i32 @ObDereferenceObject(%struct.TYPE_7__* %62)
  %64 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %54, %41, %28
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @ExGetPreviousMode(...) #1

declare dso_local i32 @WmipCaptureGuidObjectAttributes(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local i32 @WmipOpenGuidObjectByName(i32*, i32, i32, i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @ObDereferenceObject(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
