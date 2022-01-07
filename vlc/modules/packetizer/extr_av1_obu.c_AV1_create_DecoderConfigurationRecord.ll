; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1_obu.c_AV1_create_DecoderConfigurationRecord.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1_obu.c_AV1_create_DecoderConfigurationRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AV1_create_DecoderConfigurationRecord(i32** %0, %struct.TYPE_7__* %1, i64 %2, i32** %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32** %3, i32*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 4, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %18

18:                                               ; preds = %29, %5
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i64*, i64** %11, align 8
  %24 = load i64, i64* %13, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %12, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %12, align 8
  br label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %13, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %13, align 8
  br label %18

32:                                               ; preds = %18
  %33 = load i64, i64* %12, align 8
  %34 = call i32* @malloc(i64 %33)
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i64 0, i64* %6, align 8
  br label %119

38:                                               ; preds = %32
  %39 = load i32*, i32** %14, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @bs_write_init(i32* %15, i32* %39, i64 %40)
  %42 = call i32 @bs_write(i32* %15, i32 1, i32 1)
  %43 = call i32 @bs_write(i32* %15, i32 7, i32 1)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bs_write(i32* %15, i32 3, i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bs_write(i32* %15, i32 5, i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bs_write(i32* %15, i32 1, i32 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bs_write(i32* %15, i32 1, i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bs_write(i32* %15, i32 1, i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bs_write(i32* %15, i32 1, i32 %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bs_write(i32* %15, i32 1, i32 %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @bs_write(i32* %15, i32 1, i32 %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bs_write(i32* %15, i32 2, i32 %90)
  %92 = call i32 @bs_write(i32* %15, i32 3, i32 0)
  %93 = call i32 @bs_write(i32* %15, i32 1, i32 0)
  %94 = call i32 @bs_write(i32* %15, i32 4, i32 0)
  store i64 4, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %95

95:                                               ; preds = %112, %38
  %96 = load i64, i64* %17, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i32*, i32** %14, align 8
  %101 = load i64, i64* %16, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32**, i32*** %10, align 8
  %104 = load i64, i64* %17, align 8
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = load i64*, i64** %11, align 8
  %108 = load i64, i64* %17, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @memcpy(i32* %102, i32* %106, i64 %110)
  br label %112

112:                                              ; preds = %99
  %113 = load i64, i64* %17, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %17, align 8
  br label %95

115:                                              ; preds = %95
  %116 = load i32*, i32** %14, align 8
  %117 = load i32**, i32*** %7, align 8
  store i32* %116, i32** %117, align 8
  %118 = load i64, i64* %12, align 8
  store i64 %118, i64* %6, align 8
  br label %119

119:                                              ; preds = %115, %37
  %120 = load i64, i64* %6, align 8
  ret i64 %120
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @bs_write_init(i32*, i32*, i64) #1

declare dso_local i32 @bs_write(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
