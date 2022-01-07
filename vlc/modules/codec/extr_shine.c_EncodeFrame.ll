; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_shine.c_EncodeFrame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_shine.c_EncodeFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i64, i32 }

@SHINE_MAX_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_25__* (%struct.TYPE_23__*, %struct.TYPE_25__*)* @EncodeFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_25__* @EncodeFrame(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [2 x i32*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %19 = icmp ne %struct.TYPE_25__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %3, align 8
  br label %145

21:                                               ; preds = %2
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %8, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 2
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @vlc_tick_from_samples(i32 %32, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %44 = call i32 @VLC_UNUSED(%struct.TYPE_23__* %43)
  br label %45

45:                                               ; preds = %140, %21
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %48 = call %struct.TYPE_25__* @GetPCM(%struct.TYPE_23__* %46, %struct.TYPE_25__* %47)
  store %struct.TYPE_25__* %48, %struct.TYPE_25__** %7, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %50 = icmp ne %struct.TYPE_25__* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %143

52:                                               ; preds = %45
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %5, align 8
  %53 = load i32, i32* @SHINE_MAX_SAMPLES, align 4
  %54 = mul nsw i32 %53, 2
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %11, align 8
  %57 = alloca i32, i64 %55, align 16
  store i64 %55, i64* %12, align 8
  %58 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 0
  %59 = getelementptr inbounds i32, i32* %57, i64 0
  store i32* %59, i32** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 1
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %57, i64 %63
  store i32* %64, i32** %60, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @aout_Deinterleave(i32* %57, i32 %67, i64 %70, i32 %75, i32 %79)
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 0
  %85 = call i8* @shine_encode_buffer(i32 %83, i32** %84, i32* %14)
  store i8* %85, i8** %15, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %87 = call i32 @block_Release(%struct.TYPE_25__* %86)
  %88 = load i32, i32* %14, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %52
  store i32 2, i32* %16, align 4
  br label %136

91:                                               ; preds = %52
  %92 = load i32, i32* %14, align 4
  %93 = call %struct.TYPE_25__* @block_Alloc(i32 %92)
  store %struct.TYPE_25__* %93, %struct.TYPE_25__** %17, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %95 = icmp ne %struct.TYPE_25__* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  store i32 2, i32* %16, align 4
  br label %136

97:                                               ; preds = %91
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @memcpy(i32 %100, i8* %101, i32 %102)
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @vlc_tick_from_samples(i32 %107, i32 %112)
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 4
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 3
  store i32 %123, i32* %127, align 4
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %135 = call i32 @block_ChainAppend(%struct.TYPE_25__** %8, %struct.TYPE_25__* %134)
  store i32 0, i32* %16, align 4
  br label %136

136:                                              ; preds = %97, %96, %90
  %137 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %16, align 4
  switch i32 %138, label %147 [
    i32 0, label %139
    i32 2, label %143
  ]

139:                                              ; preds = %136
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %142 = icmp ne %struct.TYPE_25__* %141, null
  br i1 %142, label %45, label %143

143:                                              ; preds = %140, %136, %51
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_25__* %144, %struct.TYPE_25__** %3, align 8
  br label %145

145:                                              ; preds = %143, %20
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  ret %struct.TYPE_25__* %146

147:                                              ; preds = %136
  unreachable
}

declare dso_local i64 @vlc_tick_from_samples(i32, i32) #1

declare dso_local i32 @VLC_UNUSED(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_25__* @GetPCM(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @aout_Deinterleave(i32*, i32, i64, i32, i32) #1

declare dso_local i8* @shine_encode_buffer(i32, i32**, i32*) #1

declare dso_local i32 @block_Release(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @block_Alloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @block_ChainAppend(%struct.TYPE_25__**, %struct.TYPE_25__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
