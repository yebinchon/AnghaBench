; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvfw32/extr_msvfw.c_test_ICSeqCompress.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvfw32/extr_msvfw.c_test_ICSeqCompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32*, i32*, i64, i32*, i32, i32, i32, i32*, i32 }
%struct.anon = type { i32, [256 x i32] }

@test_ICSeqCompress.input = internal global <{ [9 x i32], [23 x i32] }> <{ [9 x i32] [i32 1, i32 2, i32 3, i32 3, i32 3, i32 3, i32 2, i32 3, i32 1], [23 x i32] zeroinitializer }>, align 16
@test_ICSeqCompress.output_kf = internal constant [18 x i32] [i32 1, i32 1, i32 1, i32 2, i32 4, i32 3, i32 0, i32 3, i32 2, i32 3, i32 1, i32 0, i32 23, i32 0, i32 0, i32 0, i32 0, i32 1], align 16
@test_ICSeqCompress.output_nkf = internal constant [4 x i32] [i32 0, i32 0, i32 0, i32 1], align 16
@ICMODE_COMPRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Expected non-NULL\0A\00", align 1
@ICMF_COMPVARS_VALID = common dso_local global i32 0, align 4
@ICQUALITY_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Expected TRUE\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Frame[%d]: Expected non-NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Frame[%d]: Contents do not match\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unknown frame size of %d byten\0A\00", align 1
@ICERR_BADHANDLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Expected -8, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ICSeqCompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ICSeqCompress() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  %11 = alloca %struct.anon, align 4
  %12 = alloca i32, align 4
  %13 = call i32 @mmioFOURCC(i8 signext 118, i8 signext 105, i8 signext 100, i8 signext 99)
  store i32 %13, i32* %3, align 4
  %14 = call i32 @mmioFOURCC(i8 signext 109, i8 signext 114, i8 signext 108, i8 signext 101)
  store i32 %14, i32* %4, align 4
  %15 = bitcast %struct.anon* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 1028, i1 false)
  %16 = bitcast i8* %15 to { i32, <{ i32, i32, i32, i32, [252 x i32] }> }*
  %17 = getelementptr inbounds { i32, <{ i32, i32, i32, i32, [252 x i32] }> }, { i32, <{ i32, i32, i32, i32, [252 x i32] }> }* %16, i32 0, i32 0
  store i32 4, i32* %17, align 4
  %18 = getelementptr inbounds { i32, <{ i32, i32, i32, i32, [252 x i32] }> }, { i32, <{ i32, i32, i32, i32, [252 x i32] }> }* %16, i32 0, i32 1
  %19 = getelementptr inbounds <{ i32, i32, i32, i32, [252 x i32] }>, <{ i32, i32, i32, i32, [252 x i32] }>* %18, i32 0, i32 0
  store i32 255, i32* %19, align 4
  %20 = getelementptr inbounds <{ i32, i32, i32, i32, [252 x i32] }>, <{ i32, i32, i32, i32, [252 x i32] }>* %18, i32 0, i32 3
  store i32 255, i32* %20, align 4
  %21 = ptrtoint %struct.anon* %11 to i32
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ICMODE_COMPRESS, align 4
  %25 = call i32* @ICOpen(i32 %22, i32 %23, i32 %24)
  store i32* %25, i32** %1, align 8
  %26 = load i32*, i32** %1, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i32 88, i32* %30, align 8
  %31 = load i32, i32* @ICMF_COMPVARS_VALID, align 4
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 13
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load i32*, i32** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 12
  store i32* %37, i32** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 6
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 5
  store i32* null, i32** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 8
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 10
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 11
  store i32 0, i32* %43, align 8
  %44 = load i32, i32* @ICQUALITY_DEFAULT, align 4
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 9
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 3
  store i32 1, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 4
  store i32 300, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 8
  store i32* null, i32** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @ICSeqCompressFrameStart(%struct.TYPE_18__* %10, i32 %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @TRUE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %107, %0
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 9
  br i1 %69, label %70, label %110

70:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  %71 = call i8* @ICSeqCompressFrame(%struct.TYPE_18__* %10, i32 0, i32* getelementptr inbounds ([32 x i32], [32 x i32]* bitcast (<{ [9 x i32], [23 x i32] }>* @test_ICSeqCompress.input to [32 x i32]*), i64 0, i64 0), i64* %7, i32* %6)
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp eq i64 %78, 16
  br i1 %79, label %80, label %89

80:                                               ; preds = %70
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @memcmp(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @test_ICSeqCompress.output_nkf, i64 0, i64 0), i8* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  br label %106

89:                                               ; preds = %70
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp eq i64 %91, 72
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @memcmp(i32* getelementptr inbounds ([18 x i32], [18 x i32]* @test_ICSeqCompress.output_kf, i64 0, i64 0), i8* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %5, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %105

102:                                              ; preds = %89
  %103 = load i32, i32* %6, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102, %93
  br label %106

106:                                              ; preds = %105, %80
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %67

110:                                              ; preds = %67
  %111 = call i32 @ICSeqCompressFrameEnd(%struct.TYPE_18__* %10)
  %112 = call i32 @ICCompressorFree(%struct.TYPE_18__* %10)
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @ICClose(i32* %113)
  store i32 %114, i32* %2, align 4
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* @ICERR_BADHANDLE, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %2, align 4
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  ret void
}

declare dso_local i32 @mmioFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @ICOpen(i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @ICSeqCompressFrameStart(%struct.TYPE_18__*, i32) #1

declare dso_local i8* @ICSeqCompressFrame(%struct.TYPE_18__*, i32, i32*, i64*, i32*) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @ICSeqCompressFrameEnd(%struct.TYPE_18__*) #1

declare dso_local i32 @ICCompressorFree(%struct.TYPE_18__*) #1

declare dso_local i32 @ICClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
