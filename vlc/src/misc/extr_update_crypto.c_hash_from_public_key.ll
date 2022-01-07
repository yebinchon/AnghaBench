; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_hash_from_public_key.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_update_crypto.c_hash_from_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i64, i64*, i32 }
%struct.TYPE_11__ = type { i64, i64, i64*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@GENERIC_KEY_SIGNATURE = common dso_local global i64 0, align 8
@POSITIVE_KEY_SIGNATURE = common dso_local global i64 0, align 8
@GCRY_PK_DSA = common dso_local global i64 0, align 8
@GCRY_PK_RSA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @hash_from_public_key(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i64* null, i64** %2, align 8
  br label %288

26:                                               ; preds = %1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @GENERIC_KEY_SIGNATURE, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @POSITIVE_KEY_SIGNATURE, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %26
  store i64* null, i64** %2, align 8
  br label %288

41:                                               ; preds = %33
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = icmp eq i64* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i64* null, i64** %2, align 8
  br label %288

47:                                               ; preds = %41
  store i64 0, i64* %12, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @GCRY_PK_DSA, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %88

51:                                               ; preds = %47
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @mpi_len(i32 %57)
  store i64 %58, i64* %6, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @mpi_len(i32 %64)
  store i64 %65, i64* %7, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @mpi_len(i32 %71)
  store i64 %72, i64* %8, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @mpi_len(i32 %78)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %6, align 8
  %81 = add i64 14, %80
  %82 = load i64, i64* %7, align 8
  %83 = add i64 %81, %82
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %83, %84
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %85, %86
  store i64 %87, i64* %5, align 8
  br label %113

88:                                               ; preds = %47
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @GCRY_PK_RSA, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @mpi_len(i32 %98)
  store i64 %99, i64* %10, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @mpi_len(i32 %105)
  store i64 %106, i64* %11, align 8
  %107 = load i64, i64* %10, align 8
  %108 = add i64 10, %107
  %109 = load i64, i64* %11, align 8
  %110 = add i64 %108, %109
  store i64 %110, i64* %5, align 8
  br label %112

111:                                              ; preds = %88
  store i64* null, i64** %2, align 8
  br label %288

112:                                              ; preds = %92
  br label %113

113:                                              ; preds = %112, %51
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @gcry_md_open(i32* %13, i32 %117, i32 0)
  store i64 %118, i64* %12, align 8
  %119 = load i64, i64* %12, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  store i64* null, i64** %2, align 8
  br label %288

122:                                              ; preds = %113
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @gcry_md_putc(i32 %123, i64 153)
  %125 = load i32, i32* %13, align 4
  %126 = load i64, i64* %5, align 8
  %127 = lshr i64 %126, 8
  %128 = and i64 %127, 255
  %129 = call i32 @gcry_md_putc(i32 %125, i64 %128)
  %130 = load i32, i32* %13, align 4
  %131 = load i64, i64* %5, align 8
  %132 = and i64 %131, 255
  %133 = call i32 @gcry_md_putc(i32 %130, i64 %132)
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @gcry_md_putc(i32 %134, i64 %138)
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = load i64*, i64** %143, align 8
  %145 = call i32 @gcry_md_write(i32 %140, i64* %144, i64 4)
  %146 = load i32, i32* %13, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @gcry_md_putc(i32 %146, i64 %150)
  %152 = load i64, i64* %4, align 8
  %153 = load i64, i64* @GCRY_PK_DSA, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %196

155:                                              ; preds = %122
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 3
  %162 = bitcast i32* %161 to i64*
  %163 = load i64, i64* %6, align 8
  %164 = add i64 2, %163
  %165 = call i32 @gcry_md_write(i32 %156, i64* %162, i64 %164)
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = bitcast i32* %171 to i64*
  %173 = load i64, i64* %8, align 8
  %174 = add i64 2, %173
  %175 = call i32 @gcry_md_write(i32 %166, i64* %172, i64 %174)
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = bitcast i32* %181 to i64*
  %183 = load i64, i64* %7, align 8
  %184 = add i64 2, %183
  %185 = call i32 @gcry_md_write(i32 %176, i64* %182, i64 %184)
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = bitcast i32* %191 to i64*
  %193 = load i64, i64* %9, align 8
  %194 = add i64 2, %193
  %195 = call i32 @gcry_md_write(i32 %186, i64* %192, i64 %194)
  br label %222

196:                                              ; preds = %122
  %197 = load i64, i64* %4, align 8
  %198 = load i64, i64* @GCRY_PK_RSA, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %221

200:                                              ; preds = %196
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = bitcast i32* %206 to i64*
  %208 = load i64, i64* %10, align 8
  %209 = add i64 2, %208
  %210 = call i32 @gcry_md_write(i32 %201, i64* %207, i64 %209)
  %211 = load i32, i32* %13, align 4
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = bitcast i32* %216 to i64*
  %218 = load i64, i64* %11, align 8
  %219 = add i64 2, %218
  %220 = call i32 @gcry_md_write(i32 %211, i64* %217, i64 %219)
  br label %221

221:                                              ; preds = %200, %196
  br label %222

222:                                              ; preds = %221, %155
  %223 = load i32, i32* %13, align 4
  %224 = call i32 @gcry_md_putc(i32 %223, i64 180)
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i64*, i64** %226, align 8
  %228 = bitcast i64* %227 to i8*
  %229 = call i64 @strlen(i8* %228)
  store i64 %229, i64* %14, align 8
  %230 = load i32, i32* %13, align 4
  %231 = load i64, i64* %14, align 8
  %232 = lshr i64 %231, 24
  %233 = and i64 %232, 255
  %234 = call i32 @gcry_md_putc(i32 %230, i64 %233)
  %235 = load i32, i32* %13, align 4
  %236 = load i64, i64* %14, align 8
  %237 = lshr i64 %236, 16
  %238 = and i64 %237, 255
  %239 = call i32 @gcry_md_putc(i32 %235, i64 %238)
  %240 = load i32, i32* %13, align 4
  %241 = load i64, i64* %14, align 8
  %242 = lshr i64 %241, 8
  %243 = and i64 %242, 255
  %244 = call i32 @gcry_md_putc(i32 %240, i64 %243)
  %245 = load i32, i32* %13, align 4
  %246 = load i64, i64* %14, align 8
  %247 = and i64 %246, 255
  %248 = call i32 @gcry_md_putc(i32 %245, i64 %247)
  %249 = load i32, i32* %13, align 4
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load i64*, i64** %251, align 8
  %253 = load i64, i64* %14, align 8
  %254 = call i32 @gcry_md_write(i32 %249, i64* %252, i64 %253)
  %255 = load i32, i32* %13, align 4
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = call i64* @hash_finish(i32 %255, %struct.TYPE_13__* %257)
  store i64* %258, i64** %15, align 8
  %259 = load i64*, i64** %15, align 8
  %260 = icmp ne i64* %259, null
  br i1 %260, label %261, label %283

261:                                              ; preds = %222
  %262 = load i64*, i64** %15, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 0
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 2
  %268 = load i64*, i64** %267, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 0
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %264, %270
  br i1 %271, label %283, label %272

272:                                              ; preds = %261
  %273 = load i64*, i64** %15, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 1
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 2
  %279 = load i64*, i64** %278, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %275, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %272, %261, %222
  %284 = load i64*, i64** %15, align 8
  %285 = call i32 @free(i64* %284)
  store i64* null, i64** %2, align 8
  br label %288

286:                                              ; preds = %272
  %287 = load i64*, i64** %15, align 8
  store i64* %287, i64** %2, align 8
  br label %288

288:                                              ; preds = %286, %283, %121, %111, %46, %40, %25
  %289 = load i64*, i64** %2, align 8
  ret i64* %289
}

declare dso_local i64 @mpi_len(i32) #1

declare dso_local i64 @gcry_md_open(i32*, i32, i32) #1

declare dso_local i32 @gcry_md_putc(i32, i64) #1

declare dso_local i32 @gcry_md_write(i32, i64*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64* @hash_finish(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
