; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_CreateCompatibleDC.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_CreateCompatibleDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ENUM_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"EnumDisplaySettingsEx failed\0A\00", align 1
@DM_SCALE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"display dc\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"CreateCompatibleDC returned %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"SelectObject failed\0A\00", align 1
@TECHNOLOGY = common dso_local global i32 0, align 4
@DT_RASDISPLAY = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"wrong caps %u\0A\00", align 1
@TRUE = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"DeleteDC returned %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"CreateEnhMetaFileA failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"CreateCompatibleDC failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"enhmetafile dc\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"CreateCompatibleDC succeeded\0A\00", align 1
@DT_METAFILE = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"metafile dc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateCompatibleDC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateCompatibleDC() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = call i32 @CreateBitmap(i32 10, i32 10, i32 1, i32 1, i32* null)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @ENUM_CURRENT_SETTINGS, align 4
  %11 = call i32* @EnumDisplaySettingsA(i32* null, i32 %10, %struct.TYPE_9__* %8)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 200, i32* %17, align 4
  %18 = load i32, i32* @DM_SCALE, align 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = call i32* @CreateDCA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, %struct.TYPE_9__* %8)
  store i32* %22, i32** %2, align 8
  %23 = call i32* @CreateDCA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, %struct.TYPE_9__* null)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @test_device_caps(i32* %24, i32* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @ResetDCA(i32* %27, %struct.TYPE_9__* %8)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @test_device_caps(i32* %29, i32* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32* @DeleteDC(i32* %32)
  %34 = call i32* @CreateCompatibleDC(i32* null)
  store i32* %34, i32** %2, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @SelectObject(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @TECHNOLOGY, align 4
  %48 = call i32* @GetDeviceCaps(i32* %46, i32 %47)
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** @DT_RASDISPLAY, align 8
  %51 = icmp eq i32* %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %53)
  %55 = load i32*, i32** %2, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @test_device_caps(i32* %55, i32* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32* @DeleteDC(i32* %58)
  store i32* %59, i32** %1, align 8
  %60 = load i32*, i32** %1, align 8
  %61 = load i32*, i32** @TRUE, align 8
  %62 = icmp eq i32* %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32* %64)
  %66 = load i32*, i32** %2, align 8
  %67 = call i32* @CreateCompatibleDC(i32* %66)
  store i32* %67, i32** %3, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = icmp eq i32* %68, null
  %70 = zext i1 %69 to i32
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32* %71)
  %73 = call i32* @GetDC(i32 0)
  store i32* %73, i32** %2, align 8
  %74 = load i32*, i32** %2, align 8
  %75 = call i32* @CreateEnhMetaFileA(i32* %74, i32* null, i32* null, i32* null)
  store i32* %75, i32** %4, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = icmp ne i32* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %80 = load i32*, i32** %4, align 8
  %81 = call i32* @CreateCompatibleDC(i32* %80)
  store i32* %81, i32** %3, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = icmp ne i32* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i64 @SelectObject(i32* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* @TECHNOLOGY, align 4
  %94 = call i32* @GetDeviceCaps(i32* %92, i32 %93)
  store i32* %94, i32** %7, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32*, i32** @DT_RASDISPLAY, align 8
  %97 = icmp eq i32* %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %99)
  %101 = load i32*, i32** %4, align 8
  %102 = load i32*, i32** %2, align 8
  %103 = call i32 @test_device_caps(i32* %101, i32* %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @ResetDCA(i32* %104, %struct.TYPE_9__* %8)
  %106 = load i32*, i32** %4, align 8
  %107 = load i32*, i32** %2, align 8
  %108 = call i32 @test_device_caps(i32* %106, i32* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %109 = load i32*, i32** %3, align 8
  %110 = call i32* @DeleteDC(i32* %109)
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @CloseEnhMetaFile(i32* %111)
  %113 = call i32 @DeleteEnhMetaFile(i32 %112)
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @ReleaseDC(i32 0, i32* %114)
  %116 = call i32* @CreateMetaFileA(i32* null)
  store i32* %116, i32** %4, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = icmp ne i32* %117, null
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %121 = load i32*, i32** %4, align 8
  %122 = call i32* @CreateCompatibleDC(i32* %121)
  store i32* %122, i32** %3, align 8
  %123 = load i32*, i32** %3, align 8
  %124 = icmp eq i32* %123, null
  %125 = zext i1 %124 to i32
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* @TECHNOLOGY, align 4
  %129 = call i32* @GetDeviceCaps(i32* %127, i32 %128)
  store i32* %129, i32** %7, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load i32*, i32** @DT_METAFILE, align 8
  %132 = icmp eq i32* %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %134)
  %136 = load i32*, i32** %4, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @test_device_caps(i32* %136, i32* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @ResetDCA(i32* %139, %struct.TYPE_9__* %8)
  %141 = load i32*, i32** %4, align 8
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @test_device_caps(i32* %141, i32* %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 1)
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @CloseMetaFile(i32* %144)
  %146 = call i32 @DeleteMetaFile(i32 %145)
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @DeleteObject(i32 %147)
  %149 = load i32*, i32** %5, align 8
  %150 = call i32* @DeleteDC(i32* %149)
  ret void
}

declare dso_local i32 @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i32* @EnumDisplaySettingsA(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @CreateDCA(i8*, i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @test_device_caps(i32*, i32*, i8*, i32) #1

declare dso_local i32 @ResetDCA(i32*, %struct.TYPE_9__*) #1

declare dso_local i32* @DeleteDC(i32*) #1

declare dso_local i32* @CreateCompatibleDC(i32*) #1

declare dso_local i64 @SelectObject(i32*, i32) #1

declare dso_local i32* @GetDeviceCaps(i32*, i32) #1

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32* @CreateEnhMetaFileA(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DeleteEnhMetaFile(i32) #1

declare dso_local i32 @CloseEnhMetaFile(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

declare dso_local i32* @CreateMetaFileA(i32*) #1

declare dso_local i32 @DeleteMetaFile(i32) #1

declare dso_local i32 @CloseMetaFile(i32*) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
