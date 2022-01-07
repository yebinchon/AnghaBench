; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_bitmap.c_test_CreateBitmapFromHICON.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_bitmap.c_test_CreateBitmapFromHICON.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i64 }

@test_CreateBitmapFromHICON.bits = internal constant [4096 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [21 x i8] c"CreateBitmap failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"CreateIconIndirect failed\0A\00", align 1
@factory = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"expected E_INVALIDARG, got %#x\0A\00", align 1
@ERROR_INVALID_CURSOR_HANDLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"expected ERROR_INVALID_CURSOR_HANDLE, got %#x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"CreateBitmapFromHICON error %#x\0A\00", align 1
@GUID_WICPixelFormat32bppBGRA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"unexpected pixel format %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"IWICBitmap_GetSize error %#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"expected 16, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateBitmapFromHICON to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateBitmapFromHICON() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = call i8* @CreateBitmap(i32 16, i32 32, i32 1, i32 1, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @test_CreateBitmapFromHICON.bits, i64 0, i64 0))
  %13 = ptrtoint i8* %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = call i64 @CreateIconIndirect(%struct.TYPE_3__* %2)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @DeleteObject(i64 %26)
  %28 = load i32, i32* @factory, align 4
  %29 = call i32 @IWICImagingFactory_CreateBitmapFromHICON(i32 %28, i64 0, i32** null)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @E_INVALIDARG, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @factory, align 4
  %37 = call i32 @IWICImagingFactory_CreateBitmapFromHICON(i32 %36, i64 0, i32** %4)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @ERROR_INVALID_CURSOR_HANDLE, align 4
  %40 = call i32 @HRESULT_FROM_WIN32(i32 %39)
  %41 = icmp eq i32 %38, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @factory, align 4
  %46 = load i64, i64* %1, align 8
  %47 = call i32 @IWICImagingFactory_CreateBitmapFromHICON(i32 %45, i64 %46, i32** null)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @E_INVALIDARG, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @factory, align 4
  %55 = load i64, i64* %1, align 8
  %56 = call i32 @IWICImagingFactory_CreateBitmapFromHICON(i32 %54, i64 %55, i32** %4)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @S_OK, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* %1, align 8
  %64 = call i32 @DestroyIcon(i64 %63)
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @S_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %0
  br label %161

69:                                               ; preds = %0
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @IWICBitmap_GetPixelFormat(i32* %70, i32* %7)
  %72 = call i32 @IsEqualGUID(i32* %7, i32* @GUID_WICPixelFormat32bppBGRA)
  %73 = call i32 @wine_dbgstr_guid(i32* %7)
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @IWICBitmap_GetSize(i32* %75, i32* %5, i32* %6)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @S_OK, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %3, align 4
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 16
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %88, 16
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %6, align 4
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @IWICBitmap_Release(i32* %93)
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  store i64 0, i64* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = call i8* @CreateBitmap(i32 16, i32 16, i32 1, i32 24, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @test_CreateBitmapFromHICON.bits, i64 0, i64 0))
  %99 = ptrtoint i8* %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i64 %99, i64* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %106 = call i8* @CreateBitmap(i32 16, i32 16, i32 1, i32 1, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @test_CreateBitmapFromHICON.bits, i64 0, i64 0))
  %107 = ptrtoint i8* %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i64 %107, i64* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %114 = call i64 @CreateIconIndirect(%struct.TYPE_3__* %2)
  store i64 %114, i64* %1, align 8
  %115 = load i64, i64* %1, align 8
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @DeleteObject(i64 %120)
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @DeleteObject(i64 %123)
  %125 = load i32, i32* @factory, align 4
  %126 = load i64, i64* %1, align 8
  %127 = call i32 @IWICImagingFactory_CreateBitmapFromHICON(i32 %125, i64 %126, i32** %4)
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @S_OK, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %3, align 4
  %133 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  %134 = load i64, i64* %1, align 8
  %135 = call i32 @DestroyIcon(i64 %134)
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @IWICBitmap_GetPixelFormat(i32* %136, i32* %7)
  %138 = call i32 @IsEqualGUID(i32* %7, i32* @GUID_WICPixelFormat32bppBGRA)
  %139 = call i32 @wine_dbgstr_guid(i32* %7)
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @IWICBitmap_GetSize(i32* %141, i32* %5, i32* %6)
  store i32 %142, i32* %3, align 4
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @S_OK, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %3, align 4
  %148 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %5, align 4
  %150 = icmp eq i32 %149, 16
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %5, align 4
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %154, 16
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %6, align 4
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %157)
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @IWICBitmap_Release(i32* %159)
  br label %161

161:                                              ; preds = %69, %68
  ret void
}

declare dso_local i8* @CreateBitmap(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @CreateIconIndirect(%struct.TYPE_3__*) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @IWICImagingFactory_CreateBitmapFromHICON(i32, i64, i32**) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @DestroyIcon(i64) #1

declare dso_local i32 @IWICBitmap_GetPixelFormat(i32*, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

declare dso_local i32 @IWICBitmap_GetSize(i32*, i32*, i32*) #1

declare dso_local i32 @IWICBitmap_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
