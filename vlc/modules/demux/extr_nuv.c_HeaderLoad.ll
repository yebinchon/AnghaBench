; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_nuv.c_HeaderLoad.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_nuv.c_HeaderLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i8*, i8*, i8*, i8*, i64, i8*, i8*, i32, i32, i32, i8*, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)* @HeaderLoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HeaderLoad(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca [72 x i32], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 0
  %11 = call i32 @vlc_stream_Read(i32 %9, i32* %10, i32 72)
  %12 = icmp ne i32 %11, 72
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %14, i32* %3, align 4
  br label %80

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 0
  %20 = call i32 @memcpy(i32 %18, i32* %19, i32 12)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 12
  %25 = call i32 @memcpy(i32 %23, i32* %24, i32 5)
  %26 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 20
  %27 = call i8* @GetDWLE(i32* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 24
  %31 = call i8* @GetDWLE(i32* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 28
  %35 = call i8* @GetDWLE(i32* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 12
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 32
  %39 = call i8* @GetDWLE(i32* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 11
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 36
  %43 = load i32, i32* %42, align 16
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 5
  %48 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 40
  %49 = call i32 @GetDoubleLE(i64* %47, i32* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 48
  %53 = call i32 @GetDoubleLE(i64* %51, i32* %52)
  %54 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 56
  %55 = call i8* @GetDWLE(i32* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 60
  %59 = call i8* @GetDWLE(i32* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 64
  %63 = call i8* @GetDWLE(i32* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = getelementptr inbounds [72 x i32], [72 x i32]* %6, i64 0, i64 68
  %67 = call i8* @GetDWLE(i32* %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %15
  %75 = load i32, i32* @VLC_SUCCESS, align 4
  br label %78

76:                                               ; preds = %15
  %77 = load i32, i32* @VLC_EGENERIC, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @vlc_stream_Read(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @GetDWLE(i32*) #1

declare dso_local i32 @GetDoubleLE(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
