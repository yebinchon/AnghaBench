; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_usrmarshal.c_check_safearray.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_usrmarshal.c_check_safearray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"wiresa + 0x0 should be NULL instead of 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"wiresa + 0x0 should be non-NULL instead of 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"wiresa + 0x4 should be lpsa->cDims instead of 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"wiresa + 0x8 should be lpsa->cDims instead of 0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"wiresa + 0xa should be lpsa->fFeatures instead of 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"wiresa + 0xc should be 0x%08x instead of 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"wiresa + 0x10 should be lpsa->cLocks instead of 0x%04x\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"wiresa + 0x12 should be %04x instead of 0x%04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"wiresa + 0x14 should be %08x instead of 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"wiresa + 0x18 should be %u instead of %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"wiresa + 0x1c should be non-zero instead of 0x%08x\0A\00", align 1
@SF_HAVEIID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"guid mismatch\0A\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"bounds mismatch for dimension %d, got (%d,%d), expected (%d,%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"wiresa + 0x28 should be %u instead of %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_12__*)* @check_safearray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_safearray(i8* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %262

25:                                               ; preds = %2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = call i32 @pSafeArrayGetVartype(%struct.TYPE_12__* %26, i32* %7)
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = call i32 @get_union_type(%struct.TYPE_12__* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = call i32 @get_cell_count(%struct.TYPE_12__* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  %52 = zext i1 %51 to i32
  %53 = load i8*, i8** %5, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %58, i8** %5, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  %66 = zext i1 %65 to i32
  %67 = load i8*, i8** %5, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  store i8* %72, i8** %5, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %75, %78
  %80 = zext i1 %79 to i32
  %81 = load i8*, i8** %5, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 4
  store i8* %86, i8** %5, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @elem_wire_size(%struct.TYPE_12__* %90, i32 %91)
  %93 = icmp eq i32 %89, %92
  %94 = zext i1 %93 to i32
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @elem_wire_size(%struct.TYPE_12__* %95, i32 %96)
  %98 = load i8*, i8** %5, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %97, i32 %100)
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = bitcast i8* %104 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %106, %109
  %111 = zext i1 %110 to i32
  %112 = load i8*, i8** %5, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 4
  store i8* %117, i8** %5, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = bitcast i8* %118 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %7, align 4
  %125 = load i8*, i8** %5, align 8
  %126 = bitcast i8* %125 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %124, i32 %127)
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 4
  store i8* %130, i8** %5, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %8, align 4
  %138 = load i8*, i8** %5, align 8
  %139 = bitcast i8* %138 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %137, i32 %140)
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 4
  store i8* %143, i8** %5, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = bitcast i8* %144 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp eq i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %9, align 4
  %151 = load i8*, i8** %5, align 8
  %152 = bitcast i8* %151 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %150, i32 %153)
  %155 = load i8*, i8** %5, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 4
  store i8* %156, i8** %5, align 8
  %157 = load i8*, i8** %5, align 8
  %158 = bitcast i8* %157 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = load i8*, i8** %5, align 8
  %161 = bitcast i8* %160 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %162)
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 4
  store i8* %165, i8** %5, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @SF_HAVEIID, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %31
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = call i32 @pSafeArrayGetIID(%struct.TYPE_12__* %170, i32* %11)
  %172 = load i8*, i8** %5, align 8
  %173 = call i32 @IsEqualGUID(i32* %11, i8* %172)
  %174 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %175 = load i8*, i8** %5, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 4
  store i8* %176, i8** %5, align 8
  br label %177

177:                                              ; preds = %169, %31
  %178 = load i8*, i8** %5, align 8
  %179 = bitcast i8* %178 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %179, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %10, align 4
  br label %180

180:                                              ; preds = %238, %177
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %241

186:                                              ; preds = %180
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sub nsw i32 %193, %194
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i64 %197
  %199 = call i64 @memcmp(%struct.TYPE_11__* %187, %struct.TYPE_13__* %198, i32 8)
  %200 = icmp eq i64 %199, 0
  %201 = zext i1 %200 to i32
  %202 = load i32, i32* %10, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sub nsw i32 %214, %215
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %10, align 4
  %229 = sub nsw i32 %227, %228
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0), i32 %202, i32 %205, i32 %208, i32 %221, i32 %234)
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 1
  store %struct.TYPE_11__* %237, %struct.TYPE_11__** %6, align 8
  br label %238

238:                                              ; preds = %186
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %10, align 4
  br label %180

241:                                              ; preds = %180
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = mul i64 8, %245
  %247 = load i8*, i8** %5, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 %246
  store i8* %248, i8** %5, align 8
  %249 = load i8*, i8** %5, align 8
  %250 = bitcast i8* %249 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %9, align 4
  %253 = icmp eq i32 %251, %252
  %254 = zext i1 %253 to i32
  %255 = load i32, i32* %9, align 4
  %256 = load i8*, i8** %5, align 8
  %257 = bitcast i8* %256 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %255, i32 %258)
  %260 = load i8*, i8** %5, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 4
  store i8* %261, i8** %5, align 8
  br label %262

262:                                              ; preds = %241, %15
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @pSafeArrayGetVartype(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @get_union_type(%struct.TYPE_12__*) #1

declare dso_local i32 @get_cell_count(%struct.TYPE_12__*) #1

declare dso_local i32 @elem_wire_size(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @pSafeArrayGetIID(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @IsEqualGUID(i32*, i8*) #1

declare dso_local i64 @memcmp(%struct.TYPE_11__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
