; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_create_directdraw.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_create_directdraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@DD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"DirectDrawCreate returned: %x\0A\00", align 1
@IID_IDirectDraw7 = common dso_local global i32 0, align 4
@pdd7 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"QueryInterface returned: %x\0A\00", align 1
@DDSCL_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"SetCooperativeLevel returned: %x\0A\00", align 1
@DDSD_CAPS = common dso_local global i32 0, align 4
@DDSCAPS_PRIMARYSURFACE = common dso_local global i32 0, align 4
@pdds7 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"CreateSurface returned: %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_directdraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_directdraw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  store i32* null, i32** %3, align 8
  %5 = call i64 @DirectDrawCreate(i32* null, i32** %3, i32* null)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @DD_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @DD_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  br label %56

16:                                               ; preds = %0
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @IDirectDraw_QueryInterface(i32* %17, i32* @IID_IDirectDraw7, i32* bitcast (i64* @pdd7 to i32*))
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @DD_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @DD_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %56

29:                                               ; preds = %16
  %30 = load i64, i64* @pdd7, align 8
  %31 = call i32 (...) @GetDesktopWindow()
  %32 = load i32, i32* @DDSCL_NORMAL, align 4
  %33 = call i64 @IDirectDraw7_SetCooperativeLevel(i64 %30, i32 %31, i32 %32)
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @DD_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %2, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = call i32 @ZeroMemory(%struct.TYPE_6__* %4, i32 12)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 12, i32* %41, align 4
  %42 = load i32, i32* @DDSD_CAPS, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @DDSCAPS_PRIMARYSURFACE, align 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* @pdd7, align 8
  %48 = call i64 @IDirectDraw7_CreateSurface(i64 %47, %struct.TYPE_6__* %4, i64* @pdds7, i32* null)
  store i64 %48, i64* %2, align 8
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* @DD_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %2, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %1, align 4
  br label %76

56:                                               ; preds = %28, %15
  %57 = load i64, i64* @pdds7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* @pdds7, align 8
  %61 = call i32 @IDirectDrawSurface7_Release(i64 %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i64, i64* @pdd7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* @pdd7, align 8
  %67 = call i32 @IDirectDraw7_Release(i64 %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32*, i32** %3, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @IDirectDraw_Release(i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %1, align 4
  br label %76

76:                                               ; preds = %74, %29
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

declare dso_local i64 @DirectDrawCreate(i32*, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IDirectDraw_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i64 @IDirectDraw7_SetCooperativeLevel(i64, i32, i32) #1

declare dso_local i32 @GetDesktopWindow(...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @IDirectDraw7_CreateSurface(i64, %struct.TYPE_6__*, i64*, i32*) #1

declare dso_local i32 @IDirectDrawSurface7_Release(i64) #1

declare dso_local i32 @IDirectDraw7_Release(i64) #1

declare dso_local i32 @IDirectDraw_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
