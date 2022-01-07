; ModuleID = '/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_efi_err_check.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_efi_err_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dk_gpt = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@V_UNASSIGNED = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"partition %d is \22unassigned\22 but has a size of %llu\0A\00", align 1
@V_RESERVED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"found duplicate reserved partition at %d\0A\00", align 1
@EFI_MIN_RESV_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Warning: reserved partition size must be %d sectors\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Partition %d starts at %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"It must be between %llu and %llu.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Partition %d ends at %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"label error: EFI Labels do not support overlapping partitions\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Partition %d overlaps partition %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"no reserved partition found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efi_err_check(%struct.dk_gpt* %0) #0 {
  %2 = alloca %struct.dk_gpt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dk_gpt* %0, %struct.dk_gpt** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %296, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %15 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %299

18:                                               ; preds = %12
  %19 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %20 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V_UNASSIGNED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %18
  %30 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %31 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %29
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %43 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %49)
  br label %51

51:                                               ; preds = %39, %29, %18
  %52 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %53 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @V_UNASSIGNED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %296

63:                                               ; preds = %51
  %64 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %65 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @V_RESERVED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %63
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %3, align 4
  %83 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %84 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @EFI_MIN_RESV_SIZE, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %81
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* @EFI_MIN_RESV_SIZE, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %81
  br label %98

98:                                               ; preds = %97, %63
  %99 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %100 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %108 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %124, label %111

111:                                              ; preds = %98
  %112 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %113 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %112, i32 0, i32 3
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %121 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %119, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %111, %98
  %125 = load i32, i32* @stderr, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %128 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %127, i32 0, i32 3
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %126, i32 %134)
  %136 = load i32, i32* @stderr, align 4
  %137 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %138 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %141 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %124, %111
  %145 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %146 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %145, i32 0, i32 3
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %154 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %153, i32 0, i32 3
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %152, %160
  %162 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %163 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %189, label %166

166:                                              ; preds = %144
  %167 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %168 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %167, i32 0, i32 3
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %176 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %175, i32 0, i32 3
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %174, %182
  %184 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %185 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, 1
  %188 = icmp sgt i32 %183, %187
  br i1 %188, label %189, label %218

189:                                              ; preds = %166, %144
  %190 = load i32, i32* @stderr, align 4
  %191 = load i32, i32* %4, align 4
  %192 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %193 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %192, i32 0, i32 3
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = load i32, i32* %4, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %201 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %200, i32 0, i32 3
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %199, %207
  %209 = call i32 (i32, i8*, ...) @fprintf(i32 %190, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %191, i32 %208)
  %210 = load i32, i32* @stderr, align 4
  %211 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %212 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %215 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %213, i32 %216)
  br label %218

218:                                              ; preds = %189, %166
  store i32 0, i32* %5, align 4
  br label %219

219:                                              ; preds = %292, %218
  %220 = load i32, i32* %5, align 4
  %221 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %222 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %295

225:                                              ; preds = %219
  %226 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %227 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %226, i32 0, i32 3
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = load i32, i32* %4, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %8, align 4
  %234 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %235 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %234, i32 0, i32 3
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* %9, align 4
  %242 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %243 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %242, i32 0, i32 3
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** %243, align 8
  %245 = load i32, i32* %4, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %6, align 4
  %250 = load %struct.dk_gpt*, %struct.dk_gpt** %2, align 8
  %251 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %250, i32 0, i32 3
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %7, align 4
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* %5, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %291

261:                                              ; preds = %225
  %262 = load i32, i32* %8, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %291

264:                                              ; preds = %261
  %265 = load i32, i32* %9, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %291

267:                                              ; preds = %264
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* %9, align 4
  %270 = add nsw i32 %268, %269
  %271 = sub nsw i32 %270, 1
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* %6, align 4
  %274 = icmp sle i32 %272, %273
  br i1 %274, label %275, label %290

275:                                              ; preds = %267
  %276 = load i32, i32* %6, align 4
  %277 = load i32, i32* %10, align 4
  %278 = icmp sle i32 %276, %277
  br i1 %278, label %279, label %290

279:                                              ; preds = %275
  %280 = load i32, i32* %11, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %279
  %283 = load i32, i32* @stderr, align 4
  %284 = call i32 (i32, i8*, ...) @fprintf(i32 %283, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0))
  br label %285

285:                                              ; preds = %282, %279
  %286 = load i32, i32* @stderr, align 4
  %287 = load i32, i32* %4, align 4
  %288 = load i32, i32* %5, align 4
  %289 = call i32 (i32, i8*, ...) @fprintf(i32 %286, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %287, i32 %288)
  store i32 1, i32* %11, align 4
  br label %290

290:                                              ; preds = %285, %275, %267
  br label %291

291:                                              ; preds = %290, %264, %261, %225
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %5, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %5, align 4
  br label %219

295:                                              ; preds = %219
  br label %296

296:                                              ; preds = %295, %62
  %297 = load i32, i32* %4, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %4, align 4
  br label %12

299:                                              ; preds = %12
  %300 = load i32, i32* %3, align 4
  %301 = icmp eq i32 %300, -1
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load i32, i32* @stderr, align 4
  %304 = call i32 (i32, i8*, ...) @fprintf(i32 %303, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %305

305:                                              ; preds = %302, %299
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
