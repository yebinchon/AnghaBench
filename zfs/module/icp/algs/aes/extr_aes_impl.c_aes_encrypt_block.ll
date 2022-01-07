; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_impl.c_aes_encrypt_block.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/aes/extr_aes_impl.c_aes_encrypt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i64, i32 (i32*, i32, i32*, i32*)* }

@AES_BLOCK_LEN = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_encrypt_block(i8* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load i32**, i32*** %5, align 8
  %17 = load i32**, i32*** %6, align 8
  %18 = call i64 @IS_P2ALIGNED2(i32** %16, i32** %17, i32 4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32 (i32*, i32, i32*, i32*)*, i32 (i32*, i32, i32*, i32*)** %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32**, i32*** %5, align 8
  %38 = bitcast i32** %37 to i32*
  %39 = load i32**, i32*** %6, align 8
  %40 = bitcast i32** %39 to i32*
  %41 = call i32 %28(i32* %33, i32 %36, i32* %38, i32* %40)
  br label %139

42:                                               ; preds = %20, %3
  %43 = load i32, i32* @AES_BLOCK_LEN, align 4
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %44, 4
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %9, align 8
  %47 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %10, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %42
  %53 = load i32**, i32*** %5, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = bitcast i32** %54 to i8*
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @htonl(i32 %57)
  %59 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %58, i32* %59, align 16
  %60 = load i32**, i32*** %5, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 4
  %62 = bitcast i32** %61 to i8*
  %63 = bitcast i8* %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @htonl(i32 %64)
  %66 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %65, i32* %66, align 4
  %67 = load i32**, i32*** %5, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 8
  %69 = bitcast i32** %68 to i8*
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @htonl(i32 %71)
  %73 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %72, i32* %73, align 8
  %74 = load i32**, i32*** %5, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 12
  %76 = bitcast i32** %75 to i8*
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @htonl(i32 %78)
  %80 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 %79, i32* %80, align 4
  br label %86

81:                                               ; preds = %42
  %82 = load i32**, i32*** %5, align 8
  %83 = bitcast i32* %47 to i32**
  %84 = load i32, i32* @AES_BLOCK_LEN, align 4
  %85 = call i32 @bcopy(i32** %82, i32** %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %52
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32 (i32*, i32, i32*, i32*)*, i32 (i32*, i32, i32*, i32*)** %88, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %89(i32* %94, i32 %97, i32* %47, i32* %47)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %132

103:                                              ; preds = %86
  %104 = getelementptr inbounds i32, i32* %47, i64 0
  %105 = load i32, i32* %104, align 16
  %106 = call i32 @htonl(i32 %105)
  %107 = load i32**, i32*** %6, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 0
  %109 = bitcast i32** %108 to i8*
  %110 = bitcast i8* %109 to i32*
  store i32 %106, i32* %110, align 4
  %111 = getelementptr inbounds i32, i32* %47, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @htonl(i32 %112)
  %114 = load i32**, i32*** %6, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 4
  %116 = bitcast i32** %115 to i8*
  %117 = bitcast i8* %116 to i32*
  store i32 %113, i32* %117, align 4
  %118 = getelementptr inbounds i32, i32* %47, i64 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @htonl(i32 %119)
  %121 = load i32**, i32*** %6, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 8
  %123 = bitcast i32** %122 to i8*
  %124 = bitcast i8* %123 to i32*
  store i32 %120, i32* %124, align 4
  %125 = getelementptr inbounds i32, i32* %47, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @htonl(i32 %126)
  %128 = load i32**, i32*** %6, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 12
  %130 = bitcast i32** %129 to i8*
  %131 = bitcast i8* %130 to i32*
  store i32 %127, i32* %131, align 4
  br label %137

132:                                              ; preds = %86
  %133 = bitcast i32* %47 to i32**
  %134 = load i32**, i32*** %6, align 8
  %135 = load i32, i32* @AES_BLOCK_LEN, align 4
  %136 = call i32 @bcopy(i32** %133, i32** %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %103
  %138 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %138)
  br label %139

139:                                              ; preds = %137, %25
  %140 = load i32, i32* @CRYPTO_SUCCESS, align 4
  ret i32 %140
}

declare dso_local i64 @IS_P2ALIGNED2(i32**, i32**, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @bcopy(i32**, i32**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
