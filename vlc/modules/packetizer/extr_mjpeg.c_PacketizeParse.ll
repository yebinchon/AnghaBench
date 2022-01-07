; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_mjpeg.c_PacketizeParse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_mjpeg.c_PacketizeParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32, i64, i64, i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i32 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@BLOCK_FLAG_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (i8*, i32*, %struct.TYPE_16__*)* @PacketizeParse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @PacketizeParse(i8* %0, i32* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %7, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %8, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32* %23, i32** %9, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %107, %3
  %30 = load i64, i64* %10, align 8
  %31 = icmp ugt i64 %30, 4
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 255
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i1 [ false, %29 ], [ %36, %32 ]
  br i1 %38, label %39, label %114

39:                                               ; preds = %37
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = call i32 @GetWBE(i32* %41)
  %43 = add nsw i32 2, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %114

49:                                               ; preds = %39
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 192
  br i1 %53, label %54, label %107

54:                                               ; preds = %49
  %55 = load i64, i64* %10, align 8
  %56 = icmp ugt i64 %55, 9
  br i1 %56, label %57, label %107

57:                                               ; preds = %54
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = call i32 @GetWBE(i32* %59)
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %12, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  %64 = call i32 @GetWBE(i32* %63)
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %57
  %69 = load i64, i64* %13, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %106

71:                                               ; preds = %68
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %71
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %79, %71
  %88 = load i64, i64* %13, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  store i64 %88, i64* %92, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store i64 %88, i64* %96, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  store i64 %97, i64* %101, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i64 %97, i64* %105, align 8
  br label %106

106:                                              ; preds = %87, %79, %68, %57
  br label %114

107:                                              ; preds = %54, %49
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %10, align 8
  %110 = sub i64 %109, %108
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 %111
  store i32* %113, i32** %9, align 8
  br label %29

114:                                              ; preds = %106, %48, %37
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @VLC_TICK_INVALID, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  br label %139

126:                                              ; preds = %114
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @VLC_TICK_INVALID, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 3
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %132, %126
  br label %139

139:                                              ; preds = %138, %120
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = call i8* @date_Get(i32* %141)
  %143 = ptrtoint i8* %142 to i64
  store i64 %143, i64* %14, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @VLC_TICK_INVALID, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %139
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @date_Set(i32* %151, i64 %154)
  br label %183

156:                                              ; preds = %139
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %182

163:                                              ; preds = %156
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %163
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = call i32 @date_Increment(i32* %172, i32 1)
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  %176 = call i8* @date_Get(i32* %175)
  %177 = ptrtoint i8* %176 to i64
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  store i64 %177, i64* %179, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  store i64 %177, i64* %181, align 8
  br label %182

182:                                              ; preds = %170, %163, %156
  br label %183

183:                                              ; preds = %182, %149
  %184 = load i64, i64* %14, align 8
  %185 = load i64, i64* @VLC_TICK_INVALID, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %201

187:                                              ; preds = %183
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @VLC_TICK_INVALID, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %187
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %14, align 8
  %198 = sub nsw i64 %196, %197
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 5
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %193, %187, %183
  %202 = load i32*, i32** %5, align 8
  store i32 1, i32* %202, align 4
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %207 = or i32 %205, %206
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  store i32 0, i32* %211, align 4
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  ret %struct.TYPE_16__* %212
}

declare dso_local i32 @GetWBE(i32*) #1

declare dso_local i8* @date_Get(i32*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i32 @date_Increment(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
