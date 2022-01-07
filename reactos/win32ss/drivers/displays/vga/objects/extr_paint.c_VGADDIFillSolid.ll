; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/objects/extr_paint.c_VGADDIFillSolid.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/objects/extr_paint.c_VGADDIFillSolid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"VGADDIFillSolid: x:%d, y:%d, w:%d, h:%d\0A\00", align 1
@xconv = common dso_local global i32* null, align 8
@y80 = common dso_local global i32* null, align 8
@startmasks = common dso_local global i32* null, align 8
@endmasks = common dso_local global i32* null, align 8
@GRA_I = common dso_local global i64 0, align 8
@GRA_D = common dso_local global i64 0, align 8
@vidmem = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VGADDIFillSolid(i32* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = bitcast %struct.TYPE_3__* %6 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  store i64 %1, i64* %25, align 4
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  store i64 %2, i64* %26, align 4
  store i32* %0, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  br label %42

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  br label %58

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %12, align 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @DPRINT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @mod8(i32 %72)
  %74 = sub nsw i32 7, %73
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i32 @mod8(i32 %77)
  store i32 %78, i32* %22, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %20, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* %22, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sdiv i32 %83, 8
  store i32 %84, i32* %21, align 4
  %85 = load i32*, i32** @xconv, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %86, 1
  %88 = and i32 %87, -8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** @y80, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %91, %96
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %22, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %13, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %147

103:                                              ; preds = %58
  %104 = load i32*, i32** @startmasks, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** @endmasks, align 8
  %110 = load i32, i32* %22, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %108, %113
  store i32 %114, i32* %23, align 4
  %115 = load i64, i64* @GRA_I, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @WRITE_PORT_UCHAR(i32 %116, i32 8)
  %118 = load i64, i64* @GRA_D, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* %23, align 4
  %121 = call i32 @WRITE_PORT_UCHAR(i32 %119, i32 %120)
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %19, align 4
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %142, %103
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %126, %127
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %124
  %131 = load i32, i32* @vidmem, align 4
  %132 = load i32, i32* %19, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i32 @READ_REGISTER_UCHAR(i32 %133)
  %135 = load i32, i32* @vidmem, align 4
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @WRITE_REGISTER_UCHAR(i32 %137, i32 %138)
  %140 = load i32, i32* %19, align 4
  %141 = add nsw i32 %140, 80
  store i32 %141, i32* %19, align 4
  br label %142

142:                                              ; preds = %130
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  br label %124

145:                                              ; preds = %124
  %146 = load i32, i32* @TRUE, align 4
  store i32 %146, i32* %5, align 4
  br label %281

147:                                              ; preds = %58
  %148 = load i32, i32* %20, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %188

150:                                              ; preds = %147
  %151 = load i64, i64* @GRA_I, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 @WRITE_PORT_UCHAR(i32 %152, i32 8)
  %154 = load i64, i64* @GRA_D, align 8
  %155 = trunc i64 %154 to i32
  %156 = load i32*, i32** @startmasks, align 8
  %157 = load i32, i32* %20, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @WRITE_PORT_UCHAR(i32 %155, i32 %160)
  %162 = load i32, i32* %17, align 4
  store i32 %162, i32* %19, align 4
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %15, align 4
  br label %164

164:                                              ; preds = %182, %150
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %166, %167
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %185

170:                                              ; preds = %164
  %171 = load i32, i32* @vidmem, align 4
  %172 = load i32, i32* %19, align 4
  %173 = add nsw i32 %171, %172
  %174 = call i32 @READ_REGISTER_UCHAR(i32 %173)
  %175 = load i32, i32* @vidmem, align 4
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %175, %176
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @WRITE_REGISTER_UCHAR(i32 %177, i32 %178)
  %180 = load i32, i32* %19, align 4
  %181 = add nsw i32 %180, 80
  store i32 %181, i32* %19, align 4
  br label %182

182:                                              ; preds = %170
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  br label %164

185:                                              ; preds = %164
  %186 = load i32, i32* %16, align 4
  %187 = add nsw i32 %186, 8
  store i32 %187, i32* %9, align 4
  br label %188

188:                                              ; preds = %185, %147
  %189 = load i32, i32* %21, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %229

191:                                              ; preds = %188
  %192 = load i32*, i32** @xconv, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** @y80, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %196, %201
  store i32 %202, i32* %18, align 4
  %203 = load i64, i64* @GRA_I, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 @WRITE_PORT_UCHAR(i32 %204, i32 8)
  %206 = load i64, i64* @GRA_D, align 8
  %207 = trunc i64 %206 to i32
  %208 = call i32 @WRITE_PORT_UCHAR(i32 %207, i32 255)
  %209 = load i32, i32* %10, align 4
  store i32 %209, i32* %15, align 4
  br label %210

210:                                              ; preds = %225, %191
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %212, %213
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %228

216:                                              ; preds = %210
  %217 = load i32, i32* @vidmem, align 4
  %218 = load i32, i32* %18, align 4
  %219 = add nsw i32 %217, %218
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %21, align 4
  %222 = call i32 @memset(i32 %219, i32 %220, i32 %221)
  %223 = load i32, i32* %18, align 4
  %224 = add nsw i32 %223, 80
  store i32 %224, i32* %18, align 4
  br label %225

225:                                              ; preds = %216
  %226 = load i32, i32* %15, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %15, align 4
  br label %210

228:                                              ; preds = %210
  br label %229

229:                                              ; preds = %228, %188
  %230 = load i32, i32* %16, align 4
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %230, %231
  %233 = load i32, i32* %22, align 4
  %234 = sub nsw i32 %232, %233
  store i32 %234, i32* %9, align 4
  %235 = load i32*, i32** @xconv, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** @y80, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %239, %244
  store i32 %245, i32* %17, align 4
  %246 = load i64, i64* @GRA_I, align 8
  %247 = trunc i64 %246 to i32
  %248 = call i32 @WRITE_PORT_UCHAR(i32 %247, i32 8)
  %249 = load i64, i64* @GRA_D, align 8
  %250 = trunc i64 %249 to i32
  %251 = load i32*, i32** @endmasks, align 8
  %252 = load i32, i32* %22, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @WRITE_PORT_UCHAR(i32 %250, i32 %255)
  %257 = load i32, i32* %10, align 4
  store i32 %257, i32* %15, align 4
  br label %258

258:                                              ; preds = %276, %229
  %259 = load i32, i32* %15, align 4
  %260 = load i32, i32* %10, align 4
  %261 = load i32, i32* %14, align 4
  %262 = add nsw i32 %260, %261
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %264, label %279

264:                                              ; preds = %258
  %265 = load i32, i32* @vidmem, align 4
  %266 = load i32, i32* %17, align 4
  %267 = add nsw i32 %265, %266
  %268 = call i32 @READ_REGISTER_UCHAR(i32 %267)
  %269 = load i32, i32* @vidmem, align 4
  %270 = load i32, i32* %17, align 4
  %271 = add nsw i32 %269, %270
  %272 = load i32, i32* %8, align 4
  %273 = call i32 @WRITE_REGISTER_UCHAR(i32 %271, i32 %272)
  %274 = load i32, i32* %17, align 4
  %275 = add nsw i32 %274, 80
  store i32 %275, i32* %17, align 4
  br label %276

276:                                              ; preds = %264
  %277 = load i32, i32* %15, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %15, align 4
  br label %258

279:                                              ; preds = %258
  %280 = load i32, i32* @TRUE, align 4
  store i32 %280, i32* %5, align 4
  br label %281

281:                                              ; preds = %279, %145
  %282 = load i32, i32* %5, align 4
  ret i32 %282
}

declare dso_local i32 @DPRINT(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mod8(i32) #1

declare dso_local i32 @WRITE_PORT_UCHAR(i32, i32) #1

declare dso_local i32 @READ_REGISTER_UCHAR(i32) #1

declare dso_local i32 @WRITE_REGISTER_UCHAR(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
