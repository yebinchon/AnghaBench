; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetClipBox.c_Test_GetClipBox.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetClipBox.c_Test_GetClipBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i32] [i32 66, i32 85, i32 84, i32 84, i32 79, i32 78, i32 0], align 4
@.str.1 = private unnamed_addr constant [11 x i32] [i32 84, i32 101, i32 115, i32 116, i32 87, i32 105, i32 110, i32 100, i32 111, i32 119, i32 0], align 4
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"CreateWindowW failed\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Expected ERROR, got %d\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Expected 0, got %ld\0A\00", align 1
@SIMPLEREGION = common dso_local global i32 0, align 4
@NULLREGION = common dso_local global i32 0, align 4
@RGN_OR = common dso_local global i32 0, align 4
@COMPLEXREGION = common dso_local global i32 0, align 4
@MM_ANISOTROPIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_GetClipBox() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %8 = load i32, i32* @WS_VISIBLE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CW_USEDEFAULT, align 4
  %11 = load i32, i32* @CW_USEDEFAULT, align 4
  %12 = call i32* @CreateWindowW(i8* bitcast ([7 x i32]* @.str to i8*), i8* bitcast ([11 x i32]* @.str.1 to i8*), i32 %9, i32 %10, i32 %11, i32 100, i32 100, i32* null, i32* null, i32 0, i32 0)
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32*, i32** %1, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  br label %175

20:                                               ; preds = %0
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @GetDC(i32* %21)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* @ERROR_SUCCESS, align 4
  %24 = call i32 @SetLastError(i32 %23)
  %25 = call i32 @GetClipBox(i32 74565, i32* %3)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ERROR, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = call i32 (...) @GetLastError()
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %20
  %35 = call i32 (...) @GetLastError()
  %36 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %37 = icmp eq i32 %35, %36
  br label %38

