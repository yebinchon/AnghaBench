; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_id3.c_convert_utf16bom.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_id3.c_convert_utf16bom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [30 x i8] c"convert_utf16 with length %lu\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"UTF16 endianness check: %i\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Invalid UTF16 surrogate pair at %li (0x%04lx).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i64, i32)* @convert_utf16bom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_utf16bom(%struct.TYPE_5__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i16, align 2
  %18 = alloca i64, align 8
  %19 = alloca i16, align 2
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 1, i64* %14, align 8
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @debug1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @check_bom(i8** %6, i64* %7)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call i32 @debug1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %15, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i64 1, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %29

29:                                               ; preds = %28, %4
  %30 = load i64, i64* %7, align 8
  %31 = udiv i64 %30, 2
  %32 = mul i64 %31, 2
  store i64 %32, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %115, %29
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %118

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %13, align 8
  %41 = add i64 %39, %40
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = shl i64 %44, 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %14, align 8
  %49 = add i64 %47, %48
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i64
  %53 = add i64 %45, %52
  store i64 %53, i64* %16, align 8
  %54 = load i64, i64* %16, align 8
  %55 = and i64 %54, 64512
  %56 = icmp eq i64 %55, 55296
  br i1 %56, label %57, label %109

57:                                               ; preds = %37
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 3
  %60 = load i64, i64* %7, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, 2
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %65, %66
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 %70, 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* %9, align 8
  %74 = add i64 %73, 2
  %75 = load i64, i64* %14, align 8
  %76 = add i64 %74, %75
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = add nsw i32 %71, %79
  br label %82

81:                                               ; preds = %57
  br label %82

82:                                               ; preds = %81, %62
  %83 = phi i32 [ %80, %62 ], [ 0, %81 ]
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %17, align 2
  %85 = load i16, i16* %17, align 2
  %86 = zext i16 %85 to i32
  %87 = and i32 %86, 64512
  %88 = icmp eq i32 %87, 56320
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = load i64, i64* %16, align 8
  %91 = load i16, i16* %17, align 2
  %92 = call i64 @FULLPOINT(i64 %90, i16 zeroext %91)
  store i64 %92, i64* %16, align 8
  %93 = load i64, i64* %16, align 8
  %94 = call i64 @UTF8LEN(i64 %93)
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %12, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %97, 2
  store i64 %98, i64* %9, align 8
  br label %108

99:                                               ; preds = %82
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %16, align 8
  %105 = call i32 @error2(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %103, i64 %104)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i64, i64* %9, align 8
  store i64 %107, i64* %10, align 8
  br label %118

108:                                              ; preds = %89
  br label %114

109:                                              ; preds = %37
  %110 = load i64, i64* %16, align 8
  %111 = call i64 @UTF8LEN(i64 %110)
  %112 = load i64, i64* %12, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %12, align 8
  br label %114

114:                                              ; preds = %109, %108
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, 2
  store i64 %117, i64* %9, align 8
  br label %33

118:                                              ; preds = %106, %33
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = load i64, i64* %12, align 8
  %121 = add i64 %120, 1
  %122 = call i32 @mpg123_resize_string(%struct.TYPE_5__* %119, i64 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = call i32 @mpg123_free_string(%struct.TYPE_5__* %125)
  br label %280

127:                                              ; preds = %118
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = bitcast i32* %130 to i8*
  store i8* %131, i8** %11, align 8
  store i64 0, i64* %9, align 8
  br label %132

132:                                              ; preds = %262, %127
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %265

136:                                              ; preds = %132
  %137 = load i8*, i8** %6, align 8
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* %13, align 8
  %140 = add i64 %138, %139
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i64
  %144 = shl i64 %143, 8
  %145 = load i8*, i8** %6, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load i64, i64* %14, align 8
  %148 = add i64 %146, %147
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i64
  %152 = add i64 %144, %151
  store i64 %152, i64* %18, align 8
  %153 = load i64, i64* %18, align 8
  %154 = and i64 %153, 64512
  %155 = icmp eq i64 %154, 55296
  br i1 %155, label %156, label %181

156:                                              ; preds = %136
  %157 = load i8*, i8** %6, align 8
  %158 = load i64, i64* %9, align 8
  %159 = add i64 %158, 2
  %160 = load i64, i64* %13, align 8
  %161 = add i64 %159, %160
  %162 = getelementptr inbounds i8, i8* %157, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = shl i32 %164, 8
  %166 = load i8*, i8** %6, align 8
  %167 = load i64, i64* %9, align 8
  %168 = add i64 %167, 2
  %169 = load i64, i64* %14, align 8
  %170 = add i64 %168, %169
  %171 = getelementptr inbounds i8, i8* %166, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = add nsw i32 %165, %173
  %175 = trunc i32 %174 to i16
  store i16 %175, i16* %19, align 2
  %176 = load i64, i64* %18, align 8
  %177 = load i16, i16* %19, align 2
  %178 = call i64 @FULLPOINT(i64 %176, i16 zeroext %177)
  store i64 %178, i64* %18, align 8
  %179 = load i64, i64* %9, align 8
  %180 = add i64 %179, 2
  store i64 %180, i64* %9, align 8
  br label %181

181:                                              ; preds = %156, %136
  %182 = load i64, i64* %18, align 8
  %183 = icmp ult i64 %182, 128
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = load i64, i64* %18, align 8
  %186 = trunc i64 %185 to i8
  %187 = load i8*, i8** %11, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %11, align 8
  store i8 %186, i8* %187, align 1
  br label %261

189:                                              ; preds = %181
  %190 = load i64, i64* %18, align 8
  %191 = icmp ult i64 %190, 2048
  br i1 %191, label %192, label %205

192:                                              ; preds = %189
  %193 = load i64, i64* %18, align 8
  %194 = lshr i64 %193, 6
  %195 = or i64 192, %194
  %196 = trunc i64 %195 to i8
  %197 = load i8*, i8** %11, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %11, align 8
  store i8 %196, i8* %197, align 1
  %199 = load i64, i64* %18, align 8
  %200 = and i64 %199, 63
  %201 = or i64 128, %200
  %202 = trunc i64 %201 to i8
  %203 = load i8*, i8** %11, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %11, align 8
  store i8 %202, i8* %203, align 1
  br label %260

205:                                              ; preds = %189
  %206 = load i64, i64* %18, align 8
  %207 = icmp ult i64 %206, 65536
  br i1 %207, label %208, label %228

208:                                              ; preds = %205
  %209 = load i64, i64* %18, align 8
  %210 = lshr i64 %209, 12
  %211 = or i64 224, %210
  %212 = trunc i64 %211 to i8
  %213 = load i8*, i8** %11, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %11, align 8
  store i8 %212, i8* %213, align 1
  %215 = load i64, i64* %18, align 8
  %216 = lshr i64 %215, 6
  %217 = and i64 %216, 63
  %218 = or i64 128, %217
  %219 = trunc i64 %218 to i8
  %220 = load i8*, i8** %11, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %11, align 8
  store i8 %219, i8* %220, align 1
  %222 = load i64, i64* %18, align 8
  %223 = and i64 %222, 63
  %224 = or i64 128, %223
  %225 = trunc i64 %224 to i8
  %226 = load i8*, i8** %11, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %11, align 8
  store i8 %225, i8* %226, align 1
  br label %259

228:                                              ; preds = %205
  %229 = load i64, i64* %18, align 8
  %230 = icmp ult i64 %229, 2097152
  br i1 %230, label %231, label %258

231:                                              ; preds = %228
  %232 = load i64, i64* %18, align 8
  %233 = lshr i64 %232, 18
  %234 = or i64 240, %233
  %235 = trunc i64 %234 to i8
  %236 = load i8*, i8** %11, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %11, align 8
  store i8 %235, i8* %236, align 1
  %238 = load i64, i64* %18, align 8
  %239 = lshr i64 %238, 12
  %240 = and i64 %239, 63
  %241 = or i64 128, %240
  %242 = trunc i64 %241 to i8
  %243 = load i8*, i8** %11, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %11, align 8
  store i8 %242, i8* %243, align 1
  %245 = load i64, i64* %18, align 8
  %246 = lshr i64 %245, 6
  %247 = and i64 %246, 63
  %248 = or i64 128, %247
  %249 = trunc i64 %248 to i8
  %250 = load i8*, i8** %11, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %11, align 8
  store i8 %249, i8* %250, align 1
  %252 = load i64, i64* %18, align 8
  %253 = and i64 %252, 63
  %254 = or i64 128, %253
  %255 = trunc i64 %254 to i8
  %256 = load i8*, i8** %11, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %11, align 8
  store i8 %255, i8* %256, align 1
  br label %258

258:                                              ; preds = %231, %228
  br label %259

259:                                              ; preds = %258, %208
  br label %260

260:                                              ; preds = %259, %192
  br label %261

261:                                              ; preds = %260, %184
  br label %262

262:                                              ; preds = %261
  %263 = load i64, i64* %9, align 8
  %264 = add i64 %263, 2
  store i64 %264, i64* %9, align 8
  br label %132

265:                                              ; preds = %132
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %268, i64 %273
  store i32 0, i32* %274, align 4
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 4
  br label %280

280:                                              ; preds = %265, %124
  ret void
}

declare dso_local i32 @debug1(i8*, i32) #1

declare dso_local i32 @check_bom(i8**, i64*) #1

declare dso_local i64 @FULLPOINT(i64, i16 zeroext) #1

declare dso_local i64 @UTF8LEN(i64) #1

declare dso_local i32 @error2(i8*, i64, i64) #1

declare dso_local i32 @mpg123_resize_string(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @mpg123_free_string(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
