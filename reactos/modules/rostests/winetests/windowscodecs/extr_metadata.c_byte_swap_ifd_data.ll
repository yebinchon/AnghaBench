; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_metadata.c_byte_swap_ifd_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_metadata.c_byte_swap_ifd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IFD_entry = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @byte_swap_ifd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @byte_swap_ifd_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.IFD_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %20 = load i8*, i8** %2, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = bitcast i8* %21 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %3, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = call i8* @ushort_bswap(i64 %26)
  %28 = ptrtoint i8* %27 to i64
  %29 = load i8*, i8** %2, align 8
  %30 = bitcast i8* %29 to i64*
  store i64 %28, i64* %30, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 8
  store i8* %32, i8** %2, align 8
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %276, %1
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %279

37:                                               ; preds = %33
  %38 = load i8*, i8** %2, align 8
  %39 = bitcast i8* %38 to %struct.IFD_entry*
  store %struct.IFD_entry* %39, %struct.IFD_entry** %5, align 8
  %40 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %41 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %248 [
    i32 138, label %43
    i32 133, label %43
    i32 139, label %43
    i32 128, label %43
    i32 132, label %57
    i32 129, label %57
    i32 135, label %132
    i32 131, label %132
    i32 136, label %132
    i32 134, label %178
    i32 130, label %178
    i32 137, label %214
  ]

43:                                               ; preds = %37, %37, %37, %37
  %44 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %45 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 4
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %50 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @ulong_bswap(i64 %51)
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %55 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %48, %43
  br label %250

57:                                               ; preds = %37, %37
  %58 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %59 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 2
  br i1 %61, label %62, label %102

62:                                               ; preds = %57
  %63 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %64 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %8, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %69 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = bitcast i8* %71 to i64*
  store i64* %72, i64** %9, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %62
  store i64 1, i64* %8, align 8
  br label %76

76:                                               ; preds = %75, %62
  store i64 0, i64* %7, align 8
  br label %77

77:                                               ; preds = %91, %76
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load i64*, i64** %9, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @ushort_bswap(i64 %85)
  %87 = ptrtoint i8* %86 to i64
  %88 = load i64*, i64** %9, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64 %87, i64* %90, align 8
  br label %91

91:                                               ; preds = %81
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %7, align 8
  br label %77

94:                                               ; preds = %77
  %95 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %96 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i8* @ulong_bswap(i64 %97)
  %99 = ptrtoint i8* %98 to i64
  %100 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %101 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %131

102:                                              ; preds = %57
  %103 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %104 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %11, align 8
  %107 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %108 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %107, i32 0, i32 2
  store i64* %108, i64** %12, align 8
  %109 = load i64, i64* %11, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %102
  store i64 1, i64* %11, align 8
  br label %112

112:                                              ; preds = %111, %102
  store i64 0, i64* %10, align 8
  br label %113

