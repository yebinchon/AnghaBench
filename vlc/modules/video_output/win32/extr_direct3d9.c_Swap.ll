; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Swap.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_23__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Failed Present: 0x%lX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @Swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Swap(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %3, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 3
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 0
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 2
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %20, align 4
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %1
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @IDirect3DDevice9Ex_PresentEx(i32 %36, %struct.TYPE_24__* %5, %struct.TYPE_24__* %5, i32 %40, i32* null, i32 0)
  store i32 %41, i32* %6, align 4
  br label %51

42:                                               ; preds = %1
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @IDirect3DDevice9_Present(i32 %45, %struct.TYPE_24__* %5, %struct.TYPE_24__* %5, i32 %49, i32* null)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %42, %33
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @FAILED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @msg_Dbg(%struct.TYPE_21__* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  ret void
}

declare dso_local i32 @IDirect3DDevice9Ex_PresentEx(i32, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32*, i32) #1

declare dso_local i32 @IDirect3DDevice9_Present(i32, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_21__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
