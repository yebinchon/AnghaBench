; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_printer_dc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_printer_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"printer dc\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"CreateCompatibleDC failed for printer\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"CreateCompatibleDC failed for screen\0A\00", align 1
@TECHNOLOGY = common dso_local global i32 0, align 4
@DT_RASPRINTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"wrong type %u\0A\00", align 1
@DT_RASDISPLAY = common dso_local global i64 0, align 8
@BITSPIXEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"SelectObject failed\0A\00", align 1
@SRCCOPY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"BitBlt failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"SelectObject succeeded\0A\00", align 1
@CLR_INVALID = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"wrong pixel value %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"CreateEnhMetaFileA failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"enhmetafile printer dc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_printer_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_printer_dc() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i32* @create_printer_dc(i32 100, i32 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32* @create_printer_dc(i32 200, i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %0
  br label %184

19:                                               ; preds = %15
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @is_postscript_printer(i32* %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 2, i32 1
  %27 = call i32 @test_device_caps(i32* %20, i32* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @DeleteDC(i32* %28)
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32* @create_printer_dc(i32 200, i32 %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @is_postscript_printer(i32* %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 2, i32 1
  %39 = call i32 @test_device_caps(i32* %32, i32* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @DeleteDC(i32* %40)
  %42 = load i32*, i32** %7, align 8
  %43 = call i32* @CreateCompatibleDC(i32* %42)
  store i32* %43, i32** %1, align 8
  %44 = call i32* @CreateCompatibleDC(i32* null)
  store i32* %44, i32** %2, align 8
  %45 = load i32*, i32** %1, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32*, i32** %2, align 8
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @TECHNOLOGY, align 4
  %55 = call i32 @GetDeviceCaps(i32* %53, i32 %54)
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @DT_RASPRINTER, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %6, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = load i32, i32* @TECHNOLOGY, align 4
  %65 = call i32 @GetDeviceCaps(i32* %63, i32 %64)
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @DT_RASPRINTER, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %6, align 8
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = load i32, i32* @TECHNOLOGY, align 4
  %75 = call i32 @GetDeviceCaps(i32* %73, i32 %74)
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @DT_RASDISPLAY, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %6, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* @BITSPIXEL, align 4
  %85 = call i32 @GetDeviceCaps(i32* %83, i32 %84)
  %86 = call i32* @CreateBitmap(i32 100, i32 100, i32 1, i32 %85, i32* null)
  store i32* %86, i32** %5, align 8
  %87 = load i32*, i32** %1, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = call i32* @SelectObject(i32* %87, i32* %88)
  store i32* %89, i32** %4, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = icmp ne i32* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32*, i32** %7, align 8
  %95 = load i32*, i32** %1, align 8
  %96 = load i32, i32* @SRCCOPY, align 4
  %97 = call i32 @BitBlt(i32* %94, i32 10, i32 10, i32 20, i32 20, i32* %95, i32 0, i32 0, i32 %96)
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i32*, i32** %1, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @test_device_caps(i32* %99, i32* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1)
  %102 = load i32*, i32** %2, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = call i32* @SelectObject(i32* %102, i32* %103)
  %105 = icmp ne i32* %104, null
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32*, i32** %1, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = call i32* @SelectObject(i32* %109, i32* %110)
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @DeleteObject(i32* %112)
  %114 = call i32* @CreateBitmap(i32 100, i32 100, i32 1, i32 1, i32* null)
  store i32* %114, i32** %5, align 8
  %115 = load i32*, i32** %2, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = call i32* @SelectObject(i32* %115, i32* %116)
  store i32* %117, i32** %4, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = icmp ne i32* %118, null
  %120 = zext i1 %119 to i32
  %121 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32*, i32** %1, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = call i32* @SelectObject(i32* %122, i32* %123)
  %125 = icmp ne i32* %124, null
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %129 = load i32*, i32** %7, align 8
  %130 = load i32*, i32** %2, align 8
  %131 = load i32, i32* @SRCCOPY, align 4
  %132 = call i32 @BitBlt(i32* %129, i32 10, i32 10, i32 20, i32 20, i32* %130, i32 0, i32 0, i32 %131)
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32*, i32** %1, align 8
  %135 = load i32*, i32** %2, align 8
  %136 = load i32, i32* @SRCCOPY, align 4
  %137 = call i32 @BitBlt(i32* %134, i32 10, i32 10, i32 20, i32 20, i32* %135, i32 0, i32 0, i32 %136)
  %138 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %139 = load i32*, i32** %2, align 8
  %140 = load i32*, i32** %1, align 8
  %141 = load i32, i32* @SRCCOPY, align 4
  %142 = call i32 @BitBlt(i32* %139, i32 10, i32 10, i32 20, i32 20, i32* %140, i32 0, i32 0, i32 %141)
  %143 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %144 = load i32*, i32** %7, align 8
  %145 = call i64 @GetPixel(i32* %144, i32 0, i32 0)
  store i64 %145, i64* %6, align 8
  %146 = load i64, i64* %6, align 8
  %147 = load i64, i64* @CLR_INVALID, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i64, i64* %6, align 8
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %150)
  %152 = load i32*, i32** %7, align 8
  %153 = call i32* @CreateEnhMetaFileA(i32* %152, i32* null, i32* null, i32* null)
  store i32* %153, i32** %3, align 8
  %154 = load i32*, i32** %3, align 8
  %155 = icmp ne i32* %154, null
  %156 = zext i1 %155 to i32
  %157 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %158 = load i32*, i32** %3, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @test_device_caps(i32* %158, i32* %159, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %161 = load i32*, i32** %3, align 8
  %162 = call i32 @CloseEnhMetaFile(i32* %161)
  %163 = call i32 @DeleteEnhMetaFile(i32 %162)
  %164 = load i32*, i32** %7, align 8
  %165 = call i32* @CreateEnhMetaFileA(i32* %164, i32* null, i32* null, i32* null)
  store i32* %165, i32** %3, align 8
  %166 = load i32*, i32** %3, align 8
  %167 = icmp ne i32* %166, null
  %168 = zext i1 %167 to i32
  %169 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %170 = load i32*, i32** %3, align 8
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @test_device_caps(i32* %170, i32* %171, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %173 = load i32*, i32** %3, align 8
  %174 = call i32 @CloseEnhMetaFile(i32* %173)
  %175 = call i32 @DeleteEnhMetaFile(i32 %174)
  %176 = load i32*, i32** %1, align 8
  %177 = call i32 @DeleteDC(i32* %176)
  %178 = load i32*, i32** %2, align 8
  %179 = call i32 @DeleteDC(i32* %178)
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @DeleteDC(i32* %180)
  %182 = load i32*, i32** %5, align 8
  %183 = call i32 @DeleteObject(i32* %182)
  br label %184

184:                                              ; preds = %19, %18
  ret void
}

declare dso_local i32* @create_printer_dc(i32, i32) #1

declare dso_local i32 @test_device_caps(i32*, i32*, i8*, i32) #1

declare dso_local i64 @is_postscript_printer(i32*) #1

declare dso_local i32 @DeleteDC(i32*) #1

declare dso_local i32* @CreateCompatibleDC(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetDeviceCaps(i32*, i32) #1

declare dso_local i32* @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i32* @SelectObject(i32*, i32*) #1

declare dso_local i32 @BitBlt(i32*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i64 @GetPixel(i32*, i32, i32) #1

declare dso_local i32* @CreateEnhMetaFileA(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DeleteEnhMetaFile(i32) #1

declare dso_local i32 @CloseEnhMetaFile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
