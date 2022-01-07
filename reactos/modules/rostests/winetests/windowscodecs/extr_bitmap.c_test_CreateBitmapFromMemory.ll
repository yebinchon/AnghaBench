; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_bitmap.c_test_CreateBitmapFromMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_bitmap.c_test_CreateBitmapFromMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_CreateBitmapFromMemory.orig_data3x3 = private unnamed_addr constant [27 x i32] [i32 128, i32 128, i32 255, i32 128, i32 128, i32 128, i32 128, i32 255, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 255, i32 255, i32 255, i32 255, i32 128, i32 128, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@__const.test_CreateBitmapFromMemory.data3x2 = private unnamed_addr constant [27 x i32] [i32 128, i32 128, i32 255, i32 128, i32 128, i32 128, i32 128, i32 255, i32 128, i32 0, i32 0, i32 0, i32 0, i32 128, i32 128, i32 255, i32 255, i32 255, i32 255, i32 128, i32 128, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@factory = common dso_local global i32 0, align 4
@GUID_WICPixelFormat24bppBGR = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"expected E_INVALIDARG, got %#x\0A\00", align 1
@WINCODEC_ERR_INSUFFICIENTBUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"expected WINCODEC_ERR_INSUFFICIENTBUFFER, got %#x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"IWICImagingFactory_CreateBitmapFromMemory error %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"IWICBitmap_GetSize error %#x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"expected 3, got %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"IWICBitmap_CopyPixels error %#x\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"%u: expected %u, got %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"expected 2, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateBitmapFromMemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateBitmapFromMemory() #0 {
  %1 = alloca [27 x i32], align 16
  %2 = alloca [27 x i32], align 16
  %3 = alloca [27 x i32], align 16
  %4 = alloca [27 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast [27 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([27 x i32]* @__const.test_CreateBitmapFromMemory.orig_data3x3 to i8*), i64 108, i1 false)
  %11 = bitcast [27 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([27 x i32]* @__const.test_CreateBitmapFromMemory.data3x2 to i8*), i64 108, i1 false)
  %12 = getelementptr inbounds [27 x i32], [27 x i32]* %2, i64 0, i64 0
  %13 = getelementptr inbounds [27 x i32], [27 x i32]* %1, i64 0, i64 0
  %14 = call i32 @memcpy(i32* %12, i32* %13, i32 108)
  %15 = load i32, i32* @factory, align 4
  %16 = call i32 @IWICImagingFactory_CreateBitmapFromMemory(i32 %15, i32 3, i32 3, i32* @GUID_WICPixelFormat24bppBGR, i32 0, i32 0, i32* null, i32** %6)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @E_INVALIDARG, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i32, i8*, i32, ...) @ok(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @factory, align 4
  %24 = getelementptr inbounds [27 x i32], [27 x i32]* %2, i64 0, i64 0
  %25 = call i32 @IWICImagingFactory_CreateBitmapFromMemory(i32 %23, i32 3, i32 3, i32* @GUID_WICPixelFormat24bppBGR, i32 0, i32 108, i32* %24, i32** %6)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @E_INVALIDARG, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32, i8*, i32, ...) @ok(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @factory, align 4
  %33 = getelementptr inbounds [27 x i32], [27 x i32]* %2, i64 0, i64 0
  %34 = call i32 @IWICImagingFactory_CreateBitmapFromMemory(i32 %32, i32 3, i32 3, i32* @GUID_WICPixelFormat24bppBGR, i32 6, i32 108, i32* %33, i32** %6)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @E_INVALIDARG, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i32, i8*, i32, ...) @ok(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @factory, align 4
  %42 = getelementptr inbounds [27 x i32], [27 x i32]* %2, i64 0, i64 0
  %43 = call i32 @IWICImagingFactory_CreateBitmapFromMemory(i32 %41, i32 3, i32 3, i32* @GUID_WICPixelFormat24bppBGR, i32 12, i32 108, i32* %42, i32** %6)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @WINCODEC_ERR_INSUFFICIENTBUFFER, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i32, i8*, i32, ...) @ok(i32 %47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @factory, align 4
  %51 = getelementptr inbounds [27 x i32], [27 x i32]* %2, i64 0, i64 0
  %52 = call i32 @IWICImagingFactory_CreateBitmapFromMemory(i32 %50, i32 3, i32 3, i32* @GUID_WICPixelFormat24bppBGR, i32 9, i32 107, i32* %51, i32** %6)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @WINCODEC_ERR_INSUFFICIENTBUFFER, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i32, i8*, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @factory, align 4
  %60 = getelementptr inbounds [27 x i32], [27 x i32]* %2, i64 0, i64 0
  %61 = call i32 @IWICImagingFactory_CreateBitmapFromMemory(i32 %59, i32 3, i32 3, i32* @GUID_WICPixelFormat24bppBGR, i32 9, i32 108, i32* %60, i32** %6)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @S_OK, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (i32, i8*, i32, ...) @ok(i32 %65, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @IWICBitmap_GetSize(i32* %68, i32* %7, i32* %8)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @S_OK, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32, i8*, i32, ...) @ok(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 3
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i32, i8*, i32, ...) @ok(i32 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 3
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds [27 x i32], [27 x i32]* %2, i64 0, i64 2
  store i32 192, i32* %86, align 8
  %87 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 0
  %88 = call i32 @memset(i32* %87, i32 0, i32 108)
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 0
  %91 = call i32 @IWICBitmap_CopyPixels(i32* %89, i32* null, i32 9, i32 108, i32* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @S_OK, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %5, align 4
  %97 = call i32 (i32, i8*, i32, ...) @ok(i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %123, %0
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp ult i64 %100, 108
  br i1 %101, label %102, label %126

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [27 x i32], [27 x i32]* %1, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %106, %110
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [27 x i32], [27 x i32]* %2, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, i32, ...) @ok(i32 %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %113, i32 %117, i32 %121)
  br label %123

123:                                              ; preds = %102
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %98

126:                                              ; preds = %98
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @IWICBitmap_Release(i32* %127)
  %129 = load i32, i32* @factory, align 4
  %130 = getelementptr inbounds [27 x i32], [27 x i32]* %1, i64 0, i64 0
  %131 = call i32 @IWICImagingFactory_CreateBitmapFromMemory(i32 %129, i32 3, i32 2, i32* @GUID_WICPixelFormat24bppBGR, i32 13, i32 108, i32* %130, i32** %6)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @S_OK, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %5, align 4
  %137 = call i32 (i32, i8*, i32, ...) @ok(i32 %135, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @IWICBitmap_GetSize(i32* %138, i32* %7, i32* %8)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @S_OK, align 4
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %5, align 4
  %145 = call i32 (i32, i8*, i32, ...) @ok(i32 %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 3
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (i32, i8*, i32, ...) @ok(i32 %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %8, align 4
  %152 = icmp eq i32 %151, 2
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %8, align 4
  %155 = call i32 (i32, i8*, i32, ...) @ok(i32 %153, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %154)
  %156 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 0
  %157 = call i32 @memset(i32* %156, i32 0, i32 108)
  %158 = load i32*, i32** %6, align 8
  %159 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 0
  %160 = call i32 @IWICBitmap_CopyPixels(i32* %158, i32* null, i32 13, i32 108, i32* %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @S_OK, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %5, align 4
  %166 = call i32 (i32, i8*, i32, ...) @ok(i32 %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  store i32 0, i32* %9, align 4
  br label %167

167:                                              ; preds = %192, %126
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp ult i64 %169, 108
  br i1 %170, label %171, label %195

171:                                              ; preds = %167
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [27 x i32], [27 x i32]* %3, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %175, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [27 x i32], [27 x i32]* %3, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i8*, i32, ...) @ok(i32 %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %182, i32 %186, i32 %190)
  br label %192

192:                                              ; preds = %171
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %167

195:                                              ; preds = %167
  %196 = load i32*, i32** %6, align 8
  %197 = call i32 @IWICBitmap_Release(i32* %196)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @IWICImagingFactory_CreateBitmapFromMemory(i32, i32, i32, i32*, i32, i32, i32*, i32**) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @IWICBitmap_GetSize(i32*, i32*, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @IWICBitmap_CopyPixels(i32*, i32*, i32, i32, i32*) #2

declare dso_local i32 @IWICBitmap_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
