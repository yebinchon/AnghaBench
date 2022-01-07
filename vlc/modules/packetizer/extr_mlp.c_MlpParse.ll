; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_mlp.c_MlpParse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_mlp.c_MlpParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@MLP_HEADER_SYNC = common dso_local global i64 0, align 8
@pu_start_code = common dso_local global i32 0, align 4
@MlpParse.pu_channels = internal constant <{ [21 x i32], [11 x i32] }> <{ [21 x i32] [i32 1, i32 2, i32 3, i32 4, i32 3, i32 4, i32 5, i32 3, i32 4, i32 5, i32 4, i32 5, i32 6, i32 4, i32 5, i32 4, i32 5, i32 6, i32 5, i32 5, i32 6], [11 x i32] zeroinitializer }>, align 16
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @MlpParse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MlpParse(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i64, i64* @MLP_HEADER_SYNC, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @pu_start_code, align 4
  %14 = call i32 @memcmp(i32* %12, i32 %13, i32 3)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i64, i64* @MLP_HEADER_SYNC, align 8
  %22 = sub nsw i64 %21, 3
  %23 = call i32 @bs_init(i32* %6, i32* %20, i64 %22)
  %24 = call i32 @bs_read(i32* %6, i32 8)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 187
  br i1 %30, label %31, label %43

31:                                               ; preds = %2
  %32 = call i32 @bs_skip(i32* %6, i32 8)
  %33 = call i32 @bs_read(i32* %6, i32 4)
  store i32 %33, i32* %7, align 4
  %34 = call i32 @bs_skip(i32* %6, i32 4)
  %35 = call i32 @bs_skip(i32* %6, i32 11)
  %36 = call i32 @bs_read(i32* %6, i32 5)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* bitcast (<{ [21 x i32], [11 x i32] }>* @MlpParse.pu_channels to [32 x i32]*), i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %72

43:                                               ; preds = %2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 186
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  %49 = call i32 @bs_read(i32* %6, i32 4)
  store i32 %49, i32* %7, align 4
  %50 = call i32 @bs_skip(i32* %6, i32 8)
  %51 = call i32 @bs_read(i32* %6, i32 5)
  store i32 %51, i32* %9, align 4
  %52 = call i32 @bs_skip(i32* %6, i32 2)
  %53 = call i32 @bs_read(i32* %6, i32 13)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = call i8* @TrueHdChannels(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %68

62:                                               ; preds = %48
  %63 = load i32, i32* %9, align 4
  %64 = call i8* @TrueHdChannels(i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %56
  br label %71

69:                                               ; preds = %43
  %70 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %70, i32* %3, align 4
  br label %115

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %71, %31
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 15
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 0, i32* %77, align 8
  br label %89

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 8
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 44100, i32 48000
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 7
  %86 = shl i32 %83, %85
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %78, %75
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 7
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, 7
  %94 = shl i32 40, %93
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = call i32 @bs_skip(i32* %6, i32 48)
  %98 = call i32 @bs_read(i32* %6, i32 1)
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = call i32 @bs_read(i32* %6, i32 15)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %101, %104
  %106 = add nsw i32 %105, 8
  %107 = sdiv i32 %106, 16
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = call i32 @bs_read(i32* %6, i32 4)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  %113 = call i32 @bs_skip(i32* %6, i32 92)
  %114 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %89, %69
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @bs_init(i32*, i32*, i64) #1

declare dso_local i32 @bs_read(i32*, i32) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i8* @TrueHdChannels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
