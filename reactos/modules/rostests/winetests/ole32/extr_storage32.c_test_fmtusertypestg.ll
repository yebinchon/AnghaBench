; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_fmtusertypestg.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_fmtusertypestg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@test_fmtusertypestg.fileA = internal constant [8 x i8] c"fmttest\00", align 1
@test_fmtusertypestg.fileW = internal constant [8 x float] [float 1.020000e+02, float 1.090000e+02, float 1.160000e+02, float 1.160000e+02, float 1.010000e+02, float 1.150000e+02, float 1.160000e+02, float 0.000000e+00], align 16
@test_fmtusertypestg.userTypeW = internal global [11 x float] [float 8.300000e+01, float 1.160000e+02, float 1.030000e+02, float 8.500000e+01, float 1.150000e+02, float 1.140000e+02, float 8.400000e+01, float 1.210000e+02, float 1.120000e+02, float 1.010000e+02, float 0.000000e+00], align 16
@test_fmtusertypestg.strmNameW = internal constant [9 x float] [float 1.000000e+00, float 6.700000e+01, float 1.110000e+02, float 1.090000e+02, float 1.120000e+02, float 7.900000e+01, float 9.800000e+01, float 1.060000e+02, float 0.000000e+00], align 16
@test_fmtusertypestg.statstg_null = internal constant %struct.TYPE_6__ zeroinitializer, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"should succeed, res=%x\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"found unexpected stream or storage\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"statstg is not zeroed\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"expected storage to contain stream \\0001CompObj\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fmtusertypestg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fmtusertypestg() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @STGM_CREATE, align 4
  %11 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @STGM_READWRITE, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @StgCreateDocfile(float* getelementptr inbounds ([8 x float], [8 x float]* @test_fmtusertypestg.fileW, i64 0, i64 0), i32 %14, i32 0, i32** %1)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %3, align 8
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @SUCCEEDED(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %145

25:                                               ; preds = %0
  %26 = load i32*, i32** %1, align 8
  %27 = call i64 @WriteFmtUserTypeStg(i32* %26, i32 0, float* getelementptr inbounds ([11 x float], [11 x float]* @test_fmtusertypestg.userTypeW, i64 0, i64 0))
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %3, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i64 @IStorage_EnumElements(i32* %34, i32 0, i32* null, i32 0, i32** %2)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %3, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i64, i64* %3, align 8
  %43 = call i64 @SUCCEEDED(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %25
  %46 = load i64, i64* @FALSE, align 8
  store i64 %46, i64* %4, align 8
  %47 = call i32 @memset(%struct.TYPE_6__* %5, i32 173, i32 4)
  br label %48

48:                                               ; preds = %67, %45
  %49 = load i32*, i32** %2, align 8
  %50 = call i64 @IEnumSTATSTG_Next(i32* %49, i32 1, %struct.TYPE_6__* %5, i32* %6)
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 1
  br label %56

56:                                               ; preds = %53, %48
  %57 = phi i1 [ false, %48 ], [ %55, %53 ]
  br i1 %57, label %58, label %71

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @strcmp_ww(i32 %60, float* getelementptr inbounds ([9 x float], [9 x float]* @test_fmtusertypestg.strmNameW, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i64, i64* @TRUE, align 8
  store i64 %64, i64* %4, align 8
  br label %67

65:                                               ; preds = %58
  %66 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %63
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @CoTaskMemFree(i32 %69)
  br label %48

71:                                               ; preds = %56
  %72 = call i64 @memcmp(%struct.TYPE_6__* %5, %struct.TYPE_6__* @test_fmtusertypestg.statstg_null, i32 4)
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @TRUE, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @IEnumSTATSTG_Release(i32* %81)
  br label %83

83:                                               ; preds = %71, %25
  %84 = load i32*, i32** %1, align 8
  %85 = call i64 @WriteFmtUserTypeStg(i32* %84, i32 0, float* getelementptr inbounds ([11 x float], [11 x float]* @test_fmtusertypestg.userTypeW, i64 0, i64 0))
  store i64 %85, i64* %3, align 8
  %86 = load i64, i64* %3, align 8
  %87 = load i64, i64* @S_OK, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %3, align 8
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %90)
  %92 = load i32*, i32** %1, align 8
  %93 = call i64 @IStorage_EnumElements(i32* %92, i32 0, i32* null, i32 0, i32** %2)
  store i64 %93, i64* %3, align 8
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* @S_OK, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %3, align 8
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %98)
  %100 = load i64, i64* %3, align 8
  %101 = call i64 @SUCCEEDED(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %141

103:                                              ; preds = %83
  %104 = load i64, i64* @FALSE, align 8
  store i64 %104, i64* %7, align 8
  %105 = call i32 @memset(%struct.TYPE_6__* %8, i32 173, i32 4)
  br label %106

106:                                              ; preds = %125, %103
  %107 = load i32*, i32** %2, align 8
  %108 = call i64 @IEnumSTATSTG_Next(i32* %107, i32 1, %struct.TYPE_6__* %8, i32* %9)
  store i64 %108, i64* %3, align 8
  %109 = load i64, i64* @S_OK, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %9, align 4
  %113 = icmp eq i32 %112, 1
  br label %114

114:                                              ; preds = %111, %106
  %115 = phi i1 [ false, %106 ], [ %113, %111 ]
  br i1 %115, label %116, label %129

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @strcmp_ww(i32 %118, float* getelementptr inbounds ([9 x float], [9 x float]* @test_fmtusertypestg.strmNameW, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i64, i64* @TRUE, align 8
  store i64 %122, i64* %7, align 8
  br label %125

123:                                              ; preds = %116
  %124 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %121
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @CoTaskMemFree(i32 %127)
  br label %106

129:                                              ; preds = %114
  %130 = call i64 @memcmp(%struct.TYPE_6__* %8, %struct.TYPE_6__* @test_fmtusertypestg.statstg_null, i32 4)
  %131 = icmp eq i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* @TRUE, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %139 = load i32*, i32** %2, align 8
  %140 = call i32 @IEnumSTATSTG_Release(i32* %139)
  br label %141

141:                                              ; preds = %129, %83
  %142 = load i32*, i32** %1, align 8
  %143 = call i32 @IStorage_Release(i32* %142)
  %144 = call i32 @DeleteFileA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_fmtusertypestg.fileA, i64 0, i64 0))
  br label %145

145:                                              ; preds = %141, %0
  ret void
}

declare dso_local i64 @StgCreateDocfile(float*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @WriteFmtUserTypeStg(i32*, i32, float*) #1

declare dso_local i64 @IStorage_EnumElements(i32*, i32, i32*, i32, i32**) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @IEnumSTATSTG_Next(i32*, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @strcmp_ww(i32, float*) #1

declare dso_local i32 @CoTaskMemFree(i32) #1

declare dso_local i64 @memcmp(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @IEnumSTATSTG_Release(i32*) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i32 @DeleteFileA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
