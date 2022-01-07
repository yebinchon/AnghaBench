; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_save_all_changes.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_save_all_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"save_all_changes(%p)\0A\00", align 1
@MSFT_SEG_TYPEINFO = common dso_local global i32 0, align 4
@MSFT_SEG_GUIDHASH = common dso_local global i32 0, align 4
@MSFT_SEG_GUID = common dso_local global i32 0, align 4
@MSFT_SEG_REFERENCES = common dso_local global i32 0, align 4
@MSFT_SEG_IMPORTINFO = common dso_local global i32 0, align 4
@MSFT_SEG_IMPORTFILES = common dso_local global i32 0, align 4
@MSFT_SEG_NAMEHASH = common dso_local global i32 0, align 4
@MSFT_SEG_NAME = common dso_local global i32 0, align 4
@MSFT_SEG_STRING = common dso_local global i32 0, align 4
@MSFT_SEG_TYPEDESC = common dso_local global i32 0, align 4
@MSFT_SEG_ARRAYDESC = common dso_local global i32 0, align 4
@MSFT_SEG_CUSTDATA = common dso_local global i32 0, align 4
@MSFT_SEG_CUSTDATAGUID = common dso_local global i32 0, align 4
@byte_swapped = common dso_local global i64 0, align 8
@typelib_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".res\00", align 1
@__const.save_all_changes.typelib_id = private unnamed_addr constant [13 x i8] c"#1\00\00\00\00\00\00\00\00\00\00\00", align 1
@ATTR_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"TYPELIB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @save_all_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_all_changes(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [13 x i8], align 1
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = call i32 @chat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %6)
  store i32 8, i32* %3, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 256
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 4
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @MSFT_SEG_TYPEINFO, align 4
  %28 = call i64 @ctl2_finalize_segment(%struct.TYPE_12__* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @MSFT_SEG_GUIDHASH, align 4
  %36 = call i64 @ctl2_finalize_segment(%struct.TYPE_12__* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @MSFT_SEG_GUID, align 4
  %44 = call i64 @ctl2_finalize_segment(%struct.TYPE_12__* %41, i32 %42, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %3, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @MSFT_SEG_REFERENCES, align 4
  %52 = call i64 @ctl2_finalize_segment(%struct.TYPE_12__* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %3, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @MSFT_SEG_IMPORTINFO, align 4
  %60 = call i64 @ctl2_finalize_segment(%struct.TYPE_12__* %57, i32 %58, i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %3, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @MSFT_SEG_IMPORTFILES, align 4
  %68 = call i64 @ctl2_finalize_segment(%struct.TYPE_12__* %65, i32 %66, i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %3, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @MSFT_SEG_NAMEHASH, align 4
  %76 = call i64 @ctl2_finalize_segment(%struct.TYPE_12__* %73, i32 %74, i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %3, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @MSFT_SEG_NAME, align 4
  %84 = call i64 @ctl2_finalize_segment(%struct.TYPE_12__* %81, i32 %82, i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %3, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @MSFT_SEG_STRING, align 4
  %92 = call i64 @ctl2_finalize_segment(%struct.TYPE_12__* %89, i32 %90, i32 %91)
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %3, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @MSFT_SEG_TYPEDESC, align 4
  %100 = call i64 @ctl2_finalize_segment(%struct.TYPE_12__* %97, i32 %98, i32 %99)
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %3, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @MSFT_SEG_ARRAYDESC, align 4
  %108 = call i64 @ctl2_finalize_segment(%struct.TYPE_12__* %105, i32 %106, i32 %107)
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %3, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @MSFT_SEG_CUSTDATA, align 4
  %116 = call i64 @ctl2_finalize_segment(%struct.TYPE_12__* %113, i32 %114, i32 %115)
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %3, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @MSFT_SEG_CUSTDATAGUID, align 4
  %124 = call i64 @ctl2_finalize_segment(%struct.TYPE_12__* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %3, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @ctl2_finalize_typeinfos(%struct.TYPE_12__* %129, i32 %130)
  store i64 0, i64* @byte_swapped, align 8
  %132 = call i32 (...) @init_output_buffer()
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = call i32 @put_data(%struct.TYPE_14__* %134, i32 8)
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, 256
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %17
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 4
  %145 = call i32 @put_data(%struct.TYPE_14__* %144, i32 8)
  br label %146

146:                                              ; preds = %142, %17
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %153, 4
  %155 = call i32 @put_data(%struct.TYPE_14__* %149, i32 %154)
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = call i32 @put_data(%struct.TYPE_14__* %157, i32 8)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %160 = load i32, i32* @MSFT_SEG_TYPEINFO, align 4
  %161 = call i32 @ctl2_write_segment(%struct.TYPE_12__* %159, i32 %160)
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %163 = load i32, i32* @MSFT_SEG_GUIDHASH, align 4
  %164 = call i32 @ctl2_write_segment(%struct.TYPE_12__* %162, i32 %163)
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %166 = load i32, i32* @MSFT_SEG_GUID, align 4
  %167 = call i32 @ctl2_write_segment(%struct.TYPE_12__* %165, i32 %166)
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %169 = load i32, i32* @MSFT_SEG_REFERENCES, align 4
  %170 = call i32 @ctl2_write_segment(%struct.TYPE_12__* %168, i32 %169)
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %172 = load i32, i32* @MSFT_SEG_IMPORTINFO, align 4
  %173 = call i32 @ctl2_write_segment(%struct.TYPE_12__* %171, i32 %172)
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %175 = load i32, i32* @MSFT_SEG_IMPORTFILES, align 4
  %176 = call i32 @ctl2_write_segment(%struct.TYPE_12__* %174, i32 %175)
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %178 = load i32, i32* @MSFT_SEG_NAMEHASH, align 4
  %179 = call i32 @ctl2_write_segment(%struct.TYPE_12__* %177, i32 %178)
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %181 = load i32, i32* @MSFT_SEG_NAME, align 4
  %182 = call i32 @ctl2_write_segment(%struct.TYPE_12__* %180, i32 %181)
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %184 = load i32, i32* @MSFT_SEG_STRING, align 4
  %185 = call i32 @ctl2_write_segment(%struct.TYPE_12__* %183, i32 %184)
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %187 = load i32, i32* @MSFT_SEG_TYPEDESC, align 4
  %188 = call i32 @ctl2_write_segment(%struct.TYPE_12__* %186, i32 %187)
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %190 = load i32, i32* @MSFT_SEG_ARRAYDESC, align 4
  %191 = call i32 @ctl2_write_segment(%struct.TYPE_12__* %189, i32 %190)
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %193 = load i32, i32* @MSFT_SEG_CUSTDATA, align 4
  %194 = call i32 @ctl2_write_segment(%struct.TYPE_12__* %192, i32 %193)
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %196 = load i32, i32* @MSFT_SEG_CUSTDATAGUID, align 4
  %197 = call i32 @ctl2_write_segment(%struct.TYPE_12__* %195, i32 %196)
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %199 = call i32 @ctl2_write_typeinfos(%struct.TYPE_12__* %198)
  %200 = load i32, i32* @typelib_name, align 4
  %201 = call i64 @strendswith(i32 %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %227

203:                                              ; preds = %146
  %204 = bitcast [13 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %204, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.save_all_changes.typelib_id, i32 0, i32 0), i64 13, i1 false)
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @ATTR_ID, align 4
  %211 = call %struct.TYPE_13__* @get_attrp(i32 %209, i32 %210)
  store %struct.TYPE_13__* %211, %struct.TYPE_13__** %5, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %213 = icmp ne %struct.TYPE_13__* %212, null
  br i1 %213, label %214, label %220

214:                                              ; preds = %203
  %215 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 0
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @sprintf(i8* %215, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %214, %203
  %221 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 0
  %222 = call i32 @add_output_to_resources(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %221)
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %224, align 8
  %226 = call i32 @output_typelib_regscript(%struct.TYPE_15__* %225)
  br label %230

227:                                              ; preds = %146
  %228 = load i32, i32* @typelib_name, align 4
  %229 = call i32 @flush_output_buffer(i32 %228)
  br label %230

230:                                              ; preds = %227, %220
  ret void
}

declare dso_local i32 @chat(i8*, %struct.TYPE_12__*) #1

declare dso_local i64 @ctl2_finalize_segment(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ctl2_finalize_typeinfos(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @init_output_buffer(...) #1

declare dso_local i32 @put_data(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ctl2_write_segment(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ctl2_write_typeinfos(%struct.TYPE_12__*) #1

declare dso_local i64 @strendswith(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_13__* @get_attrp(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @add_output_to_resources(i8*, i8*) #1

declare dso_local i32 @output_typelib_regscript(%struct.TYPE_15__*) #1

declare dso_local i32 @flush_output_buffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
