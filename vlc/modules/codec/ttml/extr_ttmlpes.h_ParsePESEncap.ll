; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_ttmlpes.h_ParsePESEncap.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_ttmlpes.h_ParsePESEncap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttml_in_pes_ctx = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i64* }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_TICK_0 = common dso_local global i64 0, align 8
@TTML_UNCOMPRESSED_DOCUMENT = common dso_local global i64 0, align 8
@TTML_GZIP_COMPRESSED_DOCUMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ttml_in_pes_ctx*, i32 (i32*, %struct.TYPE_9__*)*, %struct.TYPE_9__*)* @ParsePESEncap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParsePESEncap(i32* %0, %struct.ttml_in_pes_ctx* %1, i32 (i32*, %struct.TYPE_9__*)* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ttml_in_pes_ctx*, align 8
  %8 = alloca i32 (i32*, %struct.TYPE_9__*)*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ttml_in_pes_ctx* %1, %struct.ttml_in_pes_ctx** %7, align 8
  store i32 (i32*, %struct.TYPE_9__*)* %2, i32 (i32*, %struct.TYPE_9__*)** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = icmp eq %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %21, i32* %5, align 4
  br label %164

22:                                               ; preds = %4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 7
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %29 = call i32 @block_Release(%struct.TYPE_9__* %28)
  %30 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %30, i32* %5, align 4
  br label %164

31:                                               ; preds = %22
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ttml_in_pes_ctx*, %struct.ttml_in_pes_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.ttml_in_pes_ctx, %struct.ttml_in_pes_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = call i32 @block_Release(%struct.TYPE_9__* %40)
  %42 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %42, i32* %5, align 4
  br label %164

43:                                               ; preds = %31
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 @GetDWBE(i64* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 %48, 16
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 4
  %54 = call i32 @GetWBE(i64* %53)
  %55 = or i32 %49, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = mul nsw i32 %56, 100
  store i32 %57, i32* %10, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 6
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 7
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %12, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 7
  store i64* %71, i64** %13, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VLC_TICK_0, align 8
  %76 = sub nsw i64 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %76, %78
  %80 = load %struct.ttml_in_pes_ctx*, %struct.ttml_in_pes_ctx** %7, align 8
  %81 = getelementptr inbounds %struct.ttml_in_pes_ctx, %struct.ttml_in_pes_ctx* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  store i64 0, i64* %14, align 8
  br label %82

82:                                               ; preds = %152, %43
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %155

86:                                               ; preds = %82
  %87 = load i64, i64* %12, align 8
  %88 = icmp ult i64 %87, 3
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %155

90:                                               ; preds = %86
  %91 = load i64*, i64** %13, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %15, align 8
  %94 = load i64*, i64** %13, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  %96 = call i32 @GetWBE(i64* %95)
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %16, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* %12, align 8
  %100 = sub i64 %99, 3
  %101 = icmp ugt i64 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %155

103:                                              ; preds = %90
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %17, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* @TTML_UNCOMPRESSED_DOCUMENT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = load i64, i64* %16, align 8
  %109 = call %struct.TYPE_9__* @block_Alloc(i64 %108)
  store %struct.TYPE_9__* %109, %struct.TYPE_9__** %17, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %111 = icmp ne %struct.TYPE_9__* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i64*, i64** %114, align 8
  %116 = load i64*, i64** %13, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 3
  %118 = load i64, i64* %16, align 8
  %119 = call i32 @memcpy(i64* %115, i64* %117, i64 %118)
  br label %120

120:                                              ; preds = %112, %107
  br label %132

121:                                              ; preds = %103
  %122 = load i64, i64* %15, align 8
  %123 = load i64, i64* @TTML_GZIP_COMPRESSED_DOCUMENT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load i32*, i32** %6, align 8
  %127 = load i64*, i64** %13, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 3
  %129 = load i64, i64* %16, align 8
  %130 = call %struct.TYPE_9__* @DecompressTTML(i32* %126, i64* %128, i64 %129)
  store %struct.TYPE_9__* %130, %struct.TYPE_9__** %17, align 8
  br label %131

131:                                              ; preds = %125, %121
  br label %132

132:                                              ; preds = %131, %120
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %134 = icmp ne %struct.TYPE_9__* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %138 = call i32 @block_CopyProperties(%struct.TYPE_9__* %136, %struct.TYPE_9__* %137)
  %139 = load i32 (i32*, %struct.TYPE_9__*)*, i32 (i32*, %struct.TYPE_9__*)** %8, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %142 = call i32 %139(i32* %140, %struct.TYPE_9__* %141)
  br label %143

143:                                              ; preds = %135, %132
  %144 = load i64, i64* %16, align 8
  %145 = add i64 3, %144
  %146 = load i64*, i64** %13, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 %145
  store i64* %147, i64** %13, align 8
  %148 = load i64, i64* %16, align 8
  %149 = add i64 3, %148
  %150 = load i64, i64* %12, align 8
  %151 = sub i64 %150, %149
  store i64 %151, i64* %12, align 8
  br label %152

152:                                              ; preds = %143
  %153 = load i64, i64* %14, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %14, align 8
  br label %82

155:                                              ; preds = %102, %89, %82
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.ttml_in_pes_ctx*, %struct.ttml_in_pes_ctx** %7, align 8
  %160 = getelementptr inbounds %struct.ttml_in_pes_ctx, %struct.ttml_in_pes_ctx* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %162 = call i32 @block_Release(%struct.TYPE_9__* %161)
  %163 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %155, %39, %27, %20
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @block_Release(%struct.TYPE_9__*) #1

declare dso_local i32 @GetDWBE(i64*) #1

declare dso_local i32 @GetWBE(i64*) #1

declare dso_local %struct.TYPE_9__* @block_Alloc(i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local %struct.TYPE_9__* @DecompressTTML(i32*, i64*, i64) #1

declare dso_local i32 @block_CopyProperties(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
