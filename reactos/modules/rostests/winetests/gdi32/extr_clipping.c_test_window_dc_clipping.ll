; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_clipping.c_test_window_dc_clipping.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_clipping.c_test_window_dc_clipping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM_CXVIRTUALSCREEN = common dso_local global i32 0, align 4
@SM_CXSCREEN = common dso_local global i32 0, align 4
@SM_CYVIRTUALSCREEN = common dso_local global i32 0, align 4
@SM_CYSCREEN = common dso_local global i32 0, align 4
@SM_XVIRTUALSCREEN = common dso_local global i32 0, align 4
@SM_YVIRTUALSCREEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"screen resolution %d x %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@WS_POPUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"expected 0, got %d\0A\00", align 1
@RGN_DIFF = common dso_local global i32 0, align 4
@SIMPLEREGION = common dso_local global i32 0, align 4
@COMPLEXREGION = common dso_local global i32 0, align 4
@SM_CMONITORS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"expected SIMPLEREGION, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"expected 1, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"expected %s, got %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"RectVisible failed for %s\0A\00", align 1
@RGN_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_window_dc_clipping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_window_dc_clipping() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @SM_CXVIRTUALSCREEN, align 4
  %11 = call i32 @GetSystemMetrics(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* @SM_CXSCREEN, align 4
  %16 = call i32 @GetSystemMetrics(i32 %15)
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %14, %0
  %18 = load i32, i32* @SM_CYVIRTUALSCREEN, align 4
  %19 = call i32 @GetSystemMetrics(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @SM_CYSCREEN, align 4
  %24 = call i32 @GetSystemMetrics(i32 %23)
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* @SM_XVIRTUALSCREEN, align 4
  %27 = call i32 @GetSystemMetrics(i32 %26)
  %28 = load i32, i32* @SM_YVIRTUALSCREEN, align 4
  %29 = call i32 @GetSystemMetrics(i32 %28)
  %30 = load i32, i32* @SM_XVIRTUALSCREEN, align 4
  %31 = call i32 @GetSystemMetrics(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @SM_YVIRTUALSCREEN, align 4
  %35 = call i32 @GetSystemMetrics(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @SetRect(i32* %6, i32 %27, i32 %29, i32 %33, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* @WS_POPUP, align 4
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %43, 2
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 2
  %47 = call i32 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %42, i32 -100, i32 -100, i32 %44, i32 %46, i32 0, i32 0, i32 0, i32* null)
  store i32 %47, i32* %4, align 4
  %48 = call i32 @GetWindowDC(i32 0)
  store i32 %48, i32* %1, align 4
  %49 = call i32 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32 %49, i32* %3, align 4
  %50 = call i32 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @GetClipRgn(i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i32, i8*, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @RGN_DIFF, align 4
  %61 = call i32 @ExtSelectClipRgn(i32 %59, i32 0, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32, i8*, i32, ...) @ok(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @GetClipRgn(i32 %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i32, i8*, i32, ...) @ok(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @RGN_DIFF, align 4
  %78 = call i32 @ExtSelectClipRgn(i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @SIMPLEREGION, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %92, label %82

82:                                               ; preds = %25
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @COMPLEXREGION, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @SM_CMONITORS, align 4
  %88 = call i32 @GetSystemMetrics(i32 %87)
  %89 = icmp sgt i32 %88, 1
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i1 [ false, %82 ], [ %89, %86 ]
  br label %92

92:                                               ; preds = %90, %25
  %93 = phi i1 [ true, %25 ], [ %91, %90 ]
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i32, i8*, i32, ...) @ok(i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %1, align 4
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @GetClipRgn(i32 %97, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %100, 1
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i32, i8*, i32, ...) @ok(i32 %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @GetRgnBox(i32 %105, i32* %5)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @SIMPLEREGION, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %7, align 4
  %112 = call i32 (i32, i8*, i32, ...) @ok(i32 %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = call i32 @EqualRect(i32* %5, i32* %6)
  %114 = call i32 @wine_dbgstr_rect(i32* %6)
  %115 = call i32 @wine_dbgstr_rect(i32* %5)
  %116 = call i32 (i32, i8*, i32, ...) @ok(i32 %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %114, i32 %115)
  %117 = call i32 @SetRect(i32* %5, i32 10, i32 10, i32 20, i32 20)
  %118 = load i32, i32* %1, align 4
  %119 = call i32 @RectVisible(i32 %118, i32* %5)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @wine_dbgstr_rect(i32* %5)
  %122 = call i32 (i32, i8*, i32, ...) @ok(i32 %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  %123 = call i32 @SetRect(i32* %5, i32 20, i32 20, i32 10, i32 10)
  %124 = load i32, i32* %1, align 4
  %125 = call i32 @RectVisible(i32 %124, i32* %5)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @wine_dbgstr_rect(i32* %5)
  %128 = call i32 (i32, i8*, i32, ...) @ok(i32 %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %1, align 4
  %130 = load i32, i32* @RGN_DIFF, align 4
  %131 = call i32 @ExtSelectClipRgn(i32 %129, i32 0, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %7, align 4
  %136 = call i32 (i32, i8*, i32, ...) @ok(i32 %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %1, align 4
  %138 = load i32, i32* %2, align 4
  %139 = call i32 @GetClipRgn(i32 %137, i32 %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp eq i32 %140, 1
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %7, align 4
  %144 = call i32 (i32, i8*, i32, ...) @ok(i32 %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %2, align 4
  %146 = call i32 @GetRgnBox(i32 %145, i32* %5)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @SIMPLEREGION, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (i32, i8*, i32, ...) @ok(i32 %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  %153 = call i32 @EqualRect(i32* %5, i32* %6)
  %154 = call i32 @wine_dbgstr_rect(i32* %6)
  %155 = call i32 @wine_dbgstr_rect(i32* %5)
  %156 = call i32 (i32, i8*, i32, ...) @ok(i32 %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %154, i32 %155)
  %157 = load i32, i32* %1, align 4
  %158 = load i32, i32* @RGN_COPY, align 4
  %159 = call i32 @ExtSelectClipRgn(i32 %157, i32 0, i32 %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @SIMPLEREGION, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %173, label %163

163:                                              ; preds = %92
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @COMPLEXREGION, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i32, i32* @SM_CMONITORS, align 4
  %169 = call i32 @GetSystemMetrics(i32 %168)
  %170 = icmp sgt i32 %169, 1
  br label %171

171:                                              ; preds = %167, %163
  %172 = phi i1 [ false, %163 ], [ %170, %167 ]
  br label %173

173:                                              ; preds = %171, %92
  %174 = phi i1 [ true, %92 ], [ %172, %171 ]
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* %7, align 4
  %177 = call i32 (i32, i8*, i32, ...) @ok(i32 %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %1, align 4
  %179 = load i32, i32* %2, align 4
  %180 = call i32 @GetClipRgn(i32 %178, i32 %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp eq i32 %181, 0
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %7, align 4
  %185 = call i32 (i32, i8*, i32, ...) @ok(i32 %183, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %1, align 4
  %187 = call i32 @DeleteDC(i32 %186)
  %188 = load i32, i32* %2, align 4
  %189 = call i32 @DeleteObject(i32 %188)
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @DeleteObject(i32 %190)
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @DestroyWindow(i32 %192)
  ret void
}

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @SetRect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @trace(i8*, i32, i32) #1

declare dso_local i32 @CreateWindowExA(i32, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GetWindowDC(i32) #1

declare dso_local i32 @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @GetClipRgn(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @ExtSelectClipRgn(i32, i32, i32) #1

declare dso_local i32 @GetRgnBox(i32, i32*) #1

declare dso_local i32 @EqualRect(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_rect(i32*) #1

declare dso_local i32 @RectVisible(i32, i32*) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
