; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_Scan0.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_Scan0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PixelFormat24bppRGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Expected bitmap to be initialized\0A\00", align 1
@InvalidParameter = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"expected null bitmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"expected deadbeef bitmap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Scan0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Scan0() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca [360 x i32], align 16
  store i32* null, i32** %1, align 8
  %4 = load i32, i32* @PixelFormat24bppRGB, align 4
  %5 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %4, i32* null, i32** %1)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* @Ok, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @expect(i64 %6, i64 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* null, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @Ok, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @GdipDisposeImage(i32* %17)
  br label %19

19:                                               ; preds = %16, %0
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %20 = load i32, i32* @PixelFormat24bppRGB, align 4
  %21 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 -10, i32 10, i32 %20, i32* null, i32** %1)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* @InvalidParameter, align 8
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @expect(i64 %22, i64 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = icmp ne i32* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %30 = load i32, i32* @PixelFormat24bppRGB, align 4
  %31 = call i64 @GdipCreateBitmapFromScan0(i32 -10, i32 10, i32 10, i32 %30, i32* null, i32** %1)
  store i64 %31, i64* %2, align 8
  %32 = load i64, i64* @InvalidParameter, align 8
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @expect(i64 %32, i64 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = icmp ne i32* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %40 = load i32, i32* @PixelFormat24bppRGB, align 4
  %41 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 0, i32 10, i32 %40, i32* null, i32** %1)
  store i64 %41, i64* %2, align 8
  %42 = load i64, i64* @InvalidParameter, align 8
  %43 = load i64, i64* %2, align 8
  %44 = call i32 @expect(i64 %42, i64 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = icmp ne i32* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  %50 = load i32, i32* @PixelFormat24bppRGB, align 4
  %51 = getelementptr inbounds [360 x i32], [360 x i32]* %3, i64 0, i64 0
  %52 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 12, i32 %50, i32* %51, i32** %1)
  store i64 %52, i64* %2, align 8
  %53 = load i64, i64* @Ok, align 8
  %54 = load i64, i64* %2, align 8
  %55 = call i32 @expect(i64 %53, i64 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = icmp ne i32* null, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %60 = load i64, i64* %2, align 8
  %61 = load i64, i64* @Ok, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %19
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @GdipDisposeImage(i32* %64)
  br label %66

66:                                               ; preds = %63, %19
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %67 = load i32, i32* @PixelFormat24bppRGB, align 4
  %68 = getelementptr inbounds [360 x i32], [360 x i32]* %3, i64 0, i64 0
  %69 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 10, i32 %67, i32* %68, i32** %1)
  store i64 %69, i64* %2, align 8
  %70 = load i64, i64* @InvalidParameter, align 8
  %71 = load i64, i64* %2, align 8
  %72 = call i32 @expect(i64 %70, i64 %71)
  %73 = load i32*, i32** %1, align 8
  %74 = icmp ne i32* %73, null
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %78 = load i32, i32* @PixelFormat24bppRGB, align 4
  %79 = getelementptr inbounds [360 x i32], [360 x i32]* %3, i64 0, i64 0
  %80 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 0, i32 %78, i32* %79, i32** %1)
  store i64 %80, i64* %2, align 8
  %81 = load i64, i64* @InvalidParameter, align 8
  %82 = load i64, i64* %2, align 8
  %83 = call i32 @expect(i64 %81, i64 %82)
  %84 = load i32*, i32** %1, align 8
  %85 = icmp eq i32* %84, inttoptr (i64 3735928559 to i32*)
  %86 = zext i1 %85 to i32
  %87 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  %88 = load i32, i32* @PixelFormat24bppRGB, align 4
  %89 = getelementptr inbounds [360 x i32], [360 x i32]* %3, i64 0, i64 0
  %90 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 -8, i32 %88, i32* %89, i32** %1)
  store i64 %90, i64* %2, align 8
  %91 = load i64, i64* @Ok, align 8
  %92 = load i64, i64* %2, align 8
  %93 = call i32 @expect(i64 %91, i64 %92)
  %94 = load i32*, i32** %1, align 8
  %95 = icmp ne i32* null, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %98 = load i64, i64* %2, align 8
  %99 = load i64, i64* @Ok, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %66
  %102 = load i32*, i32** %1, align 8
  %103 = call i32 @GdipDisposeImage(i32* %102)
  br label %104

104:                                              ; preds = %101, %66
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %105 = load i32, i32* @PixelFormat24bppRGB, align 4
  %106 = getelementptr inbounds [360 x i32], [360 x i32]* %3, i64 0, i64 0
  %107 = call i64 @GdipCreateBitmapFromScan0(i32 10, i32 10, i32 -10, i32 %105, i32* %106, i32** %1)
  store i64 %107, i64* %2, align 8
  %108 = load i64, i64* @InvalidParameter, align 8
  %109 = load i64, i64* %2, align 8
  %110 = call i32 @expect(i64 %108, i64 %109)
  %111 = load i32*, i32** %1, align 8
  %112 = icmp ne i32* %111, null
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @GdipCreateBitmapFromScan0(i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @expect(i64, i64) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
