; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winemp3.acm/extr_mpegl3.c_MPEG3_DriverDetails.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winemp3.acm/extr_mpegl3.c_MPEG3_DriverDetails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64*, i32, i32, i32, i32, i32*, i64, i32, i32, i32, i32, i32 }

@ACMDRIVERDETAILS_FCCTYPE_AUDIOCODEC = common dso_local global i32 0, align 4
@ACMDRIVERDETAILS_FCCCOMP_UNDEFINED = common dso_local global i32 0, align 4
@MM_FRAUNHOFER_IIS = common dso_local global i32 0, align 4
@MM_FHGIIS_MPEGLAYER3_DECODE = common dso_local global i32 0, align 4
@ACMDRIVERDETAILS_SUPPORTF_CODEC = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MPEG Layer-3 Codec\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Wine MPEG3 decoder\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Brought to you by the Wine team...\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Refer to LICENSE file\00", align 1
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @MPEG3_DriverDetails to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MPEG3_DriverDetails(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @ACMDRIVERDETAILS_FCCTYPE_AUDIOCODEC, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 14
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @ACMDRIVERDETAILS_FCCCOMP_UNDEFINED, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 13
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @MM_FRAUNHOFER_IIS, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 12
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @MM_FHGIIS_MPEGLAYER3_DECODE, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 16777216, i32* %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 16777216, i32* %18, align 4
  %19 = load i32, i32* @ACMDRIVERDETAILS_SUPPORTF_CODEC, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32 3, i32* %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 9
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 8
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* @CP_ACP, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MultiByteToWideChar(i32 %28, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 -1, i32 %31, i32 1)
  %33 = load i32, i32* @CP_ACP, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @MultiByteToWideChar(i32 %33, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 %36, i32 1)
  %38 = load i32, i32* @CP_ACP, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MultiByteToWideChar(i32 %38, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 %41, i32 1)
  %43 = load i32, i32* @CP_ACP, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @MultiByteToWideChar(i32 %43, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 -1, i32 %46, i32 1)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @MMSYSERR_NOERROR, align 4
  ret i32 %52
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
