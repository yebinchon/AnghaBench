; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_WavSkipHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_WavSkipHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"WAVE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fmt \00", align 1
@WAV_PROBE_SIZE = common dso_local global i32* null, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@WAVE_FORMAT_UNKNOWN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64*, i64*, i32 (i32, i32*)*)* @WavSkipHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WavSkipHeader(%struct.TYPE_3__* %0, i64* %1, i64* %2, i32 (i32, i32*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32 (i32, i32*)*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 (i32, i32*)* %3, i32 (i32, i32*)** %9, align 8
  store i64 0, i64* %11, align 8
  %15 = load i64*, i64** %7, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vlc_stream_Peek(i32 %18, i32** %10, i64 20)
  %20 = icmp ne i32 %19, 20
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %22, i32* %5, align 4
  br label %214

23:                                               ; preds = %4
  %24 = load i32*, i32** %10, align 8
  %25 = call i64 @memcmp(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 8
  %30 = call i64 @memcmp(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %23
  %33 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %33, i32* %5, align 4
  br label %214

34:                                               ; preds = %27
  store i64 20, i64* %11, align 8
  br label %35

35:                                               ; preds = %75, %34
  %36 = load i32*, i32** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = getelementptr inbounds i32, i32* %38, i64 -8
  %40 = call i64 @memcmp(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %35
  %43 = load i32*, i32** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = getelementptr inbounds i32, i32* %45, i64 -4
  %47 = call i32* @GetDWLE(i32* %46)
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** @WAV_PROBE_SIZE, align 8
  %50 = icmp ugt i32* %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %11, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 %52
  %55 = load i32*, i32** @WAV_PROBE_SIZE, align 8
  %56 = icmp ugt i32* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51, %42
  %58 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %58, i32* %5, align 4
  br label %214

59:                                               ; preds = %51
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = ptrtoint i32* %63 to i64
  store i64 %64, i64* %11, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @vlc_stream_Peek(i32 %67, i32** %10, i64 %68)
  %70 = load i64, i64* %11, align 8
  %71 = trunc i64 %70 to i32
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %74, i32* %5, align 4
  br label %214

75:                                               ; preds = %59
  br label %35

76:                                               ; preds = %35
  %77 = load i32*, i32** %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = getelementptr inbounds i32, i32* %79, i64 -4
  %81 = call i32* @GetDWLE(i32* %80)
  store i32* %81, i32** %12, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i32*, i32** @WAV_PROBE_SIZE, align 8
  %84 = icmp ugt i32* %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %86, i32* %5, align 4
  br label %214

87:                                               ; preds = %76
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = ptrtoint i32* %91 to i64
  store i64 %92, i64* %11, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @vlc_stream_Peek(i32 %95, i32** %10, i64 %96)
  %98 = load i64, i64* %11, align 8
  %99 = trunc i64 %98 to i32
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %87
  %102 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %102, i32* %5, align 4
  br label %214

103:                                              ; preds = %87
  %104 = load i32*, i32** %10, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32*, i32** %12, align 8
  %108 = ptrtoint i32* %106 to i64
  %109 = ptrtoint i32* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 4
  %112 = sub nsw i64 %111, 8
  %113 = trunc i64 %112 to i32
  %114 = call i64 @GetWLE(i32 %113)
  store i64 %114, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %115

115:                                              ; preds = %133, %103
  %116 = load i64*, i64** %8, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @WAVE_FORMAT_UNKNOWN, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %115
  %124 = load i64, i64* %13, align 8
  %125 = load i64*, i64** %8, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %124, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %136

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %115

136:                                              ; preds = %131, %115
  %137 = load i64*, i64** %8, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @WAVE_FORMAT_UNKNOWN, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %145, i32* %5, align 4
  br label %214

146:                                              ; preds = %136
  %147 = load i32 (i32, i32*)*, i32 (i32, i32*)** %9, align 8
  %148 = icmp ne i32 (i32, i32*)* %147, null
  br i1 %148, label %149, label %168

149:                                              ; preds = %146
  %150 = load i32 (i32, i32*)*, i32 (i32, i32*)** %9, align 8
  %151 = load i64, i64* %13, align 8
  %152 = trunc i64 %151 to i32
  %153 = load i32*, i32** %10, align 8
  %154 = load i64, i64* %11, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32*, i32** %12, align 8
  %157 = ptrtoint i32* %155 to i64
  %158 = ptrtoint i32* %156 to i64
  %159 = sub i64 %157, %158
  %160 = sdiv exact i64 %159, 4
  %161 = sub nsw i64 %160, 6
  %162 = inttoptr i64 %161 to i32*
  %163 = call i32 %150(i32 %152, i32* %162)
  %164 = load i32, i32* @VLC_SUCCESS, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %149
  %167 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %167, i32* %5, align 4
  br label %214

168:                                              ; preds = %149, %146
  br label %169

169:                                              ; preds = %209, %168
  %170 = load i32*, i32** %10, align 8
  %171 = load i64, i64* %11, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = getelementptr inbounds i32, i32* %172, i64 -8
  %174 = call i64 @memcmp(i32* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %210

176:                                              ; preds = %169
  %177 = load i32*, i32** %10, align 8
  %178 = load i64, i64* %11, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = getelementptr inbounds i32, i32* %179, i64 -4
  %181 = call i32* @GetDWLE(i32* %180)
  store i32* %181, i32** %12, align 8
  %182 = load i32*, i32** %12, align 8
  %183 = load i32*, i32** @WAV_PROBE_SIZE, align 8
  %184 = icmp ugt i32* %182, %183
  br i1 %184, label %191, label %185

185:                                              ; preds = %176
  %186 = load i64, i64* %11, align 8
  %187 = load i32*, i32** %12, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 %186
  %189 = load i32*, i32** @WAV_PROBE_SIZE, align 8
  %190 = icmp ugt i32* %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %185, %176
  %192 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %192, i32* %5, align 4
  br label %214

193:                                              ; preds = %185
  %194 = load i32*, i32** %12, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 8
  %196 = load i64, i64* %11, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = ptrtoint i32* %197 to i64
  store i64 %198, i64* %11, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i64, i64* %11, align 8
  %203 = call i32 @vlc_stream_Peek(i32 %201, i32** %10, i64 %202)
  %204 = load i64, i64* %11, align 8
  %205 = trunc i64 %204 to i32
  %206 = icmp ne i32 %203, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %193
  %208 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %208, i32* %5, align 4
  br label %214

209:                                              ; preds = %193
  br label %169

210:                                              ; preds = %169
  %211 = load i64, i64* %11, align 8
  %212 = load i64*, i64** %7, align 8
  store i64 %211, i64* %212, align 8
  %213 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %210, %207, %191, %166, %144, %101, %85, %73, %57, %32, %21
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i64) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32* @GetDWLE(i32*) #1

declare dso_local i64 @GetWLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
