; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_bookmark.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_bookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_21__ = type { i64, i64, i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64, i32, i64, i64* }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_26__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"\09#%s: \00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"{guid: %llx creation_txg: %llu creation_time: %llu redaction_obj: %llu}\0A\00", align 1
@FTAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"\09Redacted:\0A\09\09Progress: \00", align 1
@UINT64_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"%llu %llu (incomplete)\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"complete\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\09\09Snapshots: [\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%0llu\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"]\0A\09\09Length: %llu\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"\09\09Redaction List: []\0A\0A\00", align 1
@KM_SLEEP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [72 x i8] c"\09\09Redaction List: [{object: %llx, offset: %llx, blksz: %x, count: %llx}\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c",\0A\09\09{object: %llx, offset: %llx, blksz: %x, count: %llx}\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"]\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i8*, i32, i32)* @dump_bookmark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_bookmark(%struct.TYPE_25__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_26__, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %12, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @dsl_bookmark_lookup(%struct.TYPE_25__* %25, i8* %26, i32* null, %struct.TYPE_21__* %11)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %230

32:                                               ; preds = %4
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 35)
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42, i32 %45, i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @IMPLY(i32 %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %32
  store i32 0, i32* %5, align 4
  br label %230

60:                                               ; preds = %55
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @FTAG, align 4
  %65 = call i32 @dsl_redaction_list_hold_obj(%struct.TYPE_25__* %61, i64 %63, i32 %64, %struct.TYPE_22__** %13)
  %66 = call i32 @VERIFY0(i32 %65)
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %68, align 8
  store %struct.TYPE_23__* %69, %struct.TYPE_23__** %14, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @UINT64_MAX, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %60
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @UINT64_MAX, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76, %60
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %90)
  br label %94

92:                                               ; preds = %76
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %82
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %117, %94
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ult i32 %97, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %96
  %103 = load i32, i32* %15, align 4
  %104 = icmp ugt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %102
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 4
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %107
  %118 = load i32, i32* %15, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %96

120:                                              ; preds = %96
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %120
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %130 = load i32, i32* @FTAG, align 4
  %131 = call i32 @dsl_redaction_list_rele(%struct.TYPE_22__* %129, i32 %130)
  store i32 0, i32* %5, align 4
  br label %230

132:                                              ; preds = %120
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %139 = load i32, i32* @FTAG, align 4
  %140 = call i32 @dsl_redaction_list_rele(%struct.TYPE_22__* %138, i32 %139)
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %230

142:                                              ; preds = %132
  %143 = load i32*, i32** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @dmu_object_info(i32* %143, i64 %145, %struct.TYPE_26__* %18)
  %147 = call i32 @VERIFY0(i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* @KM_SLEEP, align 4
  %152 = call %struct.TYPE_24__* @kmem_alloc(i32 %150, i32 %151)
  store %struct.TYPE_24__* %152, %struct.TYPE_24__** %16, align 8
  %153 = load i32*, i32** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %17, align 4
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %158 = call i32 @dmu_read(i32* %153, i64 %155, i32 0, i32 %156, %struct.TYPE_24__* %157, i32 0)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %142
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %163 = load i32, i32* @FTAG, align 4
  %164 = call i32 @dsl_redaction_list_rele(%struct.TYPE_22__* %162, i32 %163)
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @kmem_free(%struct.TYPE_24__* %165, i32 %166)
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %5, align 4
  br label %230

169:                                              ; preds = %142
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i64 0
  %182 = call i64 @redact_block_get_size(%struct.TYPE_24__* %181)
  %183 = trunc i64 %182 to i32
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i64 0
  %186 = call i64 @redact_block_get_count(%struct.TYPE_24__* %185)
  %187 = trunc i64 %186 to i32
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 %174, i32 %179, i32 %183, i32 %187)
  store i64 1, i64* %19, align 8
  br label %189

189:                                              ; preds = %219, %169
  %190 = load i64, i64* %19, align 8
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ult i64 %190, %193
  br i1 %194, label %195, label %222

195:                                              ; preds = %189
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %197 = load i64, i64* %19, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %203 = load i64, i64* %19, align 8
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = trunc i64 %206 to i32
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %209 = load i64, i64* %19, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i64 %209
  %211 = call i64 @redact_block_get_size(%struct.TYPE_24__* %210)
  %212 = trunc i64 %211 to i32
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %214 = load i64, i64* %19, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i64 %214
  %216 = call i64 @redact_block_get_count(%struct.TYPE_24__* %215)
  %217 = trunc i64 %216 to i32
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i32 %201, i32 %207, i32 %212, i32 %217)
  br label %219

219:                                              ; preds = %195
  %220 = load i64, i64* %19, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %19, align 8
  br label %189

222:                                              ; preds = %189
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %224 = load i32, i32* @FTAG, align 4
  %225 = call i32 @dsl_redaction_list_rele(%struct.TYPE_22__* %223, i32 %224)
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %227 = load i32, i32* %17, align 4
  %228 = call i32 @kmem_free(%struct.TYPE_24__* %226, i32 %227)
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %230

230:                                              ; preds = %222, %161, %137, %128, %59, %30
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

declare dso_local i32 @dsl_bookmark_lookup(%struct.TYPE_25__*, i8*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @IMPLY(i32, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_redaction_list_hold_obj(%struct.TYPE_25__*, i64, i32, %struct.TYPE_22__**) #1

declare dso_local i32 @dsl_redaction_list_rele(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @dmu_object_info(i32*, i64, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_24__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @dmu_read(i32*, i64, i32, i32, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @redact_block_get_size(%struct.TYPE_24__*) #1

declare dso_local i64 @redact_block_get_count(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
