; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_DetectPacketSize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_DetectPacketSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }

@TS_PACKET_SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cannot peek\00", align 1
@TS_PACKET_SIZE_188 = common dso_local global i32 0, align 4
@TS_PACKET_SIZE_192 = common dso_local global i32 0, align 4
@TS_PACKET_SIZE_204 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"this does not look like a TS stream, continuing\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"TS module discarded (lost sync)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @DetectPacketSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DetectPacketSize(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @TS_PACKET_SIZE_MAX, align 4
  %16 = add nsw i32 %14, %15
  %17 = call i32 @vlc_stream_Peek(i32 %13, i32** %8, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @TS_PACKET_SIZE_MAX, align 4
  %20 = add nsw i32 %18, %19
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %194

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %178, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @TS_PACKET_SIZE_MAX, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %181

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 71
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %178

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TS_PACKET_SIZE_MAX, align 4
  %41 = mul nsw i32 %40, 3
  %42 = add nsw i32 %39, %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %42, %43
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @vlc_stream_Peek(i32 %48, i32** %8, i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = call i32 @msg_Dbg(%struct.TYPE_7__* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %194

56:                                               ; preds = %38
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* @TS_PACKET_SIZE_188, align 4
  %62 = mul nsw i32 1, %61
  %63 = add nsw i32 %60, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %57, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 71
  br i1 %67, label %68, label %94

68:                                               ; preds = %56
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* @TS_PACKET_SIZE_188, align 4
  %74 = mul nsw i32 2, %73
  %75 = add nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %69, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 71
  br i1 %79, label %80, label %94

80:                                               ; preds = %68
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* @TS_PACKET_SIZE_188, align 4
  %86 = mul nsw i32 3, %85
  %87 = add nsw i32 %84, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %81, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 71
  br i1 %91, label %92, label %94

92:                                               ; preds = %80
  %93 = load i32, i32* @TS_PACKET_SIZE_188, align 4
  store i32 %93, i32* %4, align 4
  br label %194

94:                                               ; preds = %80, %68, %56
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* @TS_PACKET_SIZE_192, align 4
  %100 = mul nsw i32 1, %99
  %101 = add nsw i32 %98, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %95, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 71
  br i1 %105, label %106, label %137

106:                                              ; preds = %94
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* @TS_PACKET_SIZE_192, align 4
  %112 = mul nsw i32 2, %111
  %113 = add nsw i32 %110, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %107, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 71
  br i1 %117, label %118, label %137

118:                                              ; preds = %106
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* @TS_PACKET_SIZE_192, align 4
  %124 = mul nsw i32 3, %123
  %125 = add nsw i32 %122, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %119, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 71
  br i1 %129, label %130, label %137

130:                                              ; preds = %118
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 4
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32*, i32** %6, align 8
  store i32 4, i32* %134, align 4
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i32, i32* @TS_PACKET_SIZE_192, align 4
  store i32 %136, i32* %4, align 4
  br label %194

137:                                              ; preds = %118, %106, %94
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* @TS_PACKET_SIZE_204, align 4
  %143 = mul nsw i32 1, %142
  %144 = add nsw i32 %141, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %138, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 71
  br i1 %148, label %149, label %175

149:                                              ; preds = %137
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* @TS_PACKET_SIZE_204, align 4
  %155 = mul nsw i32 2, %154
  %156 = add nsw i32 %153, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %150, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 71
  br i1 %160, label %161, label %175

161:                                              ; preds = %149
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %163, %164
  %166 = load i32, i32* @TS_PACKET_SIZE_204, align 4
  %167 = mul nsw i32 3, %166
  %168 = add nsw i32 %165, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %162, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 71
  br i1 %172, label %173, label %175

173:                                              ; preds = %161
  %174 = load i32, i32* @TS_PACKET_SIZE_204, align 4
  store i32 %174, i32* %4, align 4
  br label %194

175:                                              ; preds = %161, %149, %137
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177, %37
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %24

181:                                              ; preds = %24
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %189 = call i32 @msg_Warn(%struct.TYPE_7__* %188, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %190 = load i32, i32* @TS_PACKET_SIZE_188, align 4
  store i32 %190, i32* %4, align 4
  br label %194

191:                                              ; preds = %181
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %193 = call i32 @msg_Dbg(%struct.TYPE_7__* %192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %194

194:                                              ; preds = %191, %187, %173, %135, %92, %53, %22
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
