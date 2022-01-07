; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_OLECONVERT_CreateOlePresStream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_OLECONVERT_CreateOlePresStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32* }

@OLECONVERT_CreateOlePresStream.wstrStreamName = internal constant [12 x i32] [i32 2, i32 79, i32 108, i32 101, i32 80, i32 114, i32 101, i32 115, i32 48, i32 48, i32 48, i32 0], align 16
@OLECONVERT_CreateOlePresStream.pOlePresStreamHeader = internal constant <{ [20 x i32], [8 x i32] }> <{ [20 x i32] [i32 255, i32 255, i32 255, i32 255, i32 3, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255], [8 x i32] zeroinitializer }>, align 16
@OLECONVERT_CreateOlePresStream.pOlePresStreamHeaderEmpty = internal constant <{ [16 x i32], [8 x i32] }> <{ [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255], [8 x i32] zeroinitializer }>, align 16
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_WRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32)* @OLECONVERT_CreateOlePresStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OLECONVERT_CreateOlePresStream(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @STGM_CREATE, align 4
  %17 = load i32, i32* @STGM_WRITE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @IStorage_CreateStream(i32 %15, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @OLECONVERT_CreateOlePresStream.wstrStreamName, i64 0, i64 0), i32 %20, i32 0, i32 0, i32** %12)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %83

25:                                               ; preds = %5
  %26 = call i32 @memset(%struct.TYPE_3__* %14, i32 0, i32 32)
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @memcpy(i32* %31, i32* getelementptr inbounds ([28 x i32], [28 x i32]* bitcast (<{ [20 x i32], [8 x i32] }>* @OLECONVERT_CreateOlePresStream.pOlePresStreamHeader to [28 x i32]*), i64 0, i64 0), i32 112)
  store i32 112, i32* %13, align 4
  br label %37

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @memcpy(i32* %35, i32* getelementptr inbounds ([24 x i32], [24 x i32]* bitcast (<{ [16 x i32], [8 x i32] }>* @OLECONVERT_CreateOlePresStream.pOlePresStreamHeaderEmpty to [24 x i32]*), i64 0, i64 0), i32 96)
  store i32 96, i32* %13, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 0, %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %44, 4
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  store i32 %50, i32* %51, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  store i32* %53, i32** %54, align 8
  br label %55

55:                                               ; preds = %46, %37
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i64 @IStream_Write(i32* %56, i32* %58, i32 %59, i32* null)
  store i64 %60, i64* %11, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %63 = call i64 @IStream_Write(i32* %61, i32* %62, i32 4, i32* null)
  store i64 %63, i64* %11, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %66 = call i64 @IStream_Write(i32* %64, i32* %65, i32 4, i32* null)
  store i64 %66, i64* %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %69 = call i64 @IStream_Write(i32* %67, i32* %68, i32 4, i32* null)
  store i64 %69, i64* %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %55
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @IStream_Write(i32* %74, i32* %76, i32 %78, i32* null)
  store i64 %79, i64* %11, align 8
  br label %80

80:                                               ; preds = %73, %55
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @IStream_Release(i32* %81)
  br label %83

83:                                               ; preds = %80, %5
  ret void
}

declare dso_local i64 @IStorage_CreateStream(i32, i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @IStream_Write(i32*, i32*, i32, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
