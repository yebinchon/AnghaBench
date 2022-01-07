; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_clipping.c_test_memory_dc_clipping.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_clipping.c_test_memory_dc_clipping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"expected 0, got %d\0A\00", align 1
@RGN_DIFF = common dso_local global i32 0, align 4
@SIMPLEREGION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"expected SIMPLEREGION, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"expected 1, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"expected 0,0-1,1, got %s\0A\00", align 1
@RGN_COPY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"expected 0,0-100,100, got %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"RectVisible failed for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_memory_dc_clipping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_memory_dc_clipping() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  %7 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %7, i32* %1, align 4
  %8 = call i32 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32 %8, i32* %3, align 4
  %9 = call i32 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @CreateCompatibleBitmap(i32 %10, i32 100, i32 100)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @GetClipRgn(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @RGN_DIFF, align 4
  %23 = call i32 @ExtSelectClipRgn(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SIMPLEREGION, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @GetClipRgn(i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @GetRgnBox(i32 %38, %struct.TYPE_6__* %5)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SIMPLEREGION, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  br label %61

61:                                               ; preds = %57, %53, %49, %0
  %62 = phi i1 [ false, %53 ], [ false, %49 ], [ false, %0 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @wine_dbgstr_rect(%struct.TYPE_6__* %5)
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @RGN_COPY, align 4
  %68 = call i32 @ExtSelectClipRgn(i32 %66, i32 0, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @SIMPLEREGION, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @GetClipRgn(i32 %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @RGN_DIFF, align 4
  %85 = call i32 @ExtSelectClipRgn(i32 %83, i32 0, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %1, align 4
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @GetClipRgn(i32 %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %1, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @SelectObject(i32 %99, i32 %100)
  %102 = load i32, i32* %1, align 4
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @RGN_DIFF, align 4
  %105 = call i32 @ExtSelectClipRgn(i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @SIMPLEREGION, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %1, align 4
  %113 = load i32, i32* %2, align 4
  %114 = call i32 @GetClipRgn(i32 %112, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %115, 1
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %2, align 4
  %121 = call i32 @GetRgnBox(i32 %120, %struct.TYPE_6__* %5)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @SIMPLEREGION, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %61
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 100
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 100
  br label %143

143:                                              ; preds = %139, %135, %131, %61
  %144 = phi i1 [ false, %135 ], [ false, %131 ], [ false, %61 ], [ %142, %139 ]
  %145 = zext i1 %144 to i32
  %146 = call i32 @wine_dbgstr_rect(%struct.TYPE_6__* %5)
  %147 = call i32 @ok(i32 %145, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  %148 = call i32 @SetRect(%struct.TYPE_6__* %5, i32 10, i32 10, i32 20, i32 20)
  %149 = load i32, i32* %1, align 4
  %150 = call i32 @RectVisible(i32 %149, %struct.TYPE_6__* %5)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @wine_dbgstr_rect(%struct.TYPE_6__* %5)
  %153 = call i32 @ok(i32 %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %152)
  %154 = call i32 @SetRect(%struct.TYPE_6__* %5, i32 20, i32 20, i32 10, i32 10)
  %155 = load i32, i32* %1, align 4
  %156 = call i32 @RectVisible(i32 %155, %struct.TYPE_6__* %5)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @wine_dbgstr_rect(%struct.TYPE_6__* %5)
  %159 = call i32 @ok(i32 %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %1, align 4
  %161 = load i32, i32* @RGN_DIFF, align 4
  %162 = call i32 @ExtSelectClipRgn(i32 %160, i32 0, i32 %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp eq i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @ok(i32 %165, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %1, align 4
  %169 = load i32, i32* %2, align 4
  %170 = call i32 @GetClipRgn(i32 %168, i32 %169)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp eq i32 %171, 1
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @ok(i32 %173, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %2, align 4
  %177 = call i32 @GetRgnBox(i32 %176, %struct.TYPE_6__* %5)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @SIMPLEREGION, align 4
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @ok(i32 %181, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %182)
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %143
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 100
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 100
  br label %199

199:                                              ; preds = %195, %191, %187, %143
  %200 = phi i1 [ false, %191 ], [ false, %187 ], [ false, %143 ], [ %198, %195 ]
  %201 = zext i1 %200 to i32
  %202 = call i32 @wine_dbgstr_rect(%struct.TYPE_6__* %5)
  %203 = call i32 @ok(i32 %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* %1, align 4
  %205 = call i32 @DeleteDC(i32 %204)
  %206 = load i32, i32* %2, align 4
  %207 = call i32 @DeleteObject(i32 %206)
  %208 = load i32, i32* %3, align 4
  %209 = call i32 @DeleteObject(i32 %208)
  %210 = load i32, i32* %4, align 4
  %211 = call i32 @DeleteObject(i32 %210)
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32 @GetClipRgn(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @ExtSelectClipRgn(i32, i32, i32) #1

declare dso_local i32 @GetRgnBox(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_6__*) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @SetRect(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @RectVisible(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
