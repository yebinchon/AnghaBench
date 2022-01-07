; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/skein/extr_skein.c_Skein_256_Final.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/skein/extr_skein.c_Skein_256_Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i64, i32, i32* }

@SKEIN_256_STATE_WORDS = common dso_local global i32 0, align 4
@SKEIN_256_BLOCK_BYTES = common dso_local global i64 0, align 8
@SKEIN_FAIL = common dso_local global i32 0, align 4
@SKEIN_T1_FLAG_FINAL = common dso_local global i32 0, align 4
@OUT_FINAL = common dso_local global i32 0, align 4
@SKEIN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Skein_256_Final(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @SKEIN_256_STATE_WORDS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SKEIN_256_BLOCK_BYTES, align 8
  %20 = icmp ule i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @SKEIN_FAIL, align 4
  %23 = call i32 @Skein_Assert(i32 %21, i32 %22)
  %24 = load i32, i32* @SKEIN_T1_FLAG_FINAL, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %24
  store i32 %31, i32* %29, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SKEIN_256_BLOCK_BYTES, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i64, i64* @SKEIN_256_BLOCK_BYTES, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %47, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @bzero(i32* %46, i32 %53)
  br label %55

55:                                               ; preds = %38, %2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @Skein_256_Process_Block(%struct.TYPE_6__* %56, i32* %59, i32 1, i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 7
  %71 = ashr i32 %70, 3
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %7, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @bzero(i32* %75, i32 8)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = mul nuw i64 4, %12
  %81 = trunc i64 %80 to i32
  %82 = call i32 @bcopy(i32* %79, i32* %14, i32 %81)
  store i64 0, i64* %5, align 8
  br label %83

83:                                               ; preds = %141, %55
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @SKEIN_256_BLOCK_BYTES, align 8
  %86 = mul i64 %84, %85
  %87 = load i64, i64* %7, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %144

89:                                               ; preds = %83
  %90 = load i64, i64* %5, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @Skein_Swap64(i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @bcopy(i32* %10, i32* %95, i32 4)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = load i32, i32* @OUT_FINAL, align 4
  %99 = call i32 @Skein_Start_New_Type(%struct.TYPE_6__* %97, i32 %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @Skein_256_Process_Block(%struct.TYPE_6__* %100, i32* %103, i32 1, i32 4)
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @SKEIN_256_BLOCK_BYTES, align 8
  %108 = mul i64 %106, %107
  %109 = sub i64 %105, %108
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @SKEIN_256_BLOCK_BYTES, align 8
  %112 = icmp uge i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %89
  %114 = load i64, i64* @SKEIN_256_BLOCK_BYTES, align 8
  store i64 %114, i64* %6, align 8
  br label %115

115:                                              ; preds = %113, %89
  %116 = load i32*, i32** %4, align 8
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* @SKEIN_256_BLOCK_BYTES, align 8
  %119 = mul i64 %117, %118
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @Skein_Put64_LSB_First(i32* %120, i32* %123, i64 %124)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64, i64* %6, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* @SKEIN_256_BLOCK_BYTES, align 8
  %132 = mul i64 %130, %131
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = call i32 @Skein_Show_Final(i32 256, %struct.TYPE_7__* %127, i64 %128, i32* %133)
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = mul nuw i64 4, %12
  %139 = trunc i64 %138 to i32
  %140 = call i32 @bcopy(i32* %14, i32* %137, i32 %139)
  br label %141

141:                                              ; preds = %115
  %142 = load i64, i64* %5, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %5, align 8
  br label %83

144:                                              ; preds = %83
  %145 = load i32, i32* @SKEIN_SUCCESS, align 4
  %146 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %146)
  ret i32 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Skein_Assert(i32, i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @Skein_256_Process_Block(%struct.TYPE_6__*, i32*, i32, i32) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

declare dso_local i32 @Skein_Swap64(i32) #2

declare dso_local i32 @Skein_Start_New_Type(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @Skein_Put64_LSB_First(i32*, i32*, i64) #2

declare dso_local i32 @Skein_Show_Final(i32, %struct.TYPE_7__*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
