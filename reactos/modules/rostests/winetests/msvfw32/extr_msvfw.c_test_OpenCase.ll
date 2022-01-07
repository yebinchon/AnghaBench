; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvfw32/extr_msvfw.c_test_OpenCase.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvfw32/extr_msvfw.c_test_OpenCase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64* }

@ICMODE_DECOMPRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ICOpen(vidc.0) failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"The default decompressor is %s\0A\00", align 1
@ICERR_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"ICClose failed\0A\00", align 1
@ICMODE_COMPRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"The default compressor is %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ICOpen(vidc.msvc) failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ICOpen(vidc.MSVC) failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"ICOpen(VIDC.msvc) failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"ICOpen(VIDC.MSVC) failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"ICOpen(vidc.mSvC) failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"ICOpen(vIdC.msvc) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_OpenCase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_OpenCase() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = call i32 @mmioFOURCC(i8 signext 118, i8 signext 105, i8 signext 100, i8 signext 99)
  %4 = load i32, i32* @ICMODE_DECOMPRESS, align 4
  %5 = call i64 @ICOpen(i32 %3, i32 0, i32 %4)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = icmp ne i64 0, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 16, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 0, i64* %16, align 8
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ICGetInfo(i64 %17, %struct.TYPE_3__* %2, i32 16)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = call i32 @wine_dbgstr_w(i64* %20)
  %22 = call i32 @trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* %1, align 8
  %24 = call i64 @ICClose(i64 %23)
  %25 = load i64, i64* @ICERR_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %12, %0
  %30 = call i32 @mmioFOURCC(i8 signext 118, i8 signext 105, i8 signext 100, i8 signext 99)
  %31 = load i32, i32* @ICMODE_COMPRESS, align 4
  %32 = call i64 @ICOpen(i32 %30, i32 0, i32 %31)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = icmp ne i64 0, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %1, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @broken(i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i1 [ true, %29 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %45 = load i64, i64* %1, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 16, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* %1, align 8
  %53 = call i32 @ICGetInfo(i64 %52, %struct.TYPE_3__* %2, i32 16)
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = call i32 @wine_dbgstr_w(i64* %55)
  %57 = call i32 @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i64, i64* %1, align 8
  %59 = call i64 @ICClose(i64 %58)
  %60 = load i64, i64* @ICERR_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %47, %41
  %65 = call i32 @mmioFOURCC(i8 signext 118, i8 signext 105, i8 signext 100, i8 signext 99)
  %66 = call i32 @mmioFOURCC(i8 signext 109, i8 signext 115, i8 signext 118, i8 signext 99)
  %67 = load i32, i32* @ICMODE_DECOMPRESS, align 4
  %68 = call i64 @ICOpen(i32 %65, i32 %66, i32 %67)
  store i64 %68, i64* %1, align 8
  %69 = load i64, i64* %1, align 8
  %70 = icmp ne i64 0, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i64, i64* %1, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = load i64, i64* %1, align 8
  %77 = call i64 @ICClose(i64 %76)
  %78 = load i64, i64* @ICERR_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %75, %64
  %83 = call i32 @mmioFOURCC(i8 signext 118, i8 signext 105, i8 signext 100, i8 signext 99)
  %84 = call i32 @mmioFOURCC(i8 signext 77, i8 signext 83, i8 signext 86, i8 signext 67)
  %85 = load i32, i32* @ICMODE_DECOMPRESS, align 4
  %86 = call i64 @ICOpen(i32 %83, i32 %84, i32 %85)
  store i64 %86, i64* %1, align 8
  %87 = load i64, i64* %1, align 8
  %88 = icmp ne i64 0, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i64, i64* %1, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %82
  %94 = load i64, i64* %1, align 8
  %95 = call i64 @ICClose(i64 %94)
  %96 = load i64, i64* @ICERR_OK, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %93, %82
  %101 = call i32 @mmioFOURCC(i8 signext 86, i8 signext 73, i8 signext 68, i8 signext 67)
  %102 = call i32 @mmioFOURCC(i8 signext 109, i8 signext 115, i8 signext 118, i8 signext 99)
  %103 = load i32, i32* @ICMODE_DECOMPRESS, align 4
  %104 = call i64 @ICOpen(i32 %101, i32 %102, i32 %103)
  store i64 %104, i64* %1, align 8
  %105 = load i64, i64* %1, align 8
  %106 = icmp ne i64 0, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i64, i64* %1, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %100
  %112 = load i64, i64* %1, align 8
  %113 = call i64 @ICClose(i64 %112)
  %114 = load i64, i64* @ICERR_OK, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %111, %100
  %119 = call i32 @mmioFOURCC(i8 signext 86, i8 signext 73, i8 signext 68, i8 signext 67)
  %120 = call i32 @mmioFOURCC(i8 signext 77, i8 signext 83, i8 signext 86, i8 signext 67)
  %121 = load i32, i32* @ICMODE_DECOMPRESS, align 4
  %122 = call i64 @ICOpen(i32 %119, i32 %120, i32 %121)
  store i64 %122, i64* %1, align 8
  %123 = load i64, i64* %1, align 8
  %124 = icmp ne i64 0, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %127 = load i64, i64* %1, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %118
  %130 = load i64, i64* %1, align 8
  %131 = call i64 @ICClose(i64 %130)
  %132 = load i64, i64* @ICERR_OK, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @ok(i32 %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %136

136:                                              ; preds = %129, %118
  %137 = call i32 @mmioFOURCC(i8 signext 118, i8 signext 105, i8 signext 100, i8 signext 99)
  %138 = call i32 @mmioFOURCC(i8 signext 109, i8 signext 83, i8 signext 118, i8 signext 67)
  %139 = load i32, i32* @ICMODE_DECOMPRESS, align 4
  %140 = call i64 @ICOpen(i32 %137, i32 %138, i32 %139)
  store i64 %140, i64* %1, align 8
  %141 = load i64, i64* %1, align 8
  %142 = icmp ne i64 0, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @ok(i32 %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %145 = load i64, i64* %1, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %136
  %148 = load i64, i64* %1, align 8
  %149 = call i64 @ICClose(i64 %148)
  %150 = load i64, i64* @ICERR_OK, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @ok(i32 %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %154

154:                                              ; preds = %147, %136
  %155 = call i32 @mmioFOURCC(i8 signext 118, i8 signext 73, i8 signext 100, i8 signext 67)
  %156 = call i32 @mmioFOURCC(i8 signext 109, i8 signext 115, i8 signext 118, i8 signext 99)
  %157 = load i32, i32* @ICMODE_DECOMPRESS, align 4
  %158 = call i64 @ICOpen(i32 %155, i32 %156, i32 %157)
  store i64 %158, i64* %1, align 8
  %159 = load i64, i64* %1, align 8
  %160 = icmp ne i64 0, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @ok(i32 %161, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %163 = load i64, i64* %1, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %154
  %166 = load i64, i64* %1, align 8
  %167 = call i64 @ICClose(i64 %166)
  %168 = load i64, i64* @ICERR_OK, align 8
  %169 = icmp eq i64 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @ok(i32 %170, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %172

172:                                              ; preds = %165, %154
  ret void
}

declare dso_local i64 @ICOpen(i32, i32, i32) #1

declare dso_local i32 @mmioFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @ICGetInfo(i64, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i64*) #1

declare dso_local i64 @ICClose(i64) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
