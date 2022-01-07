; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_dxa9.c_DXA9_NV12.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_dxa9.c_DXA9_NV12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_22__ = type { i32, i32* }

@.str = private unnamed_addr constant [48 x i8] c"Unsupported DXA9 conversion from 0x%08X to NV12\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_18__*)* @DXA9_NV12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DXA9_NV12(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_21__, align 8
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca [2 x i32*], align 16
  %12 = alloca [2 x i64], align 16
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %7, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = call %struct.TYPE_19__* @ActiveD3D9PictureSys(%struct.TYPE_18__* %17)
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %8, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @GetLock(%struct.TYPE_20__* %19, i32 %22, %struct.TYPE_22__* %10, %struct.TYPE_21__* %9)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %85

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @MAKEFOURCC(i8 signext 78, i8 signext 86, i8 signext 49, i8 signext 50)
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @MAKEFOURCC(i8 signext 80, i8 signext 48, i8 signext 49, i8 signext 48)
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %31, %26
  %37 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %37, align 8
  %40 = getelementptr inbounds i32*, i32** %37, i64 1
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %44, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  store i32* %49, i32** %40, align 8
  %50 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %50, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 1
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %54, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %66, %70
  %72 = call i32 @__MIN(i32 %62, i64 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @Copy420_SP_to_SP(%struct.TYPE_18__* %58, i32** %59, i64* %60, i32 %72, i32* %73)
  br label %80

75:                                               ; preds = %31
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @msg_Err(%struct.TYPE_20__* %76, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %75, %36
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @IDirect3DSurface9_UnlockRect(i32 %83)
  br label %85

85:                                               ; preds = %80, %25
  ret void
}

declare dso_local %struct.TYPE_19__* @ActiveD3D9PictureSys(%struct.TYPE_18__*) #1

declare dso_local i32 @GetLock(%struct.TYPE_20__*, i32, %struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i64 @MAKEFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @Copy420_SP_to_SP(%struct.TYPE_18__*, i32**, i64*, i32, i32*) #1

declare dso_local i32 @__MIN(i32, i64) #1

declare dso_local i32 @msg_Err(%struct.TYPE_20__*, i8*, i64) #1

declare dso_local i32 @IDirect3DSurface9_UnlockRect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
