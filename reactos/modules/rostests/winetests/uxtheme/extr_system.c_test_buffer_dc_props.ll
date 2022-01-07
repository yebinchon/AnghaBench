; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/uxtheme/extr_system.c_test_buffer_dc_props.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/uxtheme/extr_system.c_test_buffer_dc_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float, float, float, float, float, float }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }

@test_buffer_dc_props.ident = internal constant %struct.TYPE_11__ { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to get world transform\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unexpected world transform\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to get vport origin\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unexpected vport origin\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unexpected window origin\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to get clip box\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Unexpected clip box\0A\00", align 1
@GM_COMPATIBLE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"wrong graphics mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_12__*)* @test_buffer_dc_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_buffer_dc_props(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GetWorldTransform(i32 %9, %struct.TYPE_11__* %5)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @memcmp(%struct.TYPE_11__* %5, %struct.TYPE_11__* @test_buffer_dc_props.ident, i32 24)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @GetViewportOrgEx(i32 %18, %struct.TYPE_13__* %6)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br label %29

29:                                               ; preds = %25, %2
  %30 = phi i1 [ false, %2 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @GetWindowOrgEx(i32 %33, %struct.TYPE_13__* %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br label %50

50:                                               ; preds = %43, %29
  %51 = phi i1 [ false, %29 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @GetClipBox(i32 %54, %struct.TYPE_12__* %7)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br label %71

71:                                               ; preds = %64, %50
  %72 = phi i1 [ false, %50 ], [ %70, %64 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i32, i32* %3, align 4
  %76 = call i64 @GetGraphicsMode(i32 %75)
  %77 = load i64, i64* @GM_COMPATIBLE, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @GetWorldTransform(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @memcmp(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @GetViewportOrgEx(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @GetWindowOrgEx(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @GetClipBox(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @GetGraphicsMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
