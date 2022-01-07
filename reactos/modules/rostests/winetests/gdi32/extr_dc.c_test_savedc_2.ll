; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_savedc_2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_savedc_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@WS_POPUP = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"GetDC failed\0A\00", align 1
@SIMPLEREGION = common dso_local global i32 0, align 4
@COMPLEXREGION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"GetClipBox returned %d instead of SIMPLEREGION\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"GetClipRgn returned %d instead of 0\0A\00", align 1
@NULLREGION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"GetRgnBox returned %d %s instead of NULLREGION\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"rects are not equal: %s - %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ret = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"Windows BUG: IntersectClipRect returned %d instead of SIMPLEREGION\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"GetClipRgn returned %d instead of 1\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"IntersectClipRect returned %d instead of SIMPLEREGION\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_savedc_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_savedc_2() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @WS_POPUP, align 4
  %8 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 0, i32 0, i32 100, i32 100, i32 0, i32 0, i32 0, i32* null)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %1, align 8
  %14 = load i32, i32* @SW_SHOW, align 4
  %15 = call i32 @ShowWindow(i64 %13, i32 %14)
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @UpdateWindow(i64 %16)
  %18 = call i64 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %1, align 8
  %24 = call i32* @GetDC(i64 %23)
  store i32* %24, i32** %2, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @GetClipBox(i32* %29, i32* %5)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SIMPLEREGION, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %0
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @COMPLEXREGION, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @broken(i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %34, %0
  %42 = phi i1 [ true, %0 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @GetClipRgn(i32* %46, i64 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @GetRgnBox(i64 %54, i32* %4)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @NULLREGION, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @wine_dbgstr_rect(i32* %4)
  %62 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %60, i32 %61)
  %63 = call i32 @SetRect(i32* %4, i32 0, i32 0, i32 100, i32 100)
  %64 = call i32 @EqualRect(i32* %4, i32* %5)
  %65 = call i32 @wine_dbgstr_rect(i32* %4)
  %66 = call i32 @wine_dbgstr_rect(i32* %5)
  %67 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @SaveDC(i32* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @IntersectClipRect(i32* %75, i32 0, i32 0, i32 50, i32 50)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @COMPLEXREGION, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %41
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @trace(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %2, align 8
  %84 = load i64, i64* %3, align 8
  %85 = call i32 @GetClipRgn(i32* %83, i64 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 1
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %89)
  %91 = load i64, i64* %3, align 8
  %92 = call i32 @dump_region(i64 %91)
  br label %100

93:                                               ; preds = %41
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @SIMPLEREGION, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %93, %80
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @GetClipBox(i32* %101, i32* %5)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @SIMPLEREGION, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @COMPLEXREGION, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i64 @broken(i32 %110)
  %112 = icmp ne i64 %111, 0
  br label %113

113:                                              ; preds = %106, %100
  %114 = phi i1 [ true, %100 ], [ %112, %106 ]
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = call i32 @SetRect(i32* %4, i32 0, i32 0, i32 50, i32 50)
  %119 = call i32 @EqualRect(i32* %4, i32* %5)
  %120 = call i32 @wine_dbgstr_rect(i32* %4)
  %121 = call i32 @wine_dbgstr_rect(i32* %5)
  %122 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load i32*, i32** %2, align 8
  %124 = call i32 @RestoreDC(i32* %123, i32 1)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  %128 = load i32*, i32** %2, align 8
  %129 = call i32 @GetClipBox(i32* %128, i32* %5)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @SIMPLEREGION, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %140, label %133

133:                                              ; preds = %113
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @COMPLEXREGION, align 4
  %136 = icmp eq i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i64 @broken(i32 %137)
  %139 = icmp ne i64 %138, 0
  br label %140

140:                                              ; preds = %133, %113
  %141 = phi i1 [ true, %113 ], [ %139, %133 ]
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %6, align 4
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = call i32 @SetRect(i32* %4, i32 0, i32 0, i32 100, i32 100)
  %146 = call i32 @EqualRect(i32* %4, i32* %5)
  %147 = call i32 @wine_dbgstr_rect(i32* %4)
  %148 = call i32 @wine_dbgstr_rect(i32* %5)
  %149 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load i64, i64* %3, align 8
  %151 = call i32 @DeleteObject(i64 %150)
  %152 = load i64, i64* %1, align 8
  %153 = load i32*, i32** %2, align 8
  %154 = call i32 @ReleaseDC(i64 %152, i32* %153)
  %155 = load i64, i64* %1, align 8
  %156 = call i32 @DestroyWindow(i64 %155)
  ret void
}

declare dso_local i64 @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ShowWindow(i64, i32) #1

declare dso_local i32 @UpdateWindow(i64) #1

declare dso_local i64 @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32* @GetDC(i64) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetClipBox(i32*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @GetClipRgn(i32*, i64) #1

declare dso_local i32 @GetRgnBox(i64, i32*) #1

declare dso_local i32 @wine_dbgstr_rect(i32*) #1

declare dso_local i32 @SetRect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @EqualRect(i32*, i32*) #1

declare dso_local i32 @SaveDC(i32*) #1

declare dso_local i32 @IntersectClipRect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @dump_region(i64) #1

declare dso_local i32 @RestoreDC(i32*, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @ReleaseDC(i64, i32*) #1

declare dso_local i32 @DestroyWindow(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
