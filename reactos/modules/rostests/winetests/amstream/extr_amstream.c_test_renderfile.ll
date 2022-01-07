; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_test_renderfile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_test_renderfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STREAMTYPE_READ = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"IAMMultiMediaStream_Initialize returned: %x\0A\00", align 1
@pdd7 = common dso_local global i64 0, align 8
@MSPID_PrimaryVideo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"IAMMultiMediaStream_AddMediaStream returned: %x\0A\00", align 1
@MSPID_PrimaryAudio = common dso_local global i32 0, align 4
@AMMSF_ADDDEFAULTRENDERER = common dso_local global i32 0, align 4
@filenameW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"IAMMultiMediaStream_OpenFile returned: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"IAMMultiMediaStream_GetMediaStream returned: %x\0A\00", align 1
@IID_IDirectDrawMediaStream = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"IMediaStream_QueryInterface returned: %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"IDirectDrawMediaStream_CreateSample returned: %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@pdds7 = common dso_local global i32 0, align 4
@IID_IDirectDrawSurface = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_renderfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_renderfile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = call i32* (...) @create_ammultimediastream()
  store i32* %8, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %147

11:                                               ; preds = %0
  %12 = call i32 (...) @create_directdraw()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @IAMMultiMediaStream_Release(i32* %15)
  br label %147

17:                                               ; preds = %11
  %18 = load i32*, i32** %1, align 8
  %19 = load i32, i32* @STREAMTYPE_READ, align 4
  %20 = call i32* @IAMMultiMediaStream_Initialize(i32* %18, i32 %19, i32 0, i32* null)
  store i32* %20, i32** %2, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** @S_OK, align 8
  %23 = icmp eq i32* %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32* %25)
  %27 = load i32*, i32** %1, align 8
  %28 = load i64, i64* @pdd7, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32* @IAMMultiMediaStream_AddMediaStream(i32* %27, i32* %29, i32* @MSPID_PrimaryVideo, i32 0, i32* null)
  store i32* %30, i32** %2, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = load i32*, i32** @S_OK, align 8
  %33 = icmp eq i32* %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32* %35)
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* @AMMSF_ADDDEFAULTRENDERER, align 4
  %39 = call i32* @IAMMultiMediaStream_AddMediaStream(i32* %37, i32* null, i32* @MSPID_PrimaryAudio, i32 %38, i32* null)
  store i32* %39, i32** %2, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = load i32*, i32** @S_OK, align 8
  %42 = icmp eq i32* %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32* %44)
  %46 = load i32*, i32** %1, align 8
  %47 = load i32, i32* @filenameW, align 4
  %48 = call i32* @IAMMultiMediaStream_OpenFile(i32* %46, i32 %47, i32 0)
  store i32* %48, i32** %2, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = load i32*, i32** @S_OK, align 8
  %51 = icmp eq i32* %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32* %53)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32* @IAMMultiMediaStream_GetMediaStream(i32* %55, i32* @MSPID_PrimaryVideo, i32** %3)
  store i32* %56, i32** %2, align 8
  %57 = load i32*, i32** %2, align 8
  %58 = load i32*, i32** @S_OK, align 8
  %59 = icmp eq i32* %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32* %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i64 @FAILED(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %17
  br label %131

67:                                               ; preds = %17
  %68 = load i32*, i32** %3, align 8
  %69 = bitcast i32** %4 to i32*
  %70 = call i32* @IMediaStream_QueryInterface(i32* %68, i32* @IID_IDirectDrawMediaStream, i32* %69)
  store i32* %70, i32** %2, align 8
  %71 = load i32*, i32** %2, align 8
  %72 = load i32*, i32** @S_OK, align 8
  %73 = icmp eq i32* %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32* %75)
  %77 = load i32*, i32** %2, align 8
  %78 = call i64 @FAILED(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %131

81:                                               ; preds = %67
  %82 = load i32*, i32** %4, align 8
  %83 = call i32* @IDirectDrawMediaStream_CreateSample(i32* %82, i32* null, i32* null, i32 0, i32** %5)
  store i32* %83, i32** %2, align 8
  %84 = load i32*, i32** %2, align 8
  %85 = load i32*, i32** @S_OK, align 8
  %86 = icmp eq i32* %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32* %88)
  store i32* null, i32** %6, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = call i32* @IDirectDrawStreamSample_GetSurface(i32* %90, i32** %6, i32* %7)
  store i32* %91, i32** %2, align 8
  %92 = load i32*, i32** %2, align 8
  %93 = load i32*, i32** @S_OK, align 8
  %94 = icmp eq i32* %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %96)
  %98 = load i32*, i32** %6, align 8
  %99 = icmp eq i32* %98, null
  %100 = zext i1 %99 to i32
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %101)
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @IDirectDrawStreamSample_Release(i32* %103)
  %105 = load i32, i32* @pdds7, align 4
  %106 = bitcast i32** %6 to i8**
  %107 = call i32* @IDirectDrawSurface7_QueryInterface(i32 %105, i32* @IID_IDirectDrawSurface, i8** %106)
  store i32* %107, i32** %2, align 8
  %108 = load i32*, i32** %2, align 8
  %109 = load i32*, i32** @S_OK, align 8
  %110 = icmp eq i32* %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i32*, i32** %2, align 8
  %113 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %112)
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @EXPECT_REF(i32* %114, i32 1)
  %116 = load i32*, i32** %4, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = call i32* @IDirectDrawMediaStream_CreateSample(i32* %116, i32* %117, i32* null, i32 0, i32** %5)
  store i32* %118, i32** %2, align 8
  %119 = load i32*, i32** %2, align 8
  %120 = load i32*, i32** @S_OK, align 8
  %121 = icmp eq i32* %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i32*, i32** %2, align 8
  %124 = call i32 @ok(i32 %122, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32* %123)
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @EXPECT_REF(i32* %125, i32 2)
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @IDirectDrawStreamSample_Release(i32* %127)
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @IDirectDrawSurface_Release(i32* %129)
  br label %131

