; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v01.c_ZSTD_decodeSequence.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v01.c_ZSTD_decodeSequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i32*, i32, i32, i32, i32, i32* }

@MaxLL = common dso_local global i64 0, align 8
@MaxML = common dso_local global i64 0, align 8
@MINMATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @ZSTD_decodeSequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZSTD_decodeSequence(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = call i8* @FSE_decodeSymbol(i32* %22, i32* %24)
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i64 [ %32, %29 ], [ %36, %33 ]
  store i64 %38, i64* %6, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @MaxLL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %37
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ult i32* %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %9, align 8
  %54 = load i32, i32* %52, align 4
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ %54, %51 ], [ 0, %55 ]
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 255
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %5, align 8
  br label %76

65:                                               ; preds = %56
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 -3
  %69 = icmp ule i32* %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32*, i32** %9, align 8
  %72 = call i64 @ZSTD_readLE24(i32* %71)
  store i64 %72, i64* %5, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32* %74, i32** %9, align 8
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %60
  br label %77

77:                                               ; preds = %76, %37
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = call i8* @FSE_decodeSymbol(i32* %79, i32* %81)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %12, align 4
  %84 = call i64 (...) @ZSTD_32bits()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = call i32 @FSE_reloadDStream(i32* %88)
  br label %90

90:                                               ; preds = %86, %77
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %95, %90
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = and i64 %98, 63
  %100 = shl i64 1, %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %13, align 4
  %104 = call i64 @FSE_readBits(i32* %102, i32 %103)
  %105 = add i64 %100, %104
  store i64 %105, i64* %7, align 8
  %106 = call i64 (...) @ZSTD_32bits()
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %96
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = call i32 @FSE_reloadDStream(i32* %110)
  br label %112

112:                                              ; preds = %108, %96
  %113 = load i32, i32* %12, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i64, i64* %6, align 8
  store i64 %116, i64* %7, align 8
  br label %117

117:                                              ; preds = %115, %112
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = call i8* @FSE_decodeSymbol(i32* %119, i32* %121)
  %123 = ptrtoint i8* %122 to i64
  store i64 %123, i64* %8, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* @MaxML, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %157

127:                                              ; preds = %117
  %128 = load i32*, i32** %9, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = icmp ult i32* %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %9, align 8
  %134 = load i32, i32* %132, align 4
  br label %136

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i32 [ %134, %131 ], [ 0, %135 ]
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp slt i32 %138, 255
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %8, align 8
  %144 = add i64 %143, %142
  store i64 %144, i64* %8, align 8
  br label %156

145:                                              ; preds = %136
  %146 = load i32*, i32** %9, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 -3
  %149 = icmp ule i32* %146, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i32*, i32** %9, align 8
  %152 = call i64 @ZSTD_readLE24(i32* %151)
  store i64 %152, i64* %8, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  store i32* %154, i32** %9, align 8
  br label %155

155:                                              ; preds = %150, %145
  br label %156

156:                                              ; preds = %155, %140
  br label %157

157:                                              ; preds = %156, %117
  %158 = load i64, i64* @MINMATCH, align 8
  %159 = load i64, i64* %8, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %8, align 8
  %161 = load i64, i64* %5, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  store i64 %161, i64* %163, align 8
  %164 = load i64, i64* %7, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* %8, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  store i32* %170, i32** %172, align 8
  ret void
}

declare dso_local i8* @FSE_decodeSymbol(i32*, i32*) #1

declare dso_local i64 @ZSTD_readLE24(i32*) #1

declare dso_local i64 @ZSTD_32bits(...) #1

declare dso_local i32 @FSE_reloadDStream(i32*) #1

declare dso_local i64 @FSE_readBits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
