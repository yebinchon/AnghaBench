; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtergraph.c_test_media_seeking.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_filtergraph.c_test_media_seeking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IMediaSeeking = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"QueryInterface(IMediaControl) failed: %08x\0A\00", align 1
@IID_IMediaFilter = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"QueryInterface(IMediaFilter) failed: %08x\0A\00", align 1
@GUID_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"GetTimeFormat failed: %#x\0A\00", align 1
@TIME_FORMAT_MEDIA_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"ConvertTimeFormat failed: %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"GetCurrentPosition failed: %#x\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"GetDuration failed: %#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"GetCurrentPosition failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"expected %s, got %s\0A\00", align 1
@AM_SEEKING_ReturnTime = common dso_local global i32 0, align 4
@AM_SEEKING_NoPositioning = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"SetPositions failed: %#x\0A\00", align 1
@AM_SEEKING_AbsolutePositioning = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"SetPositions failed: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Position != 0 (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_media_seeking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_media_seeking(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @IFilterGraph2_SetDefaultSyncSource(i32* %10)
  %12 = load i32*, i32** %2, align 8
  %13 = bitcast i32** %3 to i8**
  %14 = call i64 @IFilterGraph2_QueryInterface(i32* %12, i32* @IID_IMediaSeeking, i8** %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %9, align 8
  %20 = call i32 (i32, i8*, i64, ...) @ok(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = bitcast i32** %4 to i8**
  %23 = call i64 @IFilterGraph2_QueryInterface(i32* %21, i32* @IID_IMediaFilter, i8** %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %9, align 8
  %29 = call i32 (i32, i8*, i64, ...) @ok(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @GUID_NULL, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @IMediaSeeking_GetTimeFormat(i32* %31, i32* %8)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %9, align 8
  %38 = call i32 (i32, i8*, i64, ...) @ok(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = call i32 @IsEqualGUID(i32* %8, i32* @TIME_FORMAT_MEDIA_TIME)
  %40 = call i64 @wine_dbgstr_guid(i32* %8)
  %41 = call i32 (i32, i8*, i64, ...) @ok(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  store i32 -559038737, i32* %5, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @IMediaSeeking_ConvertTimeFormat(i32* %42, i32* %5, i32* null, i32 878082202, i32* null)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %9, align 8
  %49 = call i32 (i32, i8*, i64, ...) @ok(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp eq i64 %51, 78187493530
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @wine_dbgstr_longlong(i32 %54)
  %56 = call i32 (i32, i8*, i64, ...) @ok(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  store i32 -559038737, i32* %5, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @IMediaSeeking_ConvertTimeFormat(i32* %57, i32* %5, i32* @TIME_FORMAT_MEDIA_TIME, i32 878082202, i32* null)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %9, align 8
  %64 = call i32 (i32, i8*, i64, ...) @ok(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %66, 78187493530
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %5, align 4
  %70 = call i64 @wine_dbgstr_longlong(i32 %69)
  %71 = call i32 (i32, i8*, i64, ...) @ok(i32 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  store i32 -559038737, i32* %5, align 4
  %72 = load i32*, i32** %3, align 8
  %73 = call i64 @IMediaSeeking_ConvertTimeFormat(i32* %72, i32* %5, i32* null, i32 878082202, i32* @TIME_FORMAT_MEDIA_TIME)
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @S_OK, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %9, align 8
  %79 = call i32 (i32, i8*, i64, ...) @ok(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp eq i64 %81, 78187493530
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %5, align 4
  %85 = call i64 @wine_dbgstr_longlong(i32 %84)
  %86 = call i32 (i32, i8*, i64, ...) @ok(i32 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i64 @IMediaSeeking_GetCurrentPosition(i32* %87, i32* %5)
  store i64 %88, i64* %9, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @S_OK, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %9, align 8
  %94 = call i32 (i32, i8*, i64, ...) @ok(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %5, align 4
  %99 = call i64 @wine_dbgstr_longlong(i32 %98)
  %100 = call i32 (i32, i8*, i64, ...) @ok(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  %101 = load i32*, i32** %3, align 8
  %102 = call i64 @IMediaSeeking_GetDuration(i32* %101, i32* %7)
  store i64 %102, i64* %9, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* @S_OK, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i64, i64* %9, align 8
  %108 = call i32 (i32, i8*, i64, ...) @ok(i32 %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %107)
  %109 = load i32, i32* %7, align 4
  %110 = icmp sgt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %7, align 4
  %113 = call i64 @wine_dbgstr_longlong(i32 %112)
  %114 = call i32 (i32, i8*, i64, ...) @ok(i32 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %113)
  %115 = load i32*, i32** %3, align 8
  %116 = call i64 @IMediaSeeking_GetStopPosition(i32* %115, i32* %6)
  store i64 %116, i64* %9, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* @S_OK, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %9, align 8
  %122 = call i32 (i32, i8*, i64, ...) @ok(i32 %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i64 %121)
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %1
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  %130 = icmp eq i32 %127, %129
  br label %131

131:                                              ; preds = %126, %1
  %132 = phi i1 [ true, %1 ], [ %130, %126 ]
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %7, align 4
  %135 = call i64 @wine_dbgstr_longlong(i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @wine_dbgstr_longlong(i32 %136)
  %138 = call i32 (i32, i8*, i64, ...) @ok(i32 %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i64 %135, i64 %137)
  %139 = load i32*, i32** %3, align 8
  %140 = load i32, i32* @AM_SEEKING_ReturnTime, align 4
  %141 = load i32, i32* @AM_SEEKING_NoPositioning, align 4
  %142 = call i64 @IMediaSeeking_SetPositions(i32* %139, i32* null, i32 %140, i32* null, i32 %141)
  store i64 %142, i64* %9, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* @S_OK, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %9, align 8
  %148 = call i32 (i32, i8*, i64, ...) @ok(i32 %146, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i64 %147)
  %149 = load i32*, i32** %3, align 8
  %150 = load i32, i32* @AM_SEEKING_NoPositioning, align 4
  %151 = load i32, i32* @AM_SEEKING_ReturnTime, align 4
  %152 = call i64 @IMediaSeeking_SetPositions(i32* %149, i32* null, i32 %150, i32* null, i32 %151)
  store i64 %152, i64* %9, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* @S_OK, align 8
  %155 = icmp eq i64 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load i64, i64* %9, align 8
  %158 = call i32 (i32, i8*, i64, ...) @ok(i32 %156, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i64 %157)
  store i32 0, i32* %5, align 4
  %159 = load i32*, i32** %3, align 8
  %160 = load i32, i32* @AM_SEEKING_AbsolutePositioning, align 4
  %161 = load i32, i32* @AM_SEEKING_NoPositioning, align 4
  %162 = call i64 @IMediaSeeking_SetPositions(i32* %159, i32* %5, i32 %160, i32* null, i32 %161)
  store i64 %162, i64* %9, align 8
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* @S_OK, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %9, align 8
  %168 = call i32 (i32, i8*, i64, ...) @ok(i32 %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i64 %167)
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 @IMediaFilter_SetSyncSource(i32* %169, i32* null)
  store i32 -559038737, i32* %5, align 4
  %171 = load i32*, i32** %3, align 8
  %172 = call i64 @IMediaSeeking_GetCurrentPosition(i32* %171, i32* %5)
  store i64 %172, i64* %9, align 8
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* @S_OK, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = load i64, i64* %9, align 8
  %178 = call i32 (i32, i8*, i64, ...) @ok(i32 %176, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i64 %177)
  %179 = load i32, i32* %5, align 4
  %180 = icmp eq i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %5, align 4
  %183 = call i64 @wine_dbgstr_longlong(i32 %182)
  %184 = call i32 (i32, i8*, i64, ...) @ok(i32 %181, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i64 %183)
  %185 = load i32*, i32** %2, align 8
  %186 = call i32 @IFilterGraph2_SetDefaultSyncSource(i32* %185)
  %187 = load i32*, i32** %3, align 8
  %188 = call i32 @IMediaSeeking_Release(i32* %187)
  %189 = load i32*, i32** %4, align 8
  %190 = call i32 @IMediaFilter_Release(i32* %189)
  ret void
}

declare dso_local i32 @IFilterGraph2_SetDefaultSyncSource(i32*) #1

declare dso_local i64 @IFilterGraph2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @IMediaSeeking_GetTimeFormat(i32*, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i64 @wine_dbgstr_guid(i32*) #1

declare dso_local i64 @IMediaSeeking_ConvertTimeFormat(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @wine_dbgstr_longlong(i32) #1

declare dso_local i64 @IMediaSeeking_GetCurrentPosition(i32*, i32*) #1

declare dso_local i64 @IMediaSeeking_GetDuration(i32*, i32*) #1

declare dso_local i64 @IMediaSeeking_GetStopPosition(i32*, i32*) #1

declare dso_local i64 @IMediaSeeking_SetPositions(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @IMediaFilter_SetSyncSource(i32*, i32*) #1

declare dso_local i32 @IMediaSeeking_Release(i32*) #1

declare dso_local i32 @IMediaFilter_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
