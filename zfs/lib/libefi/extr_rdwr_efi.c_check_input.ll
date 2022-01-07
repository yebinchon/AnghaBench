; ModuleID = '/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_check_input.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_check_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dk_gpt = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@V_UNASSIGNED = common dso_local global i32 0, align 4
@efi_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"partition %d is \22unassigned\22 but has a size of %llu\00", align 1
@VT_EINVAL = common dso_local global i32 0, align 4
@V_RESERVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"found duplicate reserved partition at %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Partition %d starts at %llu.  \00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"It must be between %llu and %llu.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Partition %d ends at %llu.  \00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Partition %d overlaps partition %d.\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"no reserved partition found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dk_gpt*)* @check_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_input(%struct.dk_gpt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dk_gpt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dk_gpt* %0, %struct.dk_gpt** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %318, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %15 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %321

18:                                               ; preds = %12
  %19 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %20 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @V_UNASSIGNED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %18
  %30 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %31 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %29
  %40 = load i64, i64* @efi_debug, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %46 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %52)
  br label %54

54:                                               ; preds = %42, %39
  %55 = load i32, i32* @VT_EINVAL, align 4
  store i32 %55, i32* %2, align 4
  br label %331

56:                                               ; preds = %29, %18
  %57 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %58 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @V_UNASSIGNED, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %56
  %68 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %69 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = call i64 @uuid_is_null(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %318

78:                                               ; preds = %67
  %79 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %80 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 255, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %56
  %87 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %88 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @V_RESERVED, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %86
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i64, i64* @efi_debug, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* @stderr, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i32, i32* @VT_EINVAL, align 4
  store i32 %108, i32* %2, align 4
  br label %331

109:                                              ; preds = %97
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %86
  %112 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %113 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %112, i32 0, i32 3
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %121 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %137, label %124

124:                                              ; preds = %111
  %125 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %126 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %125, i32 0, i32 3
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %134 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %132, %135
  br i1 %136, label %137, label %162

137:                                              ; preds = %124, %111
  %138 = load i64, i64* @efi_debug, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %137
  %141 = load i32, i32* @stderr, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %144 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %143, i32 0, i32 3
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %142, i32 %150)
  %152 = load i32, i32* @stderr, align 4
  %153 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %154 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %157 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %140, %137
  %161 = load i32, i32* @VT_EINVAL, align 4
  store i32 %161, i32* %2, align 4
  br label %331

162:                                              ; preds = %124
  %163 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %164 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %163, i32 0, i32 3
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %172 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %171, i32 0, i32 3
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %170, %178
  %180 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %181 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %207, label %184

184:                                              ; preds = %162
  %185 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %186 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %185, i32 0, i32 3
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %194 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %193, i32 0, i32 3
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %192, %200
  %202 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %203 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  %206 = icmp sgt i32 %201, %205
  br i1 %206, label %207, label %241

207:                                              ; preds = %184, %162
  %208 = load i64, i64* @efi_debug, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %239

210:                                              ; preds = %207
  %211 = load i32, i32* @stderr, align 4
  %212 = load i32, i32* %5, align 4
  %213 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %214 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %213, i32 0, i32 3
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %222 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %221, i32 0, i32 3
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %220, %228
  %230 = call i32 (i32, i8*, ...) @fprintf(i32 %211, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %212, i32 %229)
  %231 = load i32, i32* @stderr, align 4
  %232 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %233 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %236 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (i32, i8*, ...) @fprintf(i32 %231, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %234, i32 %237)
  br label %239

239:                                              ; preds = %210, %207
  %240 = load i32, i32* @VT_EINVAL, align 4
  store i32 %240, i32* %2, align 4
  br label %331

241:                                              ; preds = %184
  store i32 0, i32* %6, align 4
  br label %242

242:                                              ; preds = %314, %241
  %243 = load i32, i32* %6, align 4
  %244 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %245 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp slt i32 %243, %246
  br i1 %247, label %248, label %317

248:                                              ; preds = %242
  %249 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %250 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %249, i32 0, i32 3
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %9, align 4
  %257 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %258 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %257, i32 0, i32 3
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %10, align 4
  %265 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %266 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %265, i32 0, i32 3
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** %266, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %7, align 4
  %273 = load %struct.dk_gpt*, %struct.dk_gpt** %3, align 8
  %274 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %273, i32 0, i32 3
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %8, align 4
  %281 = load i32, i32* %5, align 4
  %282 = load i32, i32* %6, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %313

284:                                              ; preds = %248
  %285 = load i32, i32* %9, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %313

287:                                              ; preds = %284
  %288 = load i32, i32* %10, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %313

290:                                              ; preds = %287
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* %10, align 4
  %293 = add nsw i32 %291, %292
  %294 = sub nsw i32 %293, 1
  store i32 %294, i32* %11, align 4
  %295 = load i32, i32* %8, align 4
  %296 = load i32, i32* %7, align 4
  %297 = icmp sle i32 %295, %296
  br i1 %297, label %298, label %312

298:                                              ; preds = %290
  %299 = load i32, i32* %7, align 4
  %300 = load i32, i32* %11, align 4
  %301 = icmp sle i32 %299, %300
  br i1 %301, label %302, label %312

302:                                              ; preds = %298
  %303 = load i64, i64* @efi_debug, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %302
  %306 = load i32, i32* @stderr, align 4
  %307 = load i32, i32* %5, align 4
  %308 = load i32, i32* %6, align 4
  %309 = call i32 (i32, i8*, ...) @fprintf(i32 %306, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %305, %302
  %311 = load i32, i32* @VT_EINVAL, align 4
  store i32 %311, i32* %2, align 4
  br label %331

312:                                              ; preds = %298, %290
  br label %313

313:                                              ; preds = %312, %287, %284, %248
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %6, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %6, align 4
  br label %242

317:                                              ; preds = %242
  br label %318

318:                                              ; preds = %317, %77
  %319 = load i32, i32* %5, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %5, align 4
  br label %12

321:                                              ; preds = %12
  %322 = load i32, i32* %4, align 4
  %323 = icmp eq i32 %322, -1
  br i1 %323, label %324, label %330

324:                                              ; preds = %321
  %325 = load i64, i64* @efi_debug, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load i32, i32* @stderr, align 4
  %329 = call i32 (i32, i8*, ...) @fprintf(i32 %328, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %330

330:                                              ; preds = %327, %324, %321
  store i32 0, i32* %2, align 4
  br label %331

331:                                              ; preds = %330, %310, %239, %160, %107, %54
  %332 = load i32, i32* %2, align 4
  ret i32 %332
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @uuid_is_null(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