38:                                               ; preds = %34, %20
  %39 = phi i1 [ true, %20 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = call i32* @CreateRectRgn(i32 5, i32 7, i32 50, i32 50)
  store i32* %43, i32** %4, align 8
  %44 = load i32, i32* %2, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @SelectClipRgn(i32 %44, i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @DeleteObject(i32* %47)
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @GetClipBox(i32 %49, i32* %3)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SIMPLEREGION, align 4
  %53 = call i32 @ok_int(i32 %51, i32 %52)
  %54 = call i32 @ok_rect(i32* %3, i32 5, i32 7, i32 50, i32 50)
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @SetMetaRgn(i32 %55)
  %57 = call i32* @CreateRectRgn(i32 10, i32 10, i32 100, i32 100)
  store i32* %57, i32** %4, align 8
  %58 = load i32, i32* %2, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @SelectClipRgn(i32 %58, i32* %59)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @DeleteObject(i32* %61)
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @GetClipBox(i32 %63, i32* %3)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @SIMPLEREGION, align 4
  %67 = call i32 @ok_int(i32 %65, i32 %66)
  %68 = call i32 @ok_rect(i32* %3, i32 10, i32 10, i32 50, i32 50)
  %69 = call i32* @CreateRectRgn(i32 10, i32 10, i32 10, i32 30)
  store i32* %69, i32** %4, align 8
  %70 = load i32, i32* %2, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @SelectClipRgn(i32 %70, i32* %71)
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @DeleteObject(i32* %73)
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @GetClipBox(i32 %75, i32* %3)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @NULLREGION, align 4
  %79 = call i32 @ok_int(i32 %77, i32 %78)
  %80 = call i32 @ok_rect(i32* %3, i32 0, i32 0, i32 0, i32 0)
  %81 = call i32* @CreateRectRgn(i32 10, i32 10, i32 30, i32 30)
  store i32* %81, i32** %4, align 8
  %82 = call i32* @CreateRectRgn(i32 20, i32 20, i32 60, i32 60)
  store i32* %82, i32** %5, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @RGN_OR, align 4
  %87 = call i32 @CombineRgn(i32* %83, i32* %84, i32* %85, i32 %86)
  %88 = load i32, i32* @COMPLEXREGION, align 4
  %89 = call i32 @ok_int(i32 %87, i32 %88)
  %90 = load i32, i32* %2, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @SelectClipRgn(i32 %90, i32* %91)
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @DeleteObject(i32* %93)
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @GetClipBox(i32 %95, i32* %3)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @COMPLEXREGION, align 4
  %99 = call i32 @ok_int(i32 %97, i32 %98)
  %100 = call i32 @ok_rect(i32* %3, i32 10, i32 10, i32 50, i32 50)
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @SetViewportExtEx(i32 %101, i32 1000, i32 1000, i32* null)
  %103 = call i32 @ok_int(i32 %102, i32 1)
  %104 = load i32, i32* %2, align 4
  %105 = call i32 @GetClipBox(i32 %104, i32* %3)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @COMPLEXREGION, align 4
  %108 = call i32 @ok_int(i32 %106, i32 %107)
  %109 = call i32 @ok_rect(i32* %3, i32 10, i32 10, i32 50, i32 50)
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* @MM_ANISOTROPIC, align 4
  %112 = call i32 @SetMapMode(i32 %110, i32 %111)
  %113 = call i32 @ok_int(i32 %112, i32 1)
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @GetClipBox(i32 %114, i32* %3)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @COMPLEXREGION, align 4
  %118 = call i32 @ok_int(i32 %116, i32 %117)
  %119 = call i32 @ok_rect(i32* %3, i32 10, i32 10, i32 50, i32 50)
  %120 = load i32, i32* %2, align 4
  %121 = call i32 @SetViewportExtEx(i32 %120, i32 200, i32 400, i32* null)
  %122 = call i32 @ok_int(i32 %121, i32 1)
  %123 = load i32, i32* %2, align 4
  %124 = call i32 @GetClipBox(i32 %123, i32* %3)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @COMPLEXREGION, align 4
  %127 = call i32 @ok_int(i32 %125, i32 %126)
  %128 = call i32 @ok_rect(i32* %3, i32 0, i32 0, i32 0, i32 0)
  %129 = load i32, i32* %2, align 4
  %130 = call i32 @SelectClipRgn(i32 %129, i32* null)
  %131 = load i32, i32* %2, align 4
  %132 = call i32 @SetMetaRgn(i32 %131)
  %133 = load i32, i32* %2, align 4
  %134 = call i32 @GetClipBox(i32 %133, i32* %3)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @SIMPLEREGION, align 4
  %137 = call i32 @ok_int(i32 %135, i32 %136)
  %138 = call i32 @ok_rect(i32* %3, i32 0, i32 0, i32 0, i32 0)
  %139 = call i32* @CreateRectRgn(i32 10, i32 10, i32 190, i32 190)
  store i32* %139, i32** %4, align 8
  %140 = load i32, i32* %2, align 4
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @SelectClipRgn(i32 %140, i32* %141)
  %143 = load i32, i32* %2, align 4
  %144 = call i32 @GetClipBox(i32 %143, i32* %3)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @SIMPLEREGION, align 4
  %147 = call i32 @ok_int(i32 %145, i32 %146)
  %148 = call i32 @ok_rect(i32* %3, i32 0, i32 0, i32 0, i32 0)
  %149 = load i32, i32* %2, align 4
  %150 = call i32 @SetWindowExtEx(i32 %149, i32 400, i32 600, i32* null)
  %151 = call i32 @ok_int(i32 %150, i32 1)
  %152 = load i32, i32* %2, align 4
  %153 = call i32 @GetClipBox(i32 %152, i32* %3)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @SIMPLEREGION, align 4
  %156 = call i32 @ok_int(i32 %154, i32 %155)
  %157 = call i32 @ok_rect(i32* %3, i32 20, i32 15, i32 100, i32 75)
  %158 = call i32* @CreateRectRgn(i32 30, i32 30, i32 300, i32 300)
  store i32* %158, i32** %4, align 8
  %159 = load i32, i32* %2, align 4
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @SelectClipRgn(i32 %159, i32* %160)
  %162 = load i32, i32* %2, align 4
  %163 = call i32 @SetMetaRgn(i32 %162)
  %164 = load i32, i32* %2, align 4
  %165 = call i32 @GetClipBox(i32 %164, i32* %3)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @SIMPLEREGION, align 4
  %168 = call i32 @ok_int(i32 %166, i32 %167)
  %169 = call i32 @ok_rect(i32* %3, i32 60, i32 45, i32 100, i32 75)
  %170 = load i32*, i32** %1, align 8
  %171 = load i32, i32* %2, align 4
  %172 = call i32 @ReleaseDC(i32* %170, i32 %171)
  %173 = load i32*, i32** %1, align 8
  %174 = call i32 @DestroyWindow(i32* %173)
  br label %175

175:                                              ; preds = %38, %19
  ret void
}

declare dso_local i32* @CreateWindowW(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetDC(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetClipBox(i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @SelectClipRgn(i32, i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @ok_rect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @SetMetaRgn(i32) #1

declare dso_local i32 @CombineRgn(i32*, i32*, i32*, i32) #1

declare dso_local i32 @SetViewportExtEx(i32, i32, i32, i32*) #1

declare dso_local i32 @SetMapMode(i32, i32) #1

declare dso_local i32 @SetWindowExtEx(i32, i32, i32, i32*) #1

declare dso_local i32 @ReleaseDC(i32*, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