113:                                              ; preds = %127, %112
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %11, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %113
  %118 = load i64*, i64** %12, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = call i8* @ushort_bswap(i64 %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = load i64*, i64** %12, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  store i64 %123, i64* %126, align 8
  br label %127

127:                                              ; preds = %117
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %10, align 8
  br label %113

130:                                              ; preds = %113
  br label %131

131:                                              ; preds = %130, %94
  br label %250

132:                                              ; preds = %37, %37, %37
  %133 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %134 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %135, 1
  br i1 %136, label %137, label %170

137:                                              ; preds = %132
  %138 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %139 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %14, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %144 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  %147 = bitcast i8* %146 to i64*
  store i64* %147, i64** %15, align 8
  %148 = load i64, i64* %14, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %137
  store i64 1, i64* %14, align 8
  br label %151

151:                                              ; preds = %150, %137
  store i64 0, i64* %13, align 8
  br label %152

152:                                              ; preds = %166, %151
  %153 = load i64, i64* %13, align 8
  %154 = load i64, i64* %14, align 8
  %155 = icmp ult i64 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %152
  %157 = load i64*, i64** %15, align 8
  %158 = load i64, i64* %13, align 8
  %159 = getelementptr inbounds i64, i64* %157, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = call i8* @ulong_bswap(i64 %160)
  %162 = ptrtoint i8* %161 to i64
  %163 = load i64*, i64** %15, align 8
  %164 = load i64, i64* %13, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  store i64 %162, i64* %165, align 8
  br label %166

166:                                              ; preds = %156
  %167 = load i64, i64* %13, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %13, align 8
  br label %152

169:                                              ; preds = %152
  br label %170

170:                                              ; preds = %169, %132
  %171 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %172 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = call i8* @ulong_bswap(i64 %173)
  %175 = ptrtoint i8* %174 to i64
  %176 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %177 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  br label %250

178:                                              ; preds = %37, %37
  %179 = load i8*, i8** %6, align 8
  %180 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %181 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  %184 = bitcast i8* %183 to i64*
  store i64* %184, i64** %17, align 8
  store i64 0, i64* %16, align 8
  br label %185

185:                                              ; preds = %203, %178
  %186 = load i64, i64* %16, align 8
  %187 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %188 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %189, 2
  %191 = sext i32 %190 to i64
  %192 = icmp ult i64 %186, %191
  br i1 %192, label %193, label %206

193:                                              ; preds = %185
  %194 = load i64*, i64** %17, align 8
  %195 = load i64, i64* %16, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = call i8* @ulong_bswap(i64 %197)
  %199 = ptrtoint i8* %198 to i64
  %200 = load i64*, i64** %17, align 8
  %201 = load i64, i64* %16, align 8
  %202 = getelementptr inbounds i64, i64* %200, i64 %201
  store i64 %199, i64* %202, align 8
  br label %203

203:                                              ; preds = %193
  %204 = load i64, i64* %16, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %16, align 8
  br label %185

206:                                              ; preds = %185
  %207 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %208 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = call i8* @ulong_bswap(i64 %209)
  %211 = ptrtoint i8* %210 to i64
  %212 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %213 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %212, i32 0, i32 2
  store i64 %211, i64* %213, align 8
  br label %250

214:                                              ; preds = %37
  %215 = load i8*, i8** %6, align 8
  %216 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %217 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds i8, i8* %215, i64 %218
  %220 = bitcast i8* %219 to i32*
  store i32* %220, i32** %19, align 8
  store i64 0, i64* %18, align 8
  br label %221

221:                                              ; preds = %237, %214
  %222 = load i64, i64* %18, align 8
  %223 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %224 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = icmp ult i64 %222, %226
  br i1 %227, label %228, label %240

228:                                              ; preds = %221
  %229 = load i32*, i32** %19, align 8
  %230 = load i64, i64* %18, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @ulonglong_bswap(i32 %232)
  %234 = load i32*, i32** %19, align 8
  %235 = load i64, i64* %18, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32 %233, i32* %236, align 4
  br label %237

237:                                              ; preds = %228
  %238 = load i64, i64* %18, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %18, align 8
  br label %221

240:                                              ; preds = %221
  %241 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %242 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = call i8* @ulong_bswap(i64 %243)
  %245 = ptrtoint i8* %244 to i64
  %246 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %247 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %246, i32 0, i32 2
  store i64 %245, i64* %247, align 8
  br label %250

248:                                              ; preds = %37
  %249 = call i32 @assert(i32 0)
  br label %250

250:                                              ; preds = %248, %240, %206, %170, %131, %56
  %251 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %252 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = call i8* @ushort_bswap(i64 %253)
  %255 = ptrtoint i8* %254 to i64
  %256 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %257 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %256, i32 0, i32 3
  store i64 %255, i64* %257, align 8
  %258 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %259 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = call i8* @ushort_bswap(i64 %261)
  %263 = ptrtoint i8* %262 to i32
  %264 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %265 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %267 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = call i8* @ulong_bswap(i64 %269)
  %271 = ptrtoint i8* %270 to i32
  %272 = load %struct.IFD_entry*, %struct.IFD_entry** %5, align 8
  %273 = getelementptr inbounds %struct.IFD_entry, %struct.IFD_entry* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load i8*, i8** %2, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 24
  store i8* %275, i8** %2, align 8
  br label %276

276:                                              ; preds = %250
  %277 = load i64, i64* %4, align 8
  %278 = add nsw i64 %277, 1
  store i64 %278, i64* %4, align 8
  br label %33

279:                                              ; preds = %33
  ret void
}

declare dso_local i8* @ushort_bswap(i64) #1

declare dso_local i8* @ulong_bswap(i64) #1

declare dso_local i32 @ulonglong_bswap(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
