; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_mapping.c_test_setvirtualresolution.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_mapping.c_test_setvirtualresolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@HORZRES = common dso_local global i32 0, align 4
@HORZSIZE = common dso_local global i32 0, align 4
@LOGPIXELSX = common dso_local global i32 0, align 4
@MM_LOMETRIC = common dso_local global i32 0, align 4
@MM_TEXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"horz_res changed\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"horz_size changed\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"log_pixels_x changed\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_setvirtualresolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_setvirtualresolution() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = call i32 @CreateICA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @HORZRES, align 4
  %11 = call i64 @GetDeviceCaps(i32 %9, i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @HORZSIZE, align 4
  %14 = call i64 @GetDeviceCaps(i32 %12, i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @LOGPIXELSX, align 4
  %17 = call i64 @GetDeviceCaps(i32 %15, i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @MM_LOMETRIC, align 4
  %20 = call i32 @SetMapMode(i32 %18, i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @GetViewportExtEx(i32 %21, %struct.TYPE_4__* %6)
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @GetWindowExtEx(i32 %23, %struct.TYPE_4__* %7)
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @MM_TEXT, align 4
  %27 = call i32 @SetMapMode(i32 %25, i32 %26)
  %28 = load i32, i32* %1, align 4
  %29 = call i64 @pSetVirtualResolution(i32 %28, i32 4000, i32 1000, i32 400, i32 200)
  store i64 %29, i64* %2, align 8
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @TRUE, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %2, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @expect_LPtoDP(i32 %36, i32 1000, i32 1000)
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @expect_viewport_ext(i32 %38, i32 1, i32 1)
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @expect_window_ext(i32 %40, i32 1, i32 1)
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @MM_LOMETRIC, align 4
  %44 = call i32 @SetMapMode(i32 %42, i32 %43)
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @expect_LPtoDP(i32 %45, i32 1000, i32 -500)
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @expect_viewport_ext(i32 %47, i32 4000, i32 -1000)
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @expect_window_ext(i32 %49, i32 4000, i32 2000)
  %51 = load i64, i64* %3, align 8
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* @HORZRES, align 4
  %54 = call i64 @GetDeviceCaps(i32 %52, i32 %53)
  %55 = icmp eq i64 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i64, i64* %4, align 8
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @HORZSIZE, align 4
  %61 = call i64 @GetDeviceCaps(i32 %59, i32 %60)
  %62 = icmp eq i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @LOGPIXELSX, align 4
  %68 = call i64 @GetDeviceCaps(i32 %66, i32 %67)
  %69 = icmp eq i64 %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* %1, align 4
  %73 = call i64 @pSetVirtualResolution(i32 %72, i32 8000, i32 1000, i32 400, i32 200)
  store i64 %73, i64* %2, align 8
  %74 = load i64, i64* %2, align 8
  %75 = load i64, i64* @TRUE, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %2, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* %1, align 4
  %81 = call i32 @expect_LPtoDP(i32 %80, i32 1000, i32 -500)
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* @MM_TEXT, align 4
  %84 = call i32 @SetMapMode(i32 %82, i32 %83)
  %85 = load i32, i32* %1, align 4
  %86 = load i32, i32* @MM_LOMETRIC, align 4
  %87 = call i32 @SetMapMode(i32 %85, i32 %86)
  %88 = load i32, i32* %1, align 4
  %89 = call i32 @expect_LPtoDP(i32 %88, i32 2000, i32 -500)
  %90 = load i32, i32* %1, align 4
  %91 = call i32 @expect_viewport_ext(i32 %90, i32 8000, i32 -1000)
  %92 = load i32, i32* %1, align 4
  %93 = call i32 @expect_window_ext(i32 %92, i32 4000, i32 2000)
  %94 = load i32, i32* %1, align 4
  %95 = call i64 @pSetVirtualResolution(i32 %94, i32 8000, i32 1000, i32 200, i32 200)
  store i64 %95, i64* %2, align 8
  %96 = load i64, i64* %2, align 8
  %97 = load i64, i64* @TRUE, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i64, i64* %2, align 8
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %100)
  %102 = load i32, i32* %1, align 4
  %103 = load i32, i32* @MM_TEXT, align 4
  %104 = call i32 @SetMapMode(i32 %102, i32 %103)
  %105 = load i32, i32* %1, align 4
  %106 = load i32, i32* @MM_LOMETRIC, align 4
  %107 = call i32 @SetMapMode(i32 %105, i32 %106)
  %108 = load i32, i32* %1, align 4
  %109 = call i32 @expect_LPtoDP(i32 %108, i32 4000, i32 -500)
  %110 = load i32, i32* %1, align 4
  %111 = call i32 @expect_viewport_ext(i32 %110, i32 8000, i32 -1000)
  %112 = load i32, i32* %1, align 4
  %113 = call i32 @expect_window_ext(i32 %112, i32 2000, i32 2000)
  %114 = load i32, i32* %1, align 4
  %115 = call i64 @pSetVirtualResolution(i32 %114, i32 8000, i32 1000, i32 200, i32 200)
  store i64 %115, i64* %2, align 8
  %116 = load i64, i64* %2, align 8
  %117 = load i64, i64* @TRUE, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %2, align 8
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %120)
  %122 = load i32, i32* %1, align 4
  %123 = load i32, i32* @MM_TEXT, align 4
  %124 = call i32 @SetMapMode(i32 %122, i32 %123)
  %125 = load i32, i32* %1, align 4
  %126 = load i32, i32* @MM_LOMETRIC, align 4
  %127 = call i32 @SetMapMode(i32 %125, i32 %126)
  %128 = load i32, i32* %1, align 4
  %129 = call i32 @expect_LPtoDP(i32 %128, i32 4000, i32 -500)
  %130 = load i32, i32* %1, align 4
  %131 = call i32 @expect_viewport_ext(i32 %130, i32 8000, i32 -1000)
  %132 = load i32, i32* %1, align 4
  %133 = call i32 @expect_window_ext(i32 %132, i32 2000, i32 2000)
  %134 = load i32, i32* %1, align 4
  %135 = call i64 @pSetVirtualResolution(i32 %134, i32 8000, i32 2000, i32 200, i32 200)
  store i64 %135, i64* %2, align 8
  %136 = load i64, i64* %2, align 8
  %137 = load i64, i64* @TRUE, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i64, i64* %2, align 8
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %140)
  %142 = load i32, i32* %1, align 4
  %143 = load i32, i32* @MM_TEXT, align 4
  %144 = call i32 @SetMapMode(i32 %142, i32 %143)
  %145 = load i32, i32* %1, align 4
  %146 = load i32, i32* @MM_LOMETRIC, align 4
  %147 = call i32 @SetMapMode(i32 %145, i32 %146)
  %148 = load i32, i32* %1, align 4
  %149 = call i32 @expect_LPtoDP(i32 %148, i32 4000, i32 -1000)
  %150 = load i32, i32* %1, align 4
  %151 = call i32 @expect_viewport_ext(i32 %150, i32 8000, i32 -2000)
  %152 = load i32, i32* %1, align 4
  %153 = call i32 @expect_window_ext(i32 %152, i32 2000, i32 2000)
  %154 = load i32, i32* %1, align 4
  %155 = call i64 @pSetVirtualResolution(i32 %154, i32 0, i32 0, i32 10, i32 0)
  store i64 %155, i64* %2, align 8
  %156 = load i64, i64* %2, align 8
  %157 = load i64, i64* @FALSE, align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i64, i64* %2, align 8
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %160)
  %162 = load i32, i32* %1, align 4
  %163 = load i32, i32* @MM_TEXT, align 4
  %164 = call i32 @SetMapMode(i32 %162, i32 %163)
  %165 = load i32, i32* %1, align 4
  %166 = load i32, i32* @MM_LOMETRIC, align 4
  %167 = call i32 @SetMapMode(i32 %165, i32 %166)
  %168 = load i32, i32* %1, align 4
  %169 = call i32 @expect_LPtoDP(i32 %168, i32 4000, i32 -1000)
  %170 = load i32, i32* %1, align 4
  %171 = call i32 @expect_viewport_ext(i32 %170, i32 8000, i32 -2000)
  %172 = load i32, i32* %1, align 4
  %173 = call i32 @expect_window_ext(i32 %172, i32 2000, i32 2000)
  %174 = load i32, i32* %1, align 4
  %175 = call i64 @pSetVirtualResolution(i32 %174, i32 0, i32 0, i32 0, i32 0)
  store i64 %175, i64* %2, align 8
  %176 = load i64, i64* %2, align 8
  %177 = load i64, i64* @TRUE, align 8
  %178 = icmp eq i64 %176, %177
  %179 = zext i1 %178 to i32
  %180 = load i64, i64* %2, align 8
  %181 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %180)
  %182 = load i32, i32* %1, align 4
  %183 = load i32, i32* @MM_TEXT, align 4
  %184 = call i32 @SetMapMode(i32 %182, i32 %183)
  %185 = load i32, i32* %1, align 4
  %186 = load i32, i32* @MM_LOMETRIC, align 4
  %187 = call i32 @SetMapMode(i32 %185, i32 %186)
  %188 = load i32, i32* %1, align 4
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @expect_viewport_ext(i32 %188, i32 %190, i32 %192)
  %194 = load i32, i32* %1, align 4
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @expect_window_ext(i32 %194, i32 %196, i32 %198)
  %200 = load i32, i32* %1, align 4
  %201 = call i32 @DeleteDC(i32 %200)
  ret void
}

declare dso_local i32 @CreateICA(i8*, i32*, i32*, i32*) #1

declare dso_local i64 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @SetMapMode(i32, i32) #1

declare dso_local i32 @GetViewportExtEx(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @GetWindowExtEx(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @pSetVirtualResolution(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @expect_LPtoDP(i32, i32, i32) #1

declare dso_local i32 @expect_viewport_ext(i32, i32, i32) #1

declare dso_local i32 @expect_window_ext(i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
