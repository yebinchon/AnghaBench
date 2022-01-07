; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_browse_ctx.c_test_BrowseWindowInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_browse_ctx.c_test_BrowseWindowInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@IID_IHlinkBrowseContext = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"HlinkCreateBrowseContext failed: 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"GetBrowseWindow failed with wrong code: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"SetBrowseWindow failed with wrong code: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"GetBrowseWindowInfo failed: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Got wrong size: %x\0A\00", align 1
@HLBWIF_WEBTOOLBARHIDDEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"SetBrowseWindowInfo failed: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Set and Get differ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_BrowseWindowInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_BrowseWindowInfo() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_15__, align 8
  %3 = alloca %struct.TYPE_15__, align 8
  %4 = alloca i64, align 8
  %5 = bitcast i32** %1 to i8**
  %6 = call i64 @HlinkCreateBrowseContext(i32* null, i32* @IID_IHlinkBrowseContext, i8** %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %4, align 8
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i64 @IHlinkBrowseContext_GetBrowseWindowInfo(i32* %13, %struct.TYPE_15__* null)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @E_INVALIDARG, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i64 @IHlinkBrowseContext_SetBrowseWindowInfo(i32* %21, %struct.TYPE_15__* null)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @E_INVALIDARG, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %4, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  %29 = call i32 @memset(%struct.TYPE_15__* %3, i32 -1, i32 64)
  %30 = load i32*, i32** %1, align 8
  %31 = call i64 @IHlinkBrowseContext_GetBrowseWindowInfo(i32* %30, %struct.TYPE_15__* %3)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %4, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %36)
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %43)
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  store i64 64, i64* %45, align 8
  %46 = load i32, i32* @HLBWIF_WEBTOOLBARHIDDEN, align 4
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  store i32 2, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  store i32 3, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  store i32 4, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 5, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  store i32 6, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  store i32 7, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  store i32 8, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i32 4321, i32* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i32 9, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  store i32 10, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  store i32 11, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  store i32 12, i32* %77, align 4
  %78 = load i32*, i32** %1, align 8
  %79 = call i64 @IHlinkBrowseContext_SetBrowseWindowInfo(i32* %78, %struct.TYPE_15__* %2)
  store i64 %79, i64* %4, align 8
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %4, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %84)
  %86 = call i32 @memset(%struct.TYPE_15__* %3, i32 0, i32 64)
  %87 = load i32*, i32** %1, align 8
  %88 = call i64 @IHlinkBrowseContext_GetBrowseWindowInfo(i32* %87, %struct.TYPE_15__* %3)
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @S_OK, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %4, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %93)
  %95 = call i32 @memcmp(%struct.TYPE_15__* %2, %struct.TYPE_15__* %3, i32 64)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @IHlinkBrowseContext_Release(i32* %100)
  ret void
}

declare dso_local i64 @HlinkCreateBrowseContext(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IHlinkBrowseContext_GetBrowseWindowInfo(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @IHlinkBrowseContext_SetBrowseWindowInfo(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @memcmp(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @IHlinkBrowseContext_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
