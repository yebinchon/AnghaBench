; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_check_bitmap_format.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_check_bitmap_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"IStream_Seek error %#x\0A\00", align 1
@CLSID_WICPngEncoder = common dso_local global i32 0, align 4
@CLSID_WICBmpEncoder = common dso_local global i32 0, align 4
@CLSID_WICTiffEncoder = common dso_local global i32 0, align 4
@CLSID_WICGifEncoder = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown encoder %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @check_bitmap_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_bitmap_format(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @SEEK_SET, align 4
  %12 = bitcast %struct.TYPE_3__* %8 to i32*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @IStream_Seek(i32* %10, i64 %14, i32 %11, i32* %12)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @IsEqualGUID(i32* %22, i32* @CLSID_WICPngEncoder)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @check_png_format(i32* %26, i32* %27)
  br label %60

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @IsEqualGUID(i32* %30, i32* @CLSID_WICBmpEncoder)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @check_bmp_format(i32* %34, i32* %35)
  br label %59

37:                                               ; preds = %29
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @IsEqualGUID(i32* %38, i32* @CLSID_WICTiffEncoder)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @check_tiff_format(i32* %42, i32* %43)
  br label %58

45:                                               ; preds = %37
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @IsEqualGUID(i32* %46, i32* @CLSID_WICGifEncoder)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @check_gif_format(i32* %50, i32* %51)
  br label %57

53:                                               ; preds = %45
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @wine_dbgstr_guid(i32* %54)
  %56 = call i32 @ok(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58, %33
  br label %60

60:                                               ; preds = %59, %25
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @SEEK_SET, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @IStream_Seek(i32* %61, i64 %64, i32 %62, i32* null)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %70)
  ret void
}

declare dso_local i64 @IStream_Seek(i32*, i64, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @check_png_format(i32*, i32*) #1

declare dso_local i32 @check_bmp_format(i32*, i32*) #1

declare dso_local i32 @check_tiff_format(i32*, i32*) #1

declare dso_local i32 @check_gif_format(i32*, i32*) #1

declare dso_local i64 @wine_dbgstr_guid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
