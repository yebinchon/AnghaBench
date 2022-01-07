; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_ExtCreateRegion.c_Test_ExtCreateRegion_Transform.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_ExtCreateRegion.c_Test_ExtCreateRegion_Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { %struct.TYPE_7__, [3 x i32] }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@RDH_RECTANGLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ExtCreateRegion failed with without transform\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"ExtCreateRegion failed with identity transform\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"ExtCreateRegion failed with offset transform\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"ExtCreateRegion failed with scaling transform\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"ExtCreateRegion failed with scaling+offset transform\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"ExtCreateRegion failed with shearing transform\0A\00", align 1
@COMPLEXREGION = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"not a complex region\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"ExtCreateRegion failed with rotating transform\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_ExtCreateRegion_Transform() #0 {
  %1 = alloca %struct.anon, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = bitcast i32* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %2, align 8
  %11 = bitcast %struct.anon* %1 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 4, i32* %14, align 8
  %15 = load i32, i32* @RDH_RECTANGLES, align 4
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 8
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32 8, i32* %24, align 8
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 10, i32* %36, align 8
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i32 10, i32* %40, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 10, i32* %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i32 10, i32* %48, align 4
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = call i32 @SetRectEmpty(%struct.TYPE_9__* %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = call i32* @ExtCreateRegion(i32* null, i32 72, %struct.TYPE_7__* %53)
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @CheckRectRegion(i32* %59, i32 0, i32 0, i32 10, i32 10)
  %61 = call i32 @InitXFORM(i32* %4, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = call i32* @ExtCreateRegion(i32* %4, i32 72, %struct.TYPE_7__* %62)
  store i32* %63, i32** %6, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = icmp ne i32* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @CheckRectRegion(i32* %68, i32 0, i32 0, i32 10, i32 10)
  %70 = call i32 @InitXFORM(i32* %4, i32 1, i32 0, i32 0, i32 1, i32 10, i32 10)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = call i32* @ExtCreateRegion(i32* %4, i32 72, %struct.TYPE_7__* %71)
  store i32* %72, i32** %6, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = icmp ne i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @CheckRectRegion(i32* %77, i32 10, i32 10, i32 20, i32 20)
  %79 = call i32 @InitXFORM(i32* %4, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = call i32* @ExtCreateRegion(i32* %4, i32 72, %struct.TYPE_7__* %80)
  store i32* %81, i32** %6, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = icmp ne i32* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @CheckRectRegion(i32* %86, i32 0, i32 0, i32 25, i32 15)
  %88 = call i32 @InitXFORM(i32* %4, i32 2, i32 0, i32 0, i32 1, i32 20, i32 40)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = call i32* @ExtCreateRegion(i32* %4, i32 72, %struct.TYPE_7__* %89)
  store i32* %90, i32** %6, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = icmp ne i32* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @CheckRectRegion(i32* %95, i32 20, i32 40, i32 45, i32 55)
  %97 = call i32 @InitXFORM(i32* %4, i32 1, i32 10, i32 0, i32 1, i32 0, i32 0)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = call i32* @ExtCreateRegion(i32* %4, i32 72, %struct.TYPE_7__* %98)
  store i32* %99, i32** %6, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = icmp ne i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32*, i32** %6, align 8
  %105 = call i64 @GetRgnBox(i32* %104, i32* %7)
  %106 = load i64, i64* @COMPLEXREGION, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %110 = call i32 @CheckRect(i32* %7, i32 0, i32 1, i32 10, i32 101)
  store float 0x40379999A0000000, float* %5, align 4
  %111 = load float, float* %5, align 4
  %112 = call i32 @cosf(float %111)
  %113 = load float, float* %5, align 4
  %114 = call i32 @sinf(float %113)
  %115 = sub nsw i32 0, %114
  %116 = load float, float* %5, align 4
  %117 = call i32 @sinf(float %116)
  %118 = load float, float* %5, align 4
  %119 = call i32 @cosf(float %118)
  %120 = call i32 @InitXFORM(i32* %4, i32 %112, i32 %115, i32 %117, i32 %119, i32 10, i32 10)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = call i32* @ExtCreateRegion(i32* %4, i32 72, %struct.TYPE_7__* %121)
  store i32* %122, i32** %6, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = icmp ne i32* %123, null
  %125 = zext i1 %124 to i32
  %126 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @CheckRectRegion(i32* %127, i32 0, i32 10, i32 10, i32 20)
  ret void
}

declare dso_local i32 @SetRectEmpty(%struct.TYPE_9__*) #1

declare dso_local i32* @ExtCreateRegion(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @CheckRectRegion(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @InitXFORM(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @GetRgnBox(i32*, i32*) #1

declare dso_local i32 @CheckRect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cosf(float) #1

declare dso_local i32 @sinf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
