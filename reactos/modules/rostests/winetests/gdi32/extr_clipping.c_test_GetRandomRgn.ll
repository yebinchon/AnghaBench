; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_clipping.c_test_GetRandomRgn.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_clipping.c_test_GetRandomRgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"BUTTON\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_POPUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"CreateWindow failed\0A\00", align 1
@HWND_TOPMOST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"GetRandomRgn rets %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"GetRandomRgn %s\0A\00", align 1
@SYSRGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetRandomRgn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetRandomRgn() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = load i32, i32* @WS_VISIBLE, align 4
  %10 = load i32, i32* @WS_POPUP, align 4
  %11 = or i32 %9, %10
  %12 = call i32 (...) @GetDesktopWindow()
  %13 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 0, i32 0, i32 100, i32 100, i32 %12, i32 0, i32 0, i32 0)
  store i64 %13, i64* %1, align 8
  %14 = call i32 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32 %14, i32* %3, align 4
  %15 = load i64, i64* %1, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @SetRect(%struct.TYPE_11__* %8, i32 400, i32 300, i32 500, i32 400)
  %20 = load i64, i64* %1, align 8
  %21 = load i32, i32* @HWND_TOPMOST, align 4
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %27, %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %33, %36
  %38 = call i32 @SetWindowPos(i64 %20, i32 %21, i32 %23, i32 %25, i64 %31, i64 %37, i32 0)
  %39 = load i64, i64* %1, align 8
  %40 = call i32 @GetDC(i64 %39)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @GetRandomRgn(i32 %41, i32 %42, i32 1)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @GetRandomRgn(i32 %49, i32 %50, i32 2)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @GetRandomRgn(i32 %57, i32 %58, i32 3)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %4, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = call i32 @SetRect(%struct.TYPE_11__* %5, i32 20, i32 20, i32 80, i32 80)
  %66 = load i32, i32* %2, align 4
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @IntersectClipRect(i32 %66, i32 %68, i32 %70, i64 %72, i64 %74)
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @GetRandomRgn(i32 %76, i32 %77, i32 1)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %4, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @GetRgnBox(i32 %84, %struct.TYPE_11__* %7)
  %86 = call i32 @EqualRect(%struct.TYPE_11__* %5, %struct.TYPE_11__* %7)
  %87 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %7)
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @GetRandomRgn(i32 %89, i32 %90, i32 2)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @GetRandomRgn(i32 %97, i32 %98, i32 3)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %4, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @GetRgnBox(i32 %105, %struct.TYPE_11__* %7)
  %107 = call i32 @EqualRect(%struct.TYPE_11__* %5, %struct.TYPE_11__* %7)
  %108 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %7)
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %2, align 4
  %111 = call i32 @SetMetaRgn(i32 %110)
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @GetRandomRgn(i32 %112, i32 %113, i32 1)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %4, align 4
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @GetRandomRgn(i32 %120, i32 %121, i32 2)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %4, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @GetRgnBox(i32 %128, %struct.TYPE_11__* %7)
  %130 = call i32 @EqualRect(%struct.TYPE_11__* %5, %struct.TYPE_11__* %7)
  %131 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %7)
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @GetRandomRgn(i32 %133, i32 %134, i32 3)
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %4, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @GetRgnBox(i32 %141, %struct.TYPE_11__* %7)
  %143 = call i32 @EqualRect(%struct.TYPE_11__* %5, %struct.TYPE_11__* %7)
  %144 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %7)
  %145 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  %146 = call i32 @SetRect(%struct.TYPE_11__* %6, i32 10, i32 30, i32 70, i32 90)
  %147 = load i32, i32* %2, align 4
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @IntersectClipRect(i32 %147, i32 %149, i32 %151, i64 %153, i64 %155)
  %157 = load i32, i32* %2, align 4
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @GetRandomRgn(i32 %157, i32 %158, i32 1)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %4, align 4
  %164 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @GetRgnBox(i32 %165, %struct.TYPE_11__* %7)
  %167 = call i32 @EqualRect(%struct.TYPE_11__* %6, %struct.TYPE_11__* %7)
  %168 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %7)
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %2, align 4
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @GetRandomRgn(i32 %170, i32 %171, i32 2)
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* %4, align 4
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %3, align 4
  %179 = call i32 @GetRgnBox(i32 %178, %struct.TYPE_11__* %7)
  %180 = call i32 @EqualRect(%struct.TYPE_11__* %5, %struct.TYPE_11__* %7)
  %181 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %7)
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  %183 = call i32 @IntersectRect(%struct.TYPE_11__* %6, %struct.TYPE_11__* %5, %struct.TYPE_11__* %6)
  %184 = load i32, i32* %2, align 4
  %185 = load i32, i32* %3, align 4
  %186 = call i32 @GetRandomRgn(i32 %184, i32 %185, i32 3)
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* %4, align 4
  %191 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* %3, align 4
  %193 = call i32 @GetRgnBox(i32 %192, %struct.TYPE_11__* %7)
  %194 = call i32 @EqualRect(%struct.TYPE_11__* %6, %struct.TYPE_11__* %7)
  %195 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %7)
  %196 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %2, align 4
  %198 = load i32, i32* %3, align 4
  %199 = load i32, i32* @SYSRGN, align 4
  %200 = call i32 @GetRandomRgn(i32 %197, i32 %198, i32 %199)
  store i32 %200, i32* %4, align 4
  %201 = load i32, i32* %4, align 4
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %4, align 4
  %205 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @GetRgnBox(i32 %206, %struct.TYPE_11__* %7)
  %208 = call i32 (...) @GetVersion()
  %209 = and i32 %208, -2147483648
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %0
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 0, %213
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = sub nsw i32 0, %216
  %218 = call i32 @OffsetRect(%struct.TYPE_11__* %8, i32 %214, i32 %217)
  br label %219

219:                                              ; preds = %211, %0
  %220 = call i32 @IntersectRect(%struct.TYPE_11__* %8, %struct.TYPE_11__* %7, %struct.TYPE_11__* %7)
  %221 = call i32 @EqualRect(%struct.TYPE_11__* %8, %struct.TYPE_11__* %7)
  %222 = call i32 @wine_dbgstr_rect(%struct.TYPE_11__* %7)
  %223 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* %3, align 4
  %225 = call i32 @DeleteObject(i32 %224)
  %226 = load i64, i64* %1, align 8
  %227 = load i32, i32* %2, align 4
  %228 = call i32 @ReleaseDC(i64 %226, i32 %227)
  %229 = load i64, i64* %1, align 8
  %230 = call i32 @DestroyWindow(i64 %229)
  ret void
}

declare dso_local i64 @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetDesktopWindow(...) #1

declare dso_local i32 @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetRect(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @SetWindowPos(i64, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @GetDC(i64) #1

declare dso_local i32 @GetRandomRgn(i32, i32, i32) #1

declare dso_local i32 @IntersectClipRect(i32, i32, i32, i64, i64) #1

declare dso_local i32 @GetRgnBox(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @EqualRect(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_11__*) #1

declare dso_local i32 @SetMetaRgn(i32) #1

declare dso_local i32 @IntersectRect(%struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @GetVersion(...) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @ReleaseDC(i64, i32) #1

declare dso_local i32 @DestroyWindow(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
