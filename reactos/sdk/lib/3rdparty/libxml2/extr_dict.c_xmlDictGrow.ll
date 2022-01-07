; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictGrow.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictGrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct._xmlDictEntry* }
%struct._xmlDictEntry = type { i64, i64, %struct._xmlDictEntry*, i32, i32 }

@MIN_DICT_SIZE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@xmlGenericErrorContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @xmlDictGrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlDictGrow(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct._xmlDictEntry*, align 8
  %11 = alloca %struct._xmlDictEntry*, align 8
  %12 = alloca %struct._xmlDictEntry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct._xmlDictEntry*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %292

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = icmp ult i64 %20, 8
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %292

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = icmp ugt i64 %24, 16384
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %292

27:                                               ; preds = %23
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %32, align 8
  store %struct._xmlDictEntry* %33, %struct._xmlDictEntry** %12, align 8
  %34 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %12, align 8
  %35 = icmp eq %struct._xmlDictEntry* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %292

37:                                               ; preds = %27
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @MIN_DICT_SIZE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i64, i64* %5, align 8
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i8* @xmlMalloc(i32 %45)
  %47 = bitcast i8* %46 to %struct._xmlDictEntry*
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store %struct._xmlDictEntry* %47, %struct._xmlDictEntry** %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %51, align 8
  %53 = icmp eq %struct._xmlDictEntry* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %12, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store %struct._xmlDictEntry* %55, %struct._xmlDictEntry** %57, align 8
  store i32 -1, i32* %3, align 4
  br label %292

58:                                               ; preds = %42
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = mul i64 %62, 4
  %64 = call i32 @memset(%struct._xmlDictEntry* %61, i32 0, i64 %63)
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  store i64 0, i64* %9, align 8
  br label %68

68:                                               ; preds = %183, %58
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %186

72:                                               ; preds = %68
  %73 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %12, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %73, i64 %74
  %76 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %183

80:                                               ; preds = %72
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %12, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %84, i64 %85
  %87 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %7, align 8
  br label %102

89:                                               ; preds = %80
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %12, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %91, i64 %92
  %94 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %12, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %96, i64 %97
  %99 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @xmlDictComputeKey(%struct.TYPE_4__* %90, i32 %95, i32 %100)
  store i64 %101, i64* %7, align 8
  br label %102

102:                                              ; preds = %89, %83
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = urem i64 %103, %106
  store i64 %107, i64* %6, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %110, i64 %111
  %113 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %102
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %118, align 8
  %120 = load i64, i64* %6, align 8
  %121 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %119, i64 %120
  %122 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %12, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %122, i64 %123
  %125 = call i32 @memcpy(%struct._xmlDictEntry* %121, %struct._xmlDictEntry* %124, i32 4)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %128, i64 %129
  %131 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %130, i32 0, i32 2
  store %struct._xmlDictEntry* null, %struct._xmlDictEntry** %131, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %134, align 8
  %136 = load i64, i64* %6, align 8
  %137 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %135, i64 %136
  %138 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %137, i32 0, i32 1
  store i64 %132, i64* %138, align 8
  br label %182

139:                                              ; preds = %102
  %140 = call i8* @xmlMalloc(i32 4)
  %141 = bitcast i8* %140 to %struct._xmlDictEntry*
  store %struct._xmlDictEntry* %141, %struct._xmlDictEntry** %15, align 8
  %142 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %15, align 8
  %143 = icmp ne %struct._xmlDictEntry* %142, null
  br i1 %143, label %144, label %180

144:                                              ; preds = %139
  %145 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %12, align 8
  %146 = load i64, i64* %9, align 8
  %147 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %145, i64 %146
  %148 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %15, align 8
  %151 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  %152 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %12, align 8
  %153 = load i64, i64* %9, align 8
  %154 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %152, i64 %153
  %155 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %15, align 8
  %158 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  %159 = load i64, i64* %7, align 8
  %160 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %15, align 8
  %161 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %163, align 8
  %165 = load i64, i64* %6, align 8
  %166 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %164, i64 %165
  %167 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %166, i32 0, i32 2
  %168 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %167, align 8
  %169 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %15, align 8
  %170 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %169, i32 0, i32 2
  store %struct._xmlDictEntry* %168, %struct._xmlDictEntry** %170, align 8
  %171 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %15, align 8
  %172 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %171, i32 0, i32 0
  store i64 1, i64* %172, align 8
  %173 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %15, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %175, align 8
  %177 = load i64, i64* %6, align 8
  %178 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %176, i64 %177
  %179 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %178, i32 0, i32 2
  store %struct._xmlDictEntry* %173, %struct._xmlDictEntry** %179, align 8
  br label %181

180:                                              ; preds = %139
  store i32 -1, i32* %13, align 4
  br label %181

181:                                              ; preds = %180, %144
  br label %182

182:                                              ; preds = %181, %116
  br label %183

183:                                              ; preds = %182, %79
  %184 = load i64, i64* %9, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %9, align 8
  br label %68

186:                                              ; preds = %68
  store i64 0, i64* %9, align 8
  br label %187

187:                                              ; preds = %285, %186
  %188 = load i64, i64* %9, align 8
  %189 = load i64, i64* %8, align 8
  %190 = icmp ult i64 %188, %189
  br i1 %190, label %191, label %288

191:                                              ; preds = %187
  %192 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %12, align 8
  %193 = load i64, i64* %9, align 8
  %194 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %192, i64 %193
  %195 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %194, i32 0, i32 2
  %196 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %195, align 8
  store %struct._xmlDictEntry* %196, %struct._xmlDictEntry** %10, align 8
  br label %197

197:                                              ; preds = %282, %191
  %198 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8
  %199 = icmp ne %struct._xmlDictEntry* %198, null
  br i1 %199, label %200, label %284

200:                                              ; preds = %197
  %201 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8
  %202 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %201, i32 0, i32 2
  %203 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %202, align 8
  store %struct._xmlDictEntry* %203, %struct._xmlDictEntry** %11, align 8
  %204 = load i32, i32* %14, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8
  %208 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %7, align 8
  br label %219

210:                                              ; preds = %200
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %212 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8
  %213 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8
  %216 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = call i64 @xmlDictComputeKey(%struct.TYPE_4__* %211, i32 %214, i32 %217)
  store i64 %218, i64* %7, align 8
  br label %219

219:                                              ; preds = %210, %206
  %220 = load i64, i64* %7, align 8
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = urem i64 %220, %223
  store i64 %224, i64* %6, align 8
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %226, align 8
  %228 = load i64, i64* %6, align 8
  %229 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %227, i64 %228
  %230 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %262

233:                                              ; preds = %219
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  %236 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %235, align 8
  %237 = load i64, i64* %6, align 8
  %238 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %236, i64 %237
  %239 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8
  %240 = call i32 @memcpy(%struct._xmlDictEntry* %238, %struct._xmlDictEntry* %239, i32 4)
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 1
  %243 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %242, align 8
  %244 = load i64, i64* %6, align 8
  %245 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %243, i64 %244
  %246 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %245, i32 0, i32 2
  store %struct._xmlDictEntry* null, %struct._xmlDictEntry** %246, align 8
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  %249 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %248, align 8
  %250 = load i64, i64* %6, align 8
  %251 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %249, i64 %250
  %252 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %251, i32 0, i32 0
  store i64 1, i64* %252, align 8
  %253 = load i64, i64* %7, align 8
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 1
  %256 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %255, align 8
  %257 = load i64, i64* %6, align 8
  %258 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %256, i64 %257
  %259 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %258, i32 0, i32 1
  store i64 %253, i64* %259, align 8
  %260 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8
  %261 = call i32 @xmlFree(%struct._xmlDictEntry* %260)
  br label %282

262:                                              ; preds = %219
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  %265 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %264, align 8
  %266 = load i64, i64* %6, align 8
  %267 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %265, i64 %266
  %268 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %267, i32 0, i32 2
  %269 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %268, align 8
  %270 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8
  %271 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %270, i32 0, i32 2
  store %struct._xmlDictEntry* %269, %struct._xmlDictEntry** %271, align 8
  %272 = load i64, i64* %7, align 8
  %273 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8
  %274 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %273, i32 0, i32 1
  store i64 %272, i64* %274, align 8
  %275 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 1
  %278 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %277, align 8
  %279 = load i64, i64* %6, align 8
  %280 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %278, i64 %279
  %281 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %280, i32 0, i32 2
  store %struct._xmlDictEntry* %275, %struct._xmlDictEntry** %281, align 8
  br label %282

282:                                              ; preds = %262, %233
  %283 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %11, align 8
  store %struct._xmlDictEntry* %283, %struct._xmlDictEntry** %10, align 8
  br label %197

284:                                              ; preds = %197
  br label %285

285:                                              ; preds = %284
  %286 = load i64, i64* %9, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %9, align 8
  br label %187

288:                                              ; preds = %187
  %289 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %12, align 8
  %290 = call i32 @xmlFree(%struct._xmlDictEntry* %289)
  %291 = load i32, i32* %13, align 4
  store i32 %291, i32* %3, align 4
  br label %292

292:                                              ; preds = %288, %54, %36, %26, %22, %18
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

declare dso_local i8* @xmlMalloc(i32) #1

declare dso_local i32 @memset(%struct._xmlDictEntry*, i32, i64) #1

declare dso_local i64 @xmlDictComputeKey(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct._xmlDictEntry*, %struct._xmlDictEntry*, i32) #1

declare dso_local i32 @xmlFree(%struct._xmlDictEntry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
