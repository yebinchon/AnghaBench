; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_ExcludeClipRect.c_Test_ExcludeClipRect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_ExcludeClipRect.c_Test_ExcludeClipRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"CreateCompatibleDC failed, skipping tests.\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@NULLREGION = common dso_local global i32 0, align 4
@CLIPRGN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@COMPLEXREGION = common dso_local global i32 0, align 4
@RGN_COPY = common dso_local global i32 0, align 4
@SIMPLEREGION = common dso_local global i32 0, align 4
@RGN_XOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_ExcludeClipRect() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* @CreateCompatibleDC(i32* null)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %192

12:                                               ; preds = %0
  %13 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %13, i32** %3, align 8
  %14 = call i32 @SetLastError(i32 74565)
  %15 = call i32 @ExcludeClipRect(i32* null, i32 0, i32 0, i32 0, i32 0)
  %16 = load i32, i32* @ERROR, align 4
  %17 = call i32 @ok_int(i32 %15, i32 %16)
  %18 = call i32 (...) @GetLastError()
  %19 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %20 = call i32 @ok_int(i32 %18, i32 %19)
  %21 = call i32 @SetLastError(i32 74565)
  %22 = call i32 @ExcludeClipRect(i32* inttoptr (i64 74565 to i32*), i32 0, i32 0, i32 0, i32 0)
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 @ok_int(i32 %22, i32 %23)
  %25 = call i32 (...) @GetLastError()
  %26 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %27 = call i32 @ok_int(i32 %25, i32 %26)
  %28 = call i32 @SetLastError(i32 74565)
  %29 = call i32* @CreateRectRgn(i32 10, i32 10, i32 20, i32 30)
  store i32* %29, i32** %2, align 8
  %30 = load i32*, i32** %1, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @SelectClipRgn(i32* %30, i32* %31)
  %33 = load i32, i32* @NULLREGION, align 4
  %34 = call i32 @ok_int(i32 %32, i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @CLIPRGN, align 4
  %38 = call i32 @GetRandomRgn(i32* %35, i32* %36, i32 %37)
  %39 = call i32 @ok_int(i32 %38, i32 1)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @EqualRgn(i32* %40, i32* %41)
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i32 @ok_int(i32 %42, i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @ExcludeClipRect(i32* %45, i32 0, i32 0, i32 1, i32 1)
  %47 = load i32, i32* @COMPLEXREGION, align 4
  %48 = call i32 @ok_int(i32 %46, i32 %47)
  %49 = load i32*, i32** %1, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @CLIPRGN, align 4
  %52 = call i32 @GetRandomRgn(i32* %49, i32* %50, i32 %51)
  %53 = call i32 @ok_int(i32 %52, i32 1)
  %54 = load i32*, i32** %2, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @EqualRgn(i32* %54, i32* %55)
  %57 = load i32, i32* @TRUE, align 4
  %58 = call i32 @ok_int(i32 %56, i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @ExcludeClipRect(i32* %59, i32 0, i32 0, i32 13, i32 50)
  %61 = load i32, i32* @COMPLEXREGION, align 4
  %62 = call i32 @ok_int(i32 %60, i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* @CLIPRGN, align 4
  %66 = call i32 @GetRandomRgn(i32* %63, i32* %64, i32 %65)
  %67 = call i32 @ok_int(i32 %66, i32 1)
  %68 = load i32*, i32** %2, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @RGN_COPY, align 4
  %71 = call i32 @CombineRgn(i32* %68, i32* %69, i32* null, i32 %70)
  %72 = load i32, i32* @SIMPLEREGION, align 4
  %73 = call i32 @ok_int(i32 %71, i32 %72)
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @ExcludeClipRect(i32* %74, i32 0, i32 0, i32 15, i32 15)
  %76 = load i32, i32* @COMPLEXREGION, align 4
  %77 = call i32 @ok_int(i32 %75, i32 %76)
  %78 = load i32*, i32** %1, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* @CLIPRGN, align 4
  %81 = call i32 @GetRandomRgn(i32* %78, i32* %79, i32 %80)
  %82 = call i32 @ok_int(i32 %81, i32 1)
  %83 = load i32*, i32** %2, align 8
  %84 = load i32*, i32** %3, align 8
  %85 = load i32, i32* @RGN_COPY, align 4
  %86 = call i32 @CombineRgn(i32* %83, i32* %84, i32* null, i32 %85)
  %87 = load i32, i32* @COMPLEXREGION, align 4
  %88 = call i32 @ok_int(i32 %86, i32 %87)
  %89 = load i32*, i32** %1, align 8
  %90 = call i32 @ExcludeClipRect(i32* %89, i32 0, i32 0, i32 100, i32 100)
  %91 = load i32, i32* @NULLREGION, align 4
  %92 = call i32 @ok_int(i32 %90, i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = load i32*, i32** %3, align 8
  %95 = load i32, i32* @CLIPRGN, align 4
  %96 = call i32 @GetRandomRgn(i32* %93, i32* %94, i32 %95)
  %97 = call i32 @ok_int(i32 %96, i32 1)
  %98 = load i32*, i32** %2, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* @RGN_COPY, align 4
  %101 = call i32 @CombineRgn(i32* %98, i32* %99, i32* null, i32 %100)
  %102 = load i32, i32* @NULLREGION, align 4
  %103 = call i32 @ok_int(i32 %101, i32 %102)
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 @SelectClipRgn(i32* %104, i32* null)
  %106 = load i32, i32* @SIMPLEREGION, align 4
  %107 = call i32 @ok_int(i32 %105, i32 %106)
  %108 = load i32*, i32** %1, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* @CLIPRGN, align 4
  %111 = call i32 @GetRandomRgn(i32* %108, i32* %109, i32 %110)
  %112 = call i32 @ok_int(i32 %111, i32 0)
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @ExcludeClipRect(i32* %113, i32 0, i32 0, i32 1, i32 1)
  %115 = load i32, i32* @NULLREGION, align 4
  %116 = call i32 @ok_int(i32 %114, i32 %115)
  %117 = load i32*, i32** %1, align 8
  %118 = load i32*, i32** %3, align 8
  %119 = load i32, i32* @CLIPRGN, align 4
  %120 = call i32 @GetRandomRgn(i32* %117, i32* %118, i32 %119)
  %121 = call i32 @ok_int(i32 %120, i32 1)
  %122 = load i32*, i32** %2, align 8
  %123 = load i32*, i32** %3, align 8
  %124 = load i32, i32* @RGN_COPY, align 4
  %125 = call i32 @CombineRgn(i32* %122, i32* %123, i32* null, i32 %124)
  %126 = load i32, i32* @NULLREGION, align 4
  %127 = call i32 @ok_int(i32 %125, i32 %126)
  %128 = load i32*, i32** %1, align 8
  %129 = call i32 @SelectClipRgn(i32* %128, i32* null)
  %130 = load i32, i32* @SIMPLEREGION, align 4
  %131 = call i32 @ok_int(i32 %129, i32 %130)
  %132 = load i32*, i32** %1, align 8
  %133 = call i32 @ExcludeClipRect(i32* %132, i32 -10, i32 -10, i32 0, i32 0)
  %134 = load i32, i32* @COMPLEXREGION, align 4
  %135 = call i32 @ok_int(i32 %133, i32 %134)
  %136 = load i32*, i32** %1, align 8
  %137 = load i32*, i32** %3, align 8
  %138 = load i32, i32* @CLIPRGN, align 4
  %139 = call i32 @GetRandomRgn(i32* %136, i32* %137, i32 %138)
  %140 = call i32 @ok_int(i32 %139, i32 1)
  %141 = call i32* @CreateRectRgn(i32 0, i32 0, i32 1, i32 1)
  store i32* %141, i32** %2, align 8
  %142 = load i32*, i32** %3, align 8
  %143 = load i32*, i32** %3, align 8
  %144 = load i32*, i32** %2, align 8
  %145 = load i32, i32* @RGN_XOR, align 4
  %146 = call i32 @CombineRgn(i32* %142, i32* %143, i32* %144, i32 %145)
  %147 = load i32, i32* @NULLREGION, align 4
  %148 = call i32 @ok_int(i32 %146, i32 %147)
  %149 = load i32*, i32** %1, align 8
  %150 = call i32 @SelectClipRgn(i32* %149, i32* null)
  %151 = load i32, i32* @SIMPLEREGION, align 4
  %152 = call i32 @ok_int(i32 %150, i32 %151)
  %153 = load i32*, i32** %1, align 8
  %154 = call i32 @ExcludeClipRect(i32* %153, i32 100000, i32 100000, i32 100010, i32 100010)
  %155 = load i32, i32* @COMPLEXREGION, align 4
  %156 = call i32 @ok_int(i32 %154, i32 %155)
  %157 = load i32*, i32** %1, align 8
  %158 = load i32*, i32** %3, align 8
  %159 = load i32, i32* @CLIPRGN, align 4
  %160 = call i32 @GetRandomRgn(i32* %157, i32* %158, i32 %159)
  %161 = call i32 @ok_int(i32 %160, i32 1)
  %162 = call i32* @CreateRectRgn(i32 0, i32 0, i32 1, i32 1)
  store i32* %162, i32** %2, align 8
  %163 = load i32*, i32** %2, align 8
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @EqualRgn(i32* %163, i32* %164)
  %166 = load i32, i32* @TRUE, align 4
  %167 = call i32 @ok_int(i32 %165, i32 %166)
  %168 = load i32*, i32** %2, align 8
  %169 = call i32 @DeleteObject(i32* %168)
  %170 = load i32*, i32** %1, align 8
  %171 = call i32 @SelectClipRgn(i32* %170, i32* null)
  %172 = load i32, i32* @SIMPLEREGION, align 4
  %173 = call i32 @ok_int(i32 %171, i32 %172)
  %174 = load i32*, i32** %1, align 8
  %175 = call i32 @ExcludeClipRect(i32* %174, i32 1, i32 1, i32 -10, i32 -20)
  %176 = load i32, i32* @NULLREGION, align 4
  %177 = call i32 @ok_int(i32 %175, i32 %176)
  %178 = load i32*, i32** %1, align 8
  %179 = load i32*, i32** %3, align 8
  %180 = load i32, i32* @CLIPRGN, align 4
  %181 = call i32 @GetRandomRgn(i32* %178, i32* %179, i32 %180)
  %182 = call i32 @ok_int(i32 %181, i32 1)
  %183 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %183, i32** %2, align 8
  %184 = load i32*, i32** %2, align 8
  %185 = load i32*, i32** %3, align 8
  %186 = load i32, i32* @RGN_COPY, align 4
  %187 = call i32 @CombineRgn(i32* %184, i32* %185, i32* null, i32 %186)
  %188 = load i32, i32* @NULLREGION, align 4
  %189 = call i32 @ok_int(i32 %187, i32 %188)
  %190 = call i32 (...) @GetLastError()
  %191 = call i32 @ok_int(i32 %190, i32 74565)
  br label %192

192:                                              ; preds = %12, %11
  ret void
}

declare dso_local i32* @CreateCompatibleDC(i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @ExcludeClipRect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SelectClipRgn(i32*, i32*) #1

declare dso_local i32 @GetRandomRgn(i32*, i32*, i32) #1

declare dso_local i32 @EqualRgn(i32*, i32*) #1

declare dso_local i32 @CombineRgn(i32*, i32*, i32*, i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
