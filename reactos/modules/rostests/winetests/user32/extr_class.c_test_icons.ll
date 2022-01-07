; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_class.c_test_icons.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_class.c_test_icons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i8*, i32*, i32, i32 }

@__const.test_icons.cls_name = private unnamed_addr constant [14 x i8] c"IconTestClass\00", align 1
@ClassTest_WndProc = common dso_local global i32 0, align 4
@IDI_APPLICATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"RegisterClassExW returned 0\0A\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Window was not created\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Class info was not retrieved\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Icons don't match\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"hIconSm should be non-zero handle\0A\00", align 1
@GCLP_HICONSM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"GetClassLong should return non-zero handle\0A\00", align 1
@WM_GETICON = common dso_local global i32 0, align 4
@ICON_BIG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"WM_GETICON with ICON_BIG should not return the class icon\0A\00", align 1
@ICON_SMALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [61 x i8] c"WM_GETICON with ICON_SMALL should not return the class icon\0A\00", align 1
@ICON_SMALL2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [62 x i8] c"WM_GETICON with ICON_SMALL2 should not return the class icon\0A\00", align 1
@IMAGE_ICON = common dso_local global i32 0, align 4
@SM_CXSMICON = common dso_local global i32 0, align 4
@SM_CYSMICON = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Previous hIconSm should be zero\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Should return explicitly assigned small icon\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Previous small icon should be destroyed\0A\00", align 1
@GCLP_HICON = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [40 x i8] c"GetClassLong should return zero handle\0A\00", align 1
@IDI_QUESTION = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [30 x i8] c"Icon should NOT be destroyed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_icons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_icons() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca [14 x i8], align 1
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast [14 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.test_icons.cls_name, i32 0, i32 0), i64 14, i1 false)
  %10 = call i32 @GetModuleHandleW(i32 0)
  store i32 %10, i32* %5, align 4
  %11 = call i32 @memset(%struct.TYPE_5__* %1, i32 0, i32 40)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32 40, i32* %12, align 8
  %13 = load i32, i32* @ClassTest_WndProc, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 5
  store i32 %13, i32* %14, align 4
  %15 = load i64, i64* @IDI_APPLICATION, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i64 @LoadIconW(i32* null, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = call i32 @RegisterClassExW(%struct.TYPE_5__* %1)
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %26 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32* @CreateWindowExW(i32 0, i8* %25, i32* null, i32 %26, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null, i32 %27, i32 0)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  %34 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %35 = call i32 @GetClassInfoExW(i32 %33, i8* %34, %struct.TYPE_5__* %2)
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %38, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @GCLP_HICONSM, align 4
  %51 = call i64 @GetClassLongPtrW(i32* %49, i32 %50)
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = icmp ne i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @WM_GETICON, align 4
  %59 = load i32, i32* @ICON_BIG, align 4
  %60 = call i64 @SendMessageA(i32* %57, i32 %58, i32 %59, i32 0)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @WM_GETICON, align 4
  %66 = load i32, i32* @ICON_SMALL, align 4
  %67 = call i64 @SendMessageA(i32* %64, i32 %65, i32 %66, i32 0)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @WM_GETICON, align 4
  %73 = load i32, i32* @ICON_SMALL2, align 4
  %74 = call i64 @SendMessageA(i32* %71, i32 %72, i32 %73, i32 0)
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @IMAGE_ICON, align 4
  %81 = load i32, i32* @SM_CXSMICON, align 4
  %82 = call i32 @GetSystemMetrics(i32 %81)
  %83 = load i32, i32* @SM_CYSMICON, align 4
  %84 = call i32 @GetSystemMetrics(i32 %83)
  %85 = call i32* @CopyImage(i64 %79, i32 %80, i32 %82, i32 %84, i32 0)
  store i32* %85, i32** %7, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* @GCLP_HICONSM, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = ptrtoint i32* %88 to i32
  %90 = call i32 @SetClassLongPtrW(i32* %86, i32 %87, i32 %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %95 = load i32*, i32** %7, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* @GCLP_HICONSM, align 4
  %98 = call i64 @GetClassLongPtrW(i32* %96, i32 %97)
  %99 = inttoptr i64 %98 to i32*
  %100 = icmp eq i32* %95, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @GetIconInfo(i32* %103, i32* %8)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* @GCLP_HICONSM, align 4
  %111 = call i32 @SetClassLongPtrW(i32* %109, i32 %110, i32 0)
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* @GCLP_HICONSM, align 4
  %114 = call i64 @GetClassLongPtrW(i32* %112, i32 %113)
  %115 = inttoptr i64 %114 to i32*
  store i32* %115, i32** %6, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = icmp ne i32* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i32 @ok(i32 %118, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* @GCLP_HICON, align 4
  %122 = call i32 @SetClassLongPtrW(i32* %120, i32 %121, i32 0)
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* @GCLP_HICONSM, align 4
  %125 = call i64 @GetClassLongPtrW(i32* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* @GCLP_HICON, align 4
  %132 = load i64, i64* @IDI_QUESTION, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i64 @LoadIconW(i32* null, i32 %133)
  %135 = trunc i64 %134 to i32
  %136 = call i32 @SetClassLongPtrW(i32* %130, i32 %131, i32 %135)
  %137 = load i32*, i32** %4, align 8
  %138 = load i32, i32* @GCLP_HICONSM, align 4
  %139 = call i64 @GetClassLongPtrW(i32* %137, i32 %138)
  %140 = inttoptr i64 %139 to i32*
  store i32* %140, i32** %6, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = icmp ne i32* %141, null
  %143 = zext i1 %142 to i32
  %144 = call i32 @ok(i32 %143, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %145 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @UnregisterClassW(i8* %145, i32 %146)
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @GetIconInfo(i32* %148, i32* %8)
  %150 = call i32 @ok(i32 %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @DestroyIcon(i32* %151)
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @DestroyWindow(i32* %153)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetModuleHandleW(i32) #2

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i64 @LoadIconW(i32*, i32) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @RegisterClassExW(%struct.TYPE_5__*) #2

declare dso_local i32* @CreateWindowExW(i32, i8*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32) #2

declare dso_local i32 @GetClassInfoExW(i32, i8*, %struct.TYPE_5__*) #2

declare dso_local i64 @GetClassLongPtrW(i32*, i32) #2

declare dso_local i64 @SendMessageA(i32*, i32, i32, i32) #2

declare dso_local i32* @CopyImage(i64, i32, i32, i32, i32) #2

declare dso_local i32 @GetSystemMetrics(i32) #2

declare dso_local i32 @SetClassLongPtrW(i32*, i32, i32) #2

declare dso_local i32 @GetIconInfo(i32*, i32*) #2

declare dso_local i32 @UnregisterClassW(i8*, i32) #2

declare dso_local i32 @DestroyIcon(i32*) #2

declare dso_local i32 @DestroyWindow(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
