; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_ImportMarks.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_vdr.c_ImportMarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64*, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i8* }
%struct.stat = type { i32 }
%struct.TYPE_14__ = type { i32, i8* }

@.str = private unnamed_addr constant [6 x i8] c"marks\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"VDR Cut Marks\00", align 1
@CLOCK_FREQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"vdr-chapter-offset\00", align 1
@MIN_CHAPTER_SIZE = common dso_local global i32 0, align 4
@FILE_COUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @ImportMarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ImportMarks(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %3, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %25 = call i32* @OpenRelativeFile(%struct.TYPE_13__* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %265

29:                                               ; preds = %1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = call i32* @OpenRelativeFile(%struct.TYPE_13__* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @fclose(i32* %35)
  br label %265

37:                                               ; preds = %29
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @fileno(i32* %38)
  %40 = call i64 @fstat(i32 %39, %struct.stat* %6)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @fclose(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @fclose(i32* %45)
  br label %265

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 8
  store i32 %50, i32* %7, align 4
  %51 = call %struct.TYPE_15__* (...) @vlc_input_title_New()
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %8, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = icmp ne %struct.TYPE_15__* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @fclose(i32* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @fclose(i32* %57)
  br label %265

59:                                               ; preds = %47
  %60 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i8* @strdup(i8* %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @CLOCK_FREQ, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sdiv i32 %65, %68
  %70 = mul nsw i32 %64, %69
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  store i64* null, i64** %9, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sdiv i32 %75, 1000
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %78 = call i32 @var_InheritInteger(%struct.TYPE_13__* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %79 = mul nsw i32 %76, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MIN_CHAPTER_SIZE, align 4
  %84 = mul nsw i32 %82, %83
  store i32 %84, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  br label %85

85:                                               ; preds = %183, %139, %134, %126, %106, %59
  %86 = load i32*, i32** %4, align 8
  %87 = call i64 @ReadLine(i8** %13, i64* %14, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %192

89:                                               ; preds = %85
  %90 = load i8*, i8** %13, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ParseFrameNumber(i8* %90, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %12, align 4
  %97 = sub nsw i32 %95, %96
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %102, %103
  %105 = icmp sge i32 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100, %89
  br label %85

107:                                              ; preds = %100
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %10, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %15, align 4
  br label %118

117:                                              ; preds = %107
  store i32 0, i32* %15, align 4
  br label %118

118:                                              ; preds = %117, %113
  %119 = load i32*, i32** %5, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @ReadIndexRecord(i32* %119, i32 %122, i32 %123, i64* %16, i32* %17)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %118
  br label %85

127:                                              ; preds = %118
  %128 = load i32, i32* %17, align 4
  %129 = icmp slt i32 %128, 1
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* @FILE_COUNT, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %127
  br label %85

135:                                              ; preds = %130
  %136 = call %struct.TYPE_14__* (...) @vlc_seekpoint_New()
  store %struct.TYPE_14__* %136, %struct.TYPE_14__** %18, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %138 = icmp ne %struct.TYPE_14__* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  br label %85

140:                                              ; preds = %135
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* @CLOCK_FREQ, align 4
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sdiv i32 %142, %145
  %147 = mul nsw i32 %141, %146
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = call i8* @strdup(i8* %150)
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %161 = call i32 @TAB_APPEND(i32 %156, i32 %159, %struct.TYPE_14__* %160)
  %162 = load i64*, i64** %9, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 8
  %168 = trunc i64 %167 to i32
  %169 = call i64* @xrealloc(i64* %162, i32 %168)
  store i64* %169, i64** %9, align 8
  store i32 0, i32* %19, align 4
  br label %170

170:                                              ; preds = %180, %140
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %171, 1
  %173 = load i32, i32* %17, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = load i32, i32* %19, align 4
  %177 = call i64 @FILE_SIZE(i32 %176)
  %178 = load i64, i64* %16, align 8
  %179 = add nsw i64 %178, %177
  store i64 %179, i64* %16, align 8
  br label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %19, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %19, align 4
  br label %170

183:                                              ; preds = %170
  %184 = load i64, i64* %16, align 8
  %185 = load i64*, i64** %9, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %185, i64 %190
  store i64 %184, i64* %191, align 8
  br label %85

192:                                              ; preds = %85
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %243

197:                                              ; preds = %192
  %198 = load i64*, i64** %9, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %243

202:                                              ; preds = %197
  %203 = call %struct.TYPE_14__* (...) @vlc_seekpoint_New()
  store %struct.TYPE_14__* %203, %struct.TYPE_14__** %20, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %205 = icmp ne %struct.TYPE_14__* %204, null
  br i1 %205, label %206, label %242

206:                                              ; preds = %202
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  store i32 0, i32* %208, align 8
  %209 = call i8* @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %210 = call i8* @strdup(i8* %209)
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  store i8* %210, i8** %212, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %220 = call i32 @TAB_INSERT(i32 %215, i32 %218, %struct.TYPE_14__* %219, i32 0)
  %221 = load i64*, i64** %9, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = mul i64 %225, 8
  %227 = trunc i64 %226 to i32
  %228 = call i64* @xrealloc(i64* %221, i32 %227)
  store i64* %228, i64** %9, align 8
  %229 = load i64*, i64** %9, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 1
  %231 = load i64*, i64** %9, align 8
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = mul i64 %236, 8
  %238 = trunc i64 %237 to i32
  %239 = call i32 @memmove(i64* %230, i64* %231, i32 %238)
  %240 = load i64*, i64** %9, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 0
  store i64 0, i64* %241, align 8
  br label %242

242:                                              ; preds = %206, %202
  br label %243

243:                                              ; preds = %242, %197, %192
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %243
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 2
  store %struct.TYPE_15__* %249, %struct.TYPE_15__** %251, align 8
  %252 = load i64*, i64** %9, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  store i64* %252, i64** %254, align 8
  br label %260

255:                                              ; preds = %243
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %257 = call i32 @vlc_input_title_Delete(%struct.TYPE_15__* %256)
  %258 = load i64*, i64** %9, align 8
  %259 = call i32 @free(i64* %258)
  br label %260

260:                                              ; preds = %255, %248
  %261 = load i32*, i32** %4, align 8
  %262 = call i32 @fclose(i32* %261)
  %263 = load i32*, i32** %5, align 8
  %264 = call i32 @fclose(i32* %263)
  br label %265

265:                                              ; preds = %260, %54, %42, %34, %28
  ret void
}

declare dso_local i32* @OpenRelativeFile(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local %struct.TYPE_15__* @vlc_input_title_New(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @var_InheritInteger(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @ReadLine(i8**, i64*, i32*) #1

declare dso_local i32 @ParseFrameNumber(i8*, i32) #1

declare dso_local i32 @ReadIndexRecord(i32*, i32, i32, i64*, i32*) #1

declare dso_local %struct.TYPE_14__* @vlc_seekpoint_New(...) #1

declare dso_local i32 @TAB_APPEND(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i64* @xrealloc(i64*, i32) #1

declare dso_local i64 @FILE_SIZE(i32) #1

declare dso_local i32 @TAB_INSERT(i32, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @vlc_input_title_Delete(%struct.TYPE_15__*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
