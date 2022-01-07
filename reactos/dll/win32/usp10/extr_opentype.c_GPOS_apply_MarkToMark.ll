; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_MarkToMark.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_apply_MarkToMark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"MarkToMark Attachment Positioning Subtable\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Mark %x(%i) and Mark2 %x(%i)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Mark index exceeded mark count\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Mark Class %i total classes %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Offset on mark2 is %s design units\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Offset on mark is %s design units\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Resulting cumulative offset is %s design units\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Unhandled Mark To Mark Format %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*, i32, i32, i32, %struct.TYPE_15__*)* @GPOS_apply_MarkToMark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GPOS_apply_MarkToMark(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_15__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_19__*, align 8
  %24 = alloca %struct.TYPE_17__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_20__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_15__, align 8
  %31 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %15, align 8
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %17, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %7
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %37, %7
  %44 = phi i1 [ false, %7 ], [ %42, %37 ]
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 -1, i32 1
  store i32 %46, i32* %18, align 4
  %47 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %237, %43
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @GET_BE_WORD(i32 %52)
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %240

55:                                               ; preds = %48
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i64 @GPOS_get_subtable(%struct.TYPE_16__* %56, i32 %57)
  %59 = inttoptr i64 %58 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %19, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @GET_BE_WORD(i32 %62)
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %230

65:                                               ; preds = %55
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @GET_BE_WORD(i32 %68)
  store i32 %69, i32* %20, align 4
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %71 = bitcast %struct.TYPE_18__* %70 to i32*
  %72 = load i32, i32* %20, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @GSUB_is_glyph_covered(i32* %74, i32 %79)
  store i32 %80, i32* %21, align 4
  %81 = load i32, i32* %21, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %229

83:                                               ; preds = %65
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @GET_BE_WORD(i32 %86)
  store i32 %87, i32* %20, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %89 = bitcast %struct.TYPE_18__* %88 to i32*
  %90 = load i32, i32* %20, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %18, align 4
  %96 = sub i32 %94, %95
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @GSUB_is_glyph_covered(i32* %92, i32 %99)
  store i32 %100, i32* %22, align 4
  %101 = load i32, i32* %22, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %228

103:                                              ; preds = %83
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @GET_BE_WORD(i32 %106)
  store i32 %107, i32* %28, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %18, align 4
  %117 = sub i32 %115, %116
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %22, align 4
  %122 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %113, i32 %120, i32 %121)
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @GET_BE_WORD(i32 %125)
  store i32 %126, i32* %20, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %128 = bitcast %struct.TYPE_18__* %127 to i32*
  %129 = load i32, i32* %20, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = bitcast i32* %131 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %132, %struct.TYPE_19__** %23, align 8
  %133 = load i32, i32* %21, align 4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @GET_BE_WORD(i32 %136)
  %138 = icmp sgt i32 %133, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %103
  %140 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %8, align 4
  br label %242

142:                                              ; preds = %103
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = load i32, i32* %21, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i64 %147
  store %struct.TYPE_17__* %148, %struct.TYPE_17__** %24, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @GET_BE_WORD(i32 %151)
  store i32 %152, i32* %27, align 4
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* %28, align 4
  %155 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %153, i32 %154)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @GET_BE_WORD(i32 %158)
  store i32 %159, i32* %20, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %161 = bitcast %struct.TYPE_18__* %160 to i32*
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32* %164, i32** %25, align 8
  %165 = load i32, i32* %28, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 4
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %29, align 4
  %169 = load i32*, i32** %25, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  %171 = load i32, i32* %29, align 4
  %172 = load i32, i32* %22, align 4
  %173 = mul nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = bitcast i32* %175 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %176, %struct.TYPE_20__** %26, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %27, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @GET_BE_WORD(i32 %183)
  store i32 %184, i32* %20, align 4
  %185 = load i32*, i32** %25, align 8
  %186 = load i32, i32* %20, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @GPOS_get_anchor_values(i32* %188, %struct.TYPE_15__* %30, i32 %189)
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @GET_BE_WORD(i32 %193)
  store i32 %194, i32* %20, align 4
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %196 = bitcast %struct.TYPE_19__* %195 to i32*
  %197 = load i32, i32* %20, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @GPOS_get_anchor_values(i32* %199, %struct.TYPE_15__* %31, i32 %200)
  %202 = call i32 @wine_dbgstr_point(%struct.TYPE_15__* %30)
  %203 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %202)
  %204 = call i32 @wine_dbgstr_point(%struct.TYPE_15__* %31)
  %205 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %204)
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = sub nsw i64 %207, %209
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, %210
  store i64 %214, i64* %212, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %216, %218
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, %219
  store i64 %223, i64* %221, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %225 = call i32 @wine_dbgstr_point(%struct.TYPE_15__* %224)
  %226 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* @TRUE, align 4
  store i32 %227, i32* %17, align 4
  br label %228

228:                                              ; preds = %142, %83
  br label %229

229:                                              ; preds = %228, %65
  br label %236

230:                                              ; preds = %55
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @GET_BE_WORD(i32 %233)
  %235 = call i32 @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %230, %229
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %16, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %16, align 4
  br label %48

240:                                              ; preds = %48
  %241 = load i32, i32* %17, align 4
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %240, %139
  %243 = load i32, i32* %8, align 4
  ret i32 %243
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i64 @GPOS_get_subtable(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @GSUB_is_glyph_covered(i32*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @GPOS_get_anchor_values(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @wine_dbgstr_point(%struct.TYPE_15__*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
