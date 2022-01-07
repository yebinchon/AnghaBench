; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_pes.h_ParsePESHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_pes.h_ParsePESHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"too much MPEG-1 stuffing\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i32*, i32*, i32*, i32*, i32*)* @ParsePESHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParsePESHeader(i32* %0, i32* %1, i64 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp ult i64 %19, 9
  br i1 %20, label %21, label %23

21:                                               ; preds = %8
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %9, align 4
  br label %219

23:                                               ; preds = %8
  %24 = load i32*, i32** %11, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %16, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %37 [
    i32 188, label %31
    i32 190, label %31
    i32 191, label %31
    i32 240, label %31
    i32 241, label %31
    i32 255, label %31
    i32 242, label %31
    i32 248, label %31
  ]

31:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23
  store i32 6, i32* %18, align 4
  %32 = load i32*, i32** %17, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32*, i32** %17, align 8
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %31
  br label %215

37:                                               ; preds = %23
  %38 = load i32*, i32** %11, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 6
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 192
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %43, label %90

43:                                               ; preds = %37
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 9
  store i32 %47, i32* %18, align 4
  %48 = load i32*, i32** %17, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 6
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 48
  %55 = load i32*, i32** %17, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %43
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 128
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %56
  %63 = load i64, i64* %12, align 8
  %64 = icmp uge i64 %63, 14
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 9
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 6
  %72 = load i32*, i32** %15, align 8
  %73 = call i32 @ExtractPESTimestamp(i32* %67, i32 %71, i32* %72)
  br label %74

74:                                               ; preds = %65, %62
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 7
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 64
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load i64, i64* %12, align 8
  %82 = icmp uge i64 %81, 19
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 14
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @ExtractPESTimestamp(i32* %85, i32 1, i32* %86)
  br label %88

88:                                               ; preds = %83, %80, %74
  br label %89

89:                                               ; preds = %88, %56
  br label %214

90:                                               ; preds = %37
  store i32 6, i32* %18, align 4
  %91 = load i32*, i32** %17, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32*, i32** %17, align 8
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %93, %90
  br label %96

96:                                               ; preds = %118, %95
  %97 = load i32, i32* %18, align 4
  %98 = icmp ult i32 %97, 23
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %18, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 255
  br label %106

106:                                              ; preds = %99, %96
  %107 = phi i1 [ false, %96 ], [ %105, %99 ]
  br i1 %107, label %108, label %119

108:                                              ; preds = %106
  %109 = load i32, i32* %18, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %18, align 4
  %111 = load i64, i64* %12, align 8
  %112 = load i32, i32* %18, align 4
  %113 = add i32 %112, 1
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %111, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %117, i32* %9, align 4
  br label %219

118:                                              ; preds = %108
  br label %96

119:                                              ; preds = %106
  %120 = load i32, i32* %18, align 4
  %121 = icmp eq i32 %120, 23
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @msg_Err(i32* %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %125, i32* %9, align 4
  br label %219

126:                                              ; preds = %119
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %18, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 192
  %133 = icmp eq i32 %132, 64
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load i32, i32* %18, align 4
  %136 = add i32 %135, 2
  store i32 %136, i32* %18, align 4
  br label %137

137:                                              ; preds = %134, %126
  %138 = load i64, i64* %12, align 8
  %139 = load i32, i32* %18, align 4
  %140 = add i32 %139, 1
  %141 = zext i32 %140 to i64
  %142 = icmp ult i64 %138, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %144, i32* %9, align 4
  br label %219

145:                                              ; preds = %137
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* %18, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %200

153:                                              ; preds = %145
  %154 = load i64, i64* %12, align 8
  %155 = load i32, i32* %18, align 4
  %156 = add i32 %155, 5
  %157 = zext i32 %156 to i64
  %158 = icmp uge i64 %154, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %153
  %160 = load i32*, i32** %11, align 8
  %161 = load i32, i32* %18, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %18, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = ashr i32 %168, 4
  %170 = load i32*, i32** %15, align 8
  %171 = call i32 @ExtractPESTimestamp(i32* %163, i32 %169, i32* %170)
  br label %172

172:                                              ; preds = %159, %153
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* %18, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 16
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %172
  %181 = load i64, i64* %12, align 8
  %182 = load i32, i32* %18, align 4
  %183 = add i32 %182, 10
  %184 = zext i32 %183 to i64
  %185 = icmp uge i64 %181, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %180
  %187 = load i32*, i32** %11, align 8
  %188 = load i32, i32* %18, align 4
  %189 = add i32 %188, 5
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32*, i32** %14, align 8
  %193 = call i32 @ExtractPESTimestamp(i32* %191, i32 1, i32* %192)
  %194 = load i32, i32* %18, align 4
  %195 = add i32 %194, 10
  store i32 %195, i32* %18, align 4
  br label %199

196:                                              ; preds = %180, %172
  %197 = load i32, i32* %18, align 4
  %198 = add i32 %197, 5
  store i32 %198, i32* %18, align 4
  br label %199

199:                                              ; preds = %196, %186
  br label %213

200:                                              ; preds = %145
  %201 = load i32*, i32** %11, align 8
  %202 = load i32, i32* %18, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, 255
  %207 = icmp ne i32 %206, 15
  br i1 %207, label %208, label %210

208:                                              ; preds = %200
  %209 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %209, i32* %9, align 4
  br label %219

210:                                              ; preds = %200
  %211 = load i32, i32* %18, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %18, align 4
  br label %213

213:                                              ; preds = %210, %199
  br label %214

214:                                              ; preds = %213, %89
  br label %215

215:                                              ; preds = %214, %36
  %216 = load i32, i32* %18, align 4
  %217 = load i32*, i32** %13, align 8
  store i32 %216, i32* %217, align 4
  %218 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %218, i32* %9, align 4
  br label %219

219:                                              ; preds = %215, %208, %143, %122, %116, %21
  %220 = load i32, i32* %9, align 4
  ret i32 %220
}

declare dso_local i32 @ExtractPESTimestamp(i32*, i32, i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
