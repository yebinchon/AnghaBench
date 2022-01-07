; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_speex.c_ProcessPacket.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_speex.c_ProcessPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_20__*, i64, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i64 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_24__**)* @ProcessPacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @ProcessPacket(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, %struct.TYPE_24__** %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_24__**, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_24__** %2, %struct.TYPE_24__*** %7, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %8, align 8
  %21 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %9, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %24 = icmp ne %struct.TYPE_24__* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %3
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VLC_TICK_INVALID, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 4
  %37 = call i64 @date_Get(i32* %36)
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @date_Set(i32* %41, i64 %44)
  br label %46

46:                                               ; preds = %39, %31, %25, %3
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 4
  %49 = call i64 @date_Get(i32* %48)
  %50 = load i64, i64* @VLC_TICK_INVALID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %54 = icmp ne %struct.TYPE_24__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %57 = call i32 @block_Release(%struct.TYPE_24__* %56)
  br label %58

58:                                               ; preds = %55, %52
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  br label %185

59:                                               ; preds = %46
  %60 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %60, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %174

65:                                               ; preds = %59
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %170

72:                                               ; preds = %65
  store i16* null, i16** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %16, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 2, %79
  %81 = trunc i64 %80 to i32
  %82 = call i64 @xmalloc(i32 %81)
  %83 = inttoptr i64 %82 to i16*
  store i16* %83, i16** %10, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @speex_bits_read_from(i32* %85, i8* %89, i32 %92)
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = call i32 @speex_bits_remaining(i32* %95)
  store i32 %96, i32* %11, align 4
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load i16*, i16** %10, align 8
  %103 = call i32 @speex_decode_int(i32 %99, i32* %101, i16* %102)
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = call i32 @speex_bits_remaining(i32* %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = srem i32 %111, 8
  %113 = sub nsw i32 8, %112
  %114 = add nsw i32 %110, %113
  %115 = sdiv i32 %114, 8
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call %struct.TYPE_24__* @block_Alloc(i32 %116)
  store %struct.TYPE_24__* %117, %struct.TYPE_24__** %16, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @memset(i64 %120, i32 255, i32 %121)
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = call i32 @speex_bits_rewind(i32* %124)
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @speex_bits_write(i32* %127, i8* %131, i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = icmp sgt i32 %134, 7
  br i1 %135, label %136, label %160

136:                                              ; preds = %72
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %13, align 4
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i8*
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sub nsw i32 %147, %148
  %150 = call i32 @speex_bits_write(i32* %140, i8* %144, i32 %149)
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sub nsw i32 %154, %155
  %157 = call %struct.TYPE_24__* @block_Realloc(%struct.TYPE_24__* %151, i32 0, i32 %156)
  store %struct.TYPE_24__* %157, %struct.TYPE_24__** %9, align 8
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %159 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  store %struct.TYPE_24__* %158, %struct.TYPE_24__** %159, align 8
  br label %164

160:                                              ; preds = %72
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 0
  %163 = call i32 @speex_bits_reset(i32* %162)
  br label %164

164:                                              ; preds = %160, %136
  %165 = load i16*, i16** %10, align 8
  %166 = call i32 @free(i16* %165)
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %169 = call %struct.TYPE_24__* @SendPacket(%struct.TYPE_22__* %167, %struct.TYPE_24__* %168)
  store %struct.TYPE_24__* %169, %struct.TYPE_24__** %4, align 8
  br label %185

170:                                              ; preds = %65
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %173 = call %struct.TYPE_24__* @SendPacket(%struct.TYPE_22__* %171, %struct.TYPE_24__* %172)
  store %struct.TYPE_24__* %173, %struct.TYPE_24__** %4, align 8
  br label %185

174:                                              ; preds = %59
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %177 = call %struct.TYPE_24__* @DecodePacket(%struct.TYPE_22__* %175, %struct.TYPE_21__* %176)
  store %struct.TYPE_24__* %177, %struct.TYPE_24__** %17, align 8
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %179 = icmp ne %struct.TYPE_24__* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %182 = call i32 @block_Release(%struct.TYPE_24__* %181)
  br label %183

183:                                              ; preds = %180, %174
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* %184, %struct.TYPE_24__** %4, align 8
  br label %185

185:                                              ; preds = %183, %170, %164, %58
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  ret %struct.TYPE_24__* %186
}

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i32 @block_Release(%struct.TYPE_24__*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @speex_bits_read_from(i32*, i8*, i32) #1

declare dso_local i32 @speex_bits_remaining(i32*) #1

declare dso_local i32 @speex_decode_int(i32, i32*, i16*) #1

declare dso_local %struct.TYPE_24__* @block_Alloc(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @speex_bits_rewind(i32*) #1

declare dso_local i32 @speex_bits_write(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_24__* @block_Realloc(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @speex_bits_reset(i32*) #1

declare dso_local i32 @free(i16*) #1

declare dso_local %struct.TYPE_24__* @SendPacket(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @DecodePacket(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
