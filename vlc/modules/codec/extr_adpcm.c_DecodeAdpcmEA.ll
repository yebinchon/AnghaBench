; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_DecodeAdpcmEA.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_DecodeAdpcmEA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32* }
%union.anon = type { i32 }

@DecodeAdpcmEA.EATable = internal constant [20 x i32] [i32 0, i32 240, i32 460, i32 392, i32 0, i32 0, i32 65328, i32 65316, i32 0, i32 1, i32 3, i32 4, i32 7, i32 8, i32 10, i32 11, i32 0, i32 65535, i32 65533, i32 65532], align 16
@MAX_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i32*)* @DecodeAdpcmEA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecodeAdpcmEA(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.anon, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %7, align 8
  %24 = load i32, i32* @MAX_CHAN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %28 = load i32, i32* @MAX_CHAN, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %31 = load i32, i32* @MAX_CHAN, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %11, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32* %43, i32** %13, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %14, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32* %50, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %84, %3
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %16, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = ashr i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [20 x i32], [20 x i32]* @DecodeAdpcmEA.EATable, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %16, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %27, i64 %67
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %17, align 4
  %70 = ashr i32 %69, 4
  %71 = add nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [20 x i32], [20 x i32]* @DecodeAdpcmEA.EATable, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %16, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %30, i64 %76
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %17, align 4
  %79 = and i32 %78, 15
  %80 = add nsw i32 %79, 8
  %81 = load i32, i32* %16, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %33, i64 %82
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %55
  %85 = load i32, i32* %16, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %51

87:                                               ; preds = %51
  %88 = load i32, i32* %12, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %6, align 8
  br label %92

92:                                               ; preds = %243, %87
  %93 = load i32*, i32** %6, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = icmp ult i32* %93, %94
  br i1 %95, label %96, label %248

96:                                               ; preds = %92
  store i32 0, i32* %19, align 4
  br label %97

97:                                               ; preds = %166, %96
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %169

101:                                              ; preds = %97
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %19, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 240
  %108 = shl i32 %107, 24
  %109 = bitcast %union.anon* %18 to i32*
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %19, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %33, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = bitcast %union.anon* %18 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, %113
  store i32 %116, i32* %114, align 4
  %117 = bitcast %union.anon* %18 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %15, align 8
  %120 = load i32, i32* %19, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %19, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %27, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %123, %127
  %129 = add nsw i32 %118, %128
  %130 = load i32*, i32** %14, align 8
  %131 = load i32, i32* %19, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %19, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %30, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %134, %138
  %140 = add nsw i32 %129, %139
  %141 = add nsw i32 %140, 128
  %142 = ashr i32 %141, 8
  %143 = bitcast %union.anon* %18 to i32*
  store i32 %142, i32* %143, align 4
  %144 = bitcast %union.anon* %18 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @CLAMP(i32 %145, i32 -32768, i32 32767)
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* %19, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %14, align 8
  %153 = load i32, i32* %19, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %151, i32* %155, align 4
  %156 = bitcast %union.anon* %18 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %15, align 8
  %159 = load i32, i32* %19, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %157, i32* %161, align 4
  %162 = bitcast %union.anon* %18 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %5, align 8
  store i32 %163, i32* %164, align 4
  br label %166

166:                                              ; preds = %101
  %167 = load i32, i32* %19, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %19, align 4
  br label %97

169:                                              ; preds = %97
  store i32 0, i32* %20, align 4
  br label %170

170:                                              ; preds = %239, %169
  %171 = load i32, i32* %20, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %174, label %242

174:                                              ; preds = %170
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %20, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 15
  %181 = shl i32 %180, 28
  %182 = bitcast %union.anon* %18 to i32*
  store i32 %181, i32* %182, align 4
  %183 = load i32, i32* %20, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %33, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = bitcast %union.anon* %18 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = ashr i32 %188, %186
  store i32 %189, i32* %187, align 4
  %190 = bitcast %union.anon* %18 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %15, align 8
  %193 = load i32, i32* %20, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %20, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %27, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %196, %200
  %202 = add nsw i32 %191, %201
  %203 = load i32*, i32** %14, align 8
  %204 = load i32, i32* %20, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %20, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %30, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %207, %211
  %213 = add nsw i32 %202, %212
  %214 = add nsw i32 %213, 128
  %215 = ashr i32 %214, 8
  %216 = bitcast %union.anon* %18 to i32*
  store i32 %215, i32* %216, align 4
  %217 = bitcast %union.anon* %18 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @CLAMP(i32 %218, i32 -32768, i32 32767)
  %220 = load i32*, i32** %15, align 8
  %221 = load i32, i32* %20, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %14, align 8
  %226 = load i32, i32* %20, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %224, i32* %228, align 4
  %229 = bitcast %union.anon* %18 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %15, align 8
  %232 = load i32, i32* %20, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %230, i32* %234, align 4
  %235 = bitcast %union.anon* %18 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = load i32*, i32** %5, align 8
  %238 = getelementptr inbounds i32, i32* %237, i32 1
  store i32* %238, i32** %5, align 8
  store i32 %236, i32* %237, align 4
  br label %239

239:                                              ; preds = %174
  %240 = load i32, i32* %20, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %20, align 4
  br label %170

242:                                              ; preds = %170
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %12, align 4
  %245 = load i32*, i32** %6, align 8
  %246 = zext i32 %244 to i64
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  store i32* %247, i32** %6, align 8
  br label %92

248:                                              ; preds = %92
  %249 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %249)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CLAMP(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
