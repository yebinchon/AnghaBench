; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_OffsetClipRgn.c_Test_OffsetClipRgn.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_OffsetClipRgn.c_Test_OffsetClipRgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"CreateCompatibleDC failed, skipping tests.\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Expected 0x12345 or ERROR_INVALID_HANDLE, got %ld\0A\00", align 1
@SIMPLEREGION = common dso_local global i32 0, align 4
@NULLREGION = common dso_local global i32 0, align 4
@CLIPRGN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MM_ANISOTROPIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_OffsetClipRgn() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* @CreateCompatibleDC(i32* null)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %98

12:                                               ; preds = %0
  %13 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %13, i32** %3, align 8
  %14 = call i32 @SetLastError(i32 74565)
  %15 = call i32 @OffsetClipRgn(i32* null, i32 0, i32 0)
  %16 = load i32, i32* @ERROR, align 4
  %17 = call i32 @ok_int(i32 %15, i32 %16)
  %18 = call i32 (...) @GetLastError()
  %19 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %20 = call i32 @ok_int(i32 %18, i32 %19)
  %21 = call i32 @SetLastError(i32 74565)
  %22 = call i32 @OffsetClipRgn(i32* inttoptr (i64 74565 to i32*), i32 0, i32 0)
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 @ok_int(i32 %22, i32 %23)
  %25 = call i32 (...) @GetLastError()
  %26 = icmp eq i32 %25, 74565
  br i1 %26, label %31, label %27

27:                                               ; preds = %12
  %28 = call i32 (...) @GetLastError()
  %29 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %30 = icmp eq i32 %28, %29
  br label %31

31:                                               ; preds = %27, %12
  %32 = phi i1 [ true, %12 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = call i32 @SetLastError(i32 74565)
  %37 = call i32 @SetLastError(i32 74565)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @SelectClipRgn(i32* %38, i32* null)
  %40 = load i32, i32* @SIMPLEREGION, align 4
  %41 = call i32 @ok_int(i32 %39, i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @OffsetClipRgn(i32* %42, i32 0, i32 0)
  %44 = load i32, i32* @SIMPLEREGION, align 4
  %45 = call i32 @ok_int(i32 %43, i32 %44)
  %46 = call i32 (...) @GetLastError()
  %47 = call i32 @ok_int(i32 %46, i32 74565)
  %48 = call i32 @SetLastError(i32 74565)
  %49 = call i32* @CreateRectRgn(i32 10, i32 10, i32 20, i32 30)
  store i32* %49, i32** %2, align 8
  %50 = load i32*, i32** %1, align 8
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @SelectClipRgn(i32* %50, i32* %51)
  %53 = load i32, i32* @NULLREGION, align 4
  %54 = call i32 @ok_int(i32 %52, i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @DeleteObject(i32* %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @OffsetClipRgn(i32* %57, i32 10, i32 10)
  %59 = load i32, i32* @SIMPLEREGION, align 4
  %60 = call i32 @ok_int(i32 %58, i32 %59)
  %61 = load i32*, i32** %1, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @CLIPRGN, align 4
  %64 = call i32 @GetRandomRgn(i32* %61, i32* %62, i32 %63)
  %65 = call i32 @ok_int(i32 %64, i32 1)
  %66 = call i32* @CreateRectRgn(i32 20, i32 20, i32 30, i32 40)
  store i32* %66, i32** %2, align 8
  %67 = load i32*, i32** %2, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @EqualRgn(i32* %67, i32* %68)
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32 @ok_int(i32 %69, i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = load i32, i32* @MM_ANISOTROPIC, align 4
  %74 = call i32 @SetMapMode(i32* %72, i32 %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @SetViewportExtEx(i32* %75, i32 100, i32 100, i32* null)
  %77 = call i32 @ok_int(i32 %76, i32 1)
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @SetWindowExtEx(i32* %78, i32 200, i32 50, i32* null)
  %80 = call i32 @ok_int(i32 %79, i32 1)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @OffsetClipRgn(i32* %81, i32 10, i32 10)
  %83 = load i32, i32* @SIMPLEREGION, align 4
  %84 = call i32 @ok_int(i32 %82, i32 %83)
  %85 = load i32*, i32** %1, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @CLIPRGN, align 4
  %88 = call i32 @GetRandomRgn(i32* %85, i32* %86, i32 %87)
  %89 = call i32 @ok_int(i32 %88, i32 1)
  %90 = call i32* @CreateRectRgn(i32 25, i32 40, i32 35, i32 60)
  store i32* %90, i32** %2, align 8
  %91 = load i32*, i32** %2, align 8
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @EqualRgn(i32* %91, i32* %92)
  %94 = load i32, i32* @TRUE, align 4
  %95 = call i32 @ok_int(i32 %93, i32 %94)
  %96 = call i32 (...) @GetLastError()
  %97 = call i32 @ok_int(i32 %96, i32 74565)
  br label %98

98:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32* @CreateCompatibleDC(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @OffsetClipRgn(i32*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SelectClipRgn(i32*, i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @GetRandomRgn(i32*, i32*, i32) #1

declare dso_local i32 @EqualRgn(i32*, i32*) #1

declare dso_local i32 @SetMapMode(i32*, i32) #1

declare dso_local i32 @SetViewportExtEx(i32*, i32, i32, i32*) #1

declare dso_local i32 @SetWindowExtEx(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
