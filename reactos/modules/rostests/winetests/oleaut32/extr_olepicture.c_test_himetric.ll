; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_himetric.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olepicture.c_test_himetric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32* }

@test_himetric.bmp_bits = internal constant [1024 x i32] zeroinitializer, align 16
@PICTYPE_BITMAP = common dso_local global i32 0, align 4
@LOGPIXELSX = common dso_local global i32 0, align 4
@LOGPIXELSY = common dso_local global i32 0, align 4
@IID_IPicture = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"got %d, expected %d\0A\00", align 1
@SM_CXICON = common dso_local global i32 0, align 4
@SM_CYICON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to create icon\0A\00", align 1
@PICTYPE_ICON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_himetric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_himetric() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 40, i32* %10, align 8
  %11 = load i32, i32* @PICTYPE_BITMAP, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @LOGPIXELSX, align 4
  %18 = call double @GetDeviceCaps(i32 %16, i32 %17)
  %19 = fmul double 1.900000e+00, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @LOGPIXELSY, align 4
  %22 = call double @GetDeviceCaps(i32 %20, i32 %21)
  %23 = fmul double 1.900000e+00, %22
  %24 = call i32 @CreateBitmap(double %19, double %23, i32 1, i32 1, i32* null)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = bitcast i32** %3 to i8**
  %30 = call i64 @OleCreatePictureIndirect(%struct.TYPE_7__* %4, i32* @IID_IPicture, i32 %28, i8** %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %6, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %35)
  store i64 0, i64* %1, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @LOGPIXELSX, align 4
  %39 = call double @GetDeviceCaps(i32 %37, i32 %38)
  %40 = fmul double 1.900000e+00, %39
  %41 = fptosi double %40 to i64
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @LOGPIXELSX, align 4
  %44 = call double @GetDeviceCaps(i32 %42, i32 %43)
  %45 = call i64 @MulDiv(i64 %41, i32 2540, double %44)
  store i64 %45, i64* %9, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 @IPicture_get_Width(i32* %46, i64* %1)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %6, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load i64, i64* %1, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %1, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %58, i64 %59)
  store i64 0, i64* %2, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @LOGPIXELSY, align 4
  %63 = call double @GetDeviceCaps(i32 %61, i32 %62)
  %64 = fmul double 1.900000e+00, %63
  %65 = fptosi double %64 to i64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @LOGPIXELSY, align 4
  %68 = call double @GetDeviceCaps(i32 %66, i32 %67)
  %69 = call i64 @MulDiv(i64 %65, i32 2540, double %68)
  store i64 %69, i64* %9, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i64 @IPicture_get_Height(i32* %70, i64* %2)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %6, align 8
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %76)
  %78 = load i64, i64* %2, align 8
  %79 = load i64, i64* %9, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %2, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %82, i64 %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @DeleteObject(i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @IPicture_Release(i32* %87)
  %89 = load i32, i32* @SM_CXICON, align 4
  %90 = call i64 @GetSystemMetrics(i32 %89)
  %91 = load i32, i32* @SM_CYICON, align 4
  %92 = call i64 @GetSystemMetrics(i32 %91)
  %93 = call i32* @CreateIcon(i32* null, i64 %90, i64 %92, i32 1, i32 1, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @test_himetric.bmp_bits, i64 0, i64 0), i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @test_himetric.bmp_bits, i64 0, i64 0))
  store i32* %93, i32** %7, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = icmp ne i32* %94, null
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @PICTYPE_ICON, align 4
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 %98, i32* %99, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32* %100, i32** %102, align 8
  %103 = load i32, i32* @FALSE, align 4
  %104 = bitcast i32** %3 to i8**
  %105 = call i64 @OleCreatePictureIndirect(%struct.TYPE_7__* %4, i32* @IID_IPicture, i32 %103, i8** %104)
  store i64 %105, i64* %6, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @S_OK, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %6, align 8
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %110)
  store i64 0, i64* %1, align 8
  %112 = load i32, i32* @SM_CXICON, align 4
  %113 = call i64 @GetSystemMetrics(i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @LOGPIXELSX, align 4
  %116 = call double @GetDeviceCaps(i32 %114, i32 %115)
  %117 = call i64 @MulDiv(i64 %113, i32 2540, double %116)
  store i64 %117, i64* %9, align 8
  %118 = load i32*, i32** %3, align 8
  %119 = call i64 @IPicture_get_Width(i32* %118, i64* %1)
  store i64 %119, i64* %6, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* @S_OK, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i64, i64* %6, align 8
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %124)
  %126 = load i64, i64* %1, align 8
  %127 = load i64, i64* %9, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i64, i64* %1, align 8
  %131 = load i64, i64* %9, align 8
  %132 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %130, i64 %131)
  store i64 0, i64* %2, align 8
  %133 = load i32, i32* @SM_CYICON, align 4
  %134 = call i64 @GetSystemMetrics(i32 %133)
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @LOGPIXELSY, align 4
  %137 = call double @GetDeviceCaps(i32 %135, i32 %136)
  %138 = call i64 @MulDiv(i64 %134, i32 2540, double %137)
  store i64 %138, i64* %9, align 8
  %139 = load i32*, i32** %3, align 8
  %140 = call i64 @IPicture_get_Height(i32* %139, i64* %2)
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* @S_OK, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %6, align 8
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %145)
  %147 = load i64, i64* %2, align 8
  %148 = load i64, i64* %9, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i64, i64* %2, align 8
  %152 = load i64, i64* %9, align 8
  %153 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %151, i64 %152)
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 @IPicture_Release(i32* %154)
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @DestroyIcon(i32* %156)
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @DeleteDC(i32 %158)
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @CreateBitmap(double, double, i32, i32, i32*) #1

declare dso_local double @GetDeviceCaps(i32, i32) #1

declare dso_local i64 @OleCreatePictureIndirect(%struct.TYPE_7__*, i32*, i32, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @MulDiv(i64, i32, double) #1

declare dso_local i64 @IPicture_get_Width(i32*, i64*) #1

declare dso_local i64 @IPicture_get_Height(i32*, i64*) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @IPicture_Release(i32*) #1

declare dso_local i32* @CreateIcon(i32*, i64, i64, i32, i32, i32*, i32*) #1

declare dso_local i64 @GetSystemMetrics(i32) #1

declare dso_local i32 @DestroyIcon(i32*) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
