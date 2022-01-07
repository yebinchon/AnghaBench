; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msadp32.acm/extr_msadp32.c_cvtSSms16K.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msadp32.acm/extr_msadp32.c_cvtSSms16K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Invalid ADPCM data, stopping conversion\0A\00", align 1
@MSADPCM_CoeffSet = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i32*, i8*, i32*)* @cvtSSms16K to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvtSSms16K(%struct.TYPE_9__* %0, i8* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
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
  %22 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = bitcast %struct.TYPE_7__* %25 to %struct.TYPE_8__*
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %20, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %30, %35
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %20, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %39, %44
  %46 = sdiv i32 %38, %45
  %47 = call i32 @min(i32 %36, i32 %46)
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* %21, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %48, %53
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* %20, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %58, %63
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %20, align 4
  %67 = sub nsw i32 %66, 2
  store i32 %67, i32* %20, align 4
  br label %68

68:                                               ; preds = %265, %5
  %69 = load i32, i32* %21, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %268

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  store i8* %72, i8** %22, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp sgt i32 %75, 6
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp sgt i32 %81, 6
  br i1 %82, label %83, label %97

83:                                               ; preds = %77, %71
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %20, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %86, %91
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = call i32 @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %268

97:                                               ; preds = %77
  %98 = load i32*, i32** @MSADPCM_CoeffSet, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %7, align 8
  %101 = load i8, i8* %99, align 1
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %17, align 4
  %105 = load i32*, i32** @MSADPCM_CoeffSet, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %7, align 8
  %108 = load i8, i8* %106, align 1
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %18, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @R16(i8* %112)
  store i32 %113, i32* %11, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  store i8* %115, i8** %7, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @R16(i8* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  store i8* %119, i8** %7, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @R16(i8* %120)
  store i32 %121, i32* %13, align 4
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  store i8* %123, i8** %7, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @R16(i8* %124)
  store i32 %125, i32* %15, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  store i8* %127, i8** %7, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @R16(i8* %128)
  store i32 %129, i32* %14, align 4
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  store i8* %131, i8** %7, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = call i32 @R16(i8* %132)
  store i32 %133, i32* %16, align 4
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 2
  store i8* %135, i8** %7, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 8
  br i1 %141, label %142, label %195

142:                                              ; preds = %97
  %143 = load i32, i32* %14, align 4
  %144 = call zeroext i8 @C168(i32 %143)
  %145 = load i8*, i8** %9, align 8
  store i8 %144, i8* %145, align 1
  %146 = load i8*, i8** %9, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %9, align 8
  %148 = load i32, i32* %16, align 4
  %149 = call zeroext i8 @C168(i32 %148)
  %150 = load i8*, i8** %9, align 8
  store i8 %149, i8* %150, align 1
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %9, align 8
  %153 = load i32, i32* %13, align 4
  %154 = call zeroext i8 @C168(i32 %153)
  %155 = load i8*, i8** %9, align 8
  store i8 %154, i8* %155, align 1
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %9, align 8
  %158 = load i32, i32* %15, align 4
  %159 = call zeroext i8 @C168(i32 %158)
  %160 = load i8*, i8** %9, align 8
  store i8 %159, i8* %160, align 1
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %9, align 8
  %163 = load i32, i32* %20, align 4
  store i32 %163, i32* %19, align 4
  br label %164

164:                                              ; preds = %191, %142
  %165 = load i32, i32* %19, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %194

167:                                              ; preds = %164
  %168 = load i8*, i8** %7, align 8
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = ashr i32 %170, 4
  %172 = trunc i32 %171 to i8
  %173 = call i32 @process_nibble(i8 zeroext %172, i32* %11, i32* %13, i32* %14, i32* %17)
  %174 = load i32, i32* %13, align 4
  %175 = call zeroext i8 @C168(i32 %174)
  %176 = load i8*, i8** %9, align 8
  store i8 %175, i8* %176, align 1
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %9, align 8
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %7, align 8
  %181 = load i8, i8* %179, align 1
  %182 = zext i8 %181 to i32
  %183 = and i32 %182, 15
  %184 = trunc i32 %183 to i8
  %185 = call i32 @process_nibble(i8 zeroext %184, i32* %12, i32* %15, i32* %16, i32* %18)
  %186 = load i32, i32* %15, align 4
  %187 = call zeroext i8 @C168(i32 %186)
  %188 = load i8*, i8** %9, align 8
  store i8 %187, i8* %188, align 1
  %189 = load i8*, i8** %9, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %9, align 8
  br label %191

191:                                              ; preds = %167
  %192 = load i32, i32* %19, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %19, align 4
  br label %164

194:                                              ; preds = %164
  br label %256

195:                                              ; preds = %97
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 16
  br i1 %201, label %202, label %255

202:                                              ; preds = %195
  %203 = load i8*, i8** %9, align 8
  %204 = load i32, i32* %14, align 4
  %205 = call i32 @W16(i8* %203, i32 %204)
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 2
  store i8* %207, i8** %9, align 8
  %208 = load i8*, i8** %9, align 8
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @W16(i8* %208, i32 %209)
  %211 = load i8*, i8** %9, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 2
  store i8* %212, i8** %9, align 8
  %213 = load i8*, i8** %9, align 8
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @W16(i8* %213, i32 %214)
  %216 = load i8*, i8** %9, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  store i8* %217, i8** %9, align 8
  %218 = load i8*, i8** %9, align 8
  %219 = load i32, i32* %15, align 4
  %220 = call i32 @W16(i8* %218, i32 %219)
  %221 = load i8*, i8** %9, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 2
  store i8* %222, i8** %9, align 8
  %223 = load i32, i32* %20, align 4
  store i32 %223, i32* %19, align 4
  br label %224

224:                                              ; preds = %251, %202
  %225 = load i32, i32* %19, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %254

227:                                              ; preds = %224
  %228 = load i8*, i8** %7, align 8
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = ashr i32 %230, 4
  %232 = trunc i32 %231 to i8
  %233 = call i32 @process_nibble(i8 zeroext %232, i32* %11, i32* %13, i32* %14, i32* %17)
  %234 = load i8*, i8** %9, align 8
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @W16(i8* %234, i32 %235)
  %237 = load i8*, i8** %9, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 2
  store i8* %238, i8** %9, align 8
  %239 = load i8*, i8** %7, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %7, align 8
  %241 = load i8, i8* %239, align 1
  %242 = zext i8 %241 to i32
  %243 = and i32 %242, 15
  %244 = trunc i32 %243 to i8
  %245 = call i32 @process_nibble(i8 zeroext %244, i32* %12, i32* %15, i32* %16, i32* %18)
  %246 = load i8*, i8** %9, align 8
  %247 = load i32, i32* %15, align 4
  %248 = call i32 @W16(i8* %246, i32 %247)
  %249 = load i8*, i8** %9, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 2
  store i8* %250, i8** %9, align 8
  br label %251

251:                                              ; preds = %227
  %252 = load i32, i32* %19, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %19, align 4
  br label %224

254:                                              ; preds = %224
  br label %255

255:                                              ; preds = %254, %195
  br label %256

256:                                              ; preds = %255, %194
  %257 = load i8*, i8** %22, align 8
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %257, i64 %263
  store i8* %264, i8** %7, align 8
  br label %265

265:                                              ; preds = %256
  %266 = load i32, i32* %21, align 4
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* %21, align 4
  br label %68

268:                                              ; preds = %83, %68
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @R16(i8*) #1

declare dso_local zeroext i8 @C168(i32) #1

declare dso_local i32 @process_nibble(i8 zeroext, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @W16(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