131:                                              ; preds = %81, %80, %66
  %132 = load i32*, i32** %4, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @IDirectDrawMediaStream_Release(i32* %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32*, i32** %3, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32*, i32** %3, align 8
  %142 = call i32 @IMediaStream_Release(i32* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = call i32 (...) @release_directdraw()
  %145 = load i32*, i32** %1, align 8
  %146 = call i32 @IAMMultiMediaStream_Release(i32* %145)
  br label %147

147:                                              ; preds = %143, %14, %10
  ret void
}

declare dso_local i32* @create_ammultimediastream(...) #1

declare dso_local i32 @create_directdraw(...) #1

declare dso_local i32 @IAMMultiMediaStream_Release(i32*) #1

declare dso_local i32* @IAMMultiMediaStream_Initialize(i32*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i32* @IAMMultiMediaStream_AddMediaStream(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32* @IAMMultiMediaStream_OpenFile(i32*, i32, i32) #1

declare dso_local i32* @IAMMultiMediaStream_GetMediaStream(i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32*) #1

declare dso_local i32* @IMediaStream_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i32* @IDirectDrawMediaStream_CreateSample(i32*, i32*, i32*, i32, i32**) #1

declare dso_local i32* @IDirectDrawStreamSample_GetSurface(i32*, i32**, i32*) #1

declare dso_local i32 @IDirectDrawStreamSample_Release(i32*) #1

declare dso_local i32* @IDirectDrawSurface7_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @EXPECT_REF(i32*, i32) #1

declare dso_local i32 @IDirectDrawSurface_Release(i32*) #1

declare dso_local i32 @IDirectDrawMediaStream_Release(i32*) #1

declare dso_local i32 @IMediaStream_Release(i32*) #1

declare dso_local i32 @release_directdraw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
