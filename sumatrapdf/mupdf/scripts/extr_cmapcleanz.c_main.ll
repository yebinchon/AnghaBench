; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/scripts/extr_cmapcleanz.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/scripts/extr_cmapcleanz.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i8*, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, i32, i32* }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"usage: cmapclean input.cmap\0A\00", align 1
@FZ_STORE_UNLIMITED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot initialise context\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"begincmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"/CMapName /%s def\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"/WMode %d def\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"/%s usecmap\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"begincodespacerange\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"<%02x><%02x>\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"<%04x><%04x>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"<%06x><%06x>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"<%08x><%08x>\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"<%x><%x>\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"endcodespacerange\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"begincidchar\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"endcidchar\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"begincidrange\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"endcidrange\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"endcmap\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %525

18:                                               ; preds = %2
  %19 = load i32, i32* @FZ_STORE_UNLIMITED, align 4
  %20 = call i32* @fz_new_context(i32* null, i32* null, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %525

26:                                               ; preds = %18
  %27 = load i32*, i32** %6, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32* @fz_open_file(i32* %27, i8* %30)
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call %struct.TYPE_11__* @pdf_load_cmap(i32* %32, i32* %33)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %8, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @fz_drop_stream(i32* %35, i32* %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %26
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %53, %26
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %210

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %205, %63
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %208

71:                                               ; preds = %65
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 10
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %99

81:                                               ; preds = %71
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 10
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 10
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %89, i32 %97)
  br label %204

99:                                               ; preds = %71
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 10
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %127

109:                                              ; preds = %99
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 10
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 10
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %117, i32 %125)
  br label %203

127:                                              ; preds = %99
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 10
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %155

137:                                              ; preds = %127
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 10
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 10
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %145, i32 %153)
  br label %202

155:                                              ; preds = %127
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 10
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 4
  br i1 %164, label %165, label %183

165:                                              ; preds = %155
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 10
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 10
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %173, i32 %181)
  br label %201

183:                                              ; preds = %155
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 10
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 10
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %191, i32 %199)
  br label %201

201:                                              ; preds = %183, %165
  br label %202

202:                                              ; preds = %201, %137
  br label %203

203:                                              ; preds = %202, %109
  br label %204

204:                                              ; preds = %203, %81
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %65

208:                                              ; preds = %65
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %58
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %211

211:                                              ; preds = %243, %210
  %212 = load i32, i32* %9, align 4
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %246

217:                                              ; preds = %211
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 9
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 9
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = sub nsw i64 %225, %233
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %217
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %12, align 4
  br label %242

239:                                              ; preds = %217
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %11, align 4
  br label %242

242:                                              ; preds = %239, %236
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %9, align 4
  br label %211

246:                                              ; preds = %211
  %247 = load i32, i32* %11, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %301

249:                                              ; preds = %246
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %251

251:                                              ; preds = %296, %249
  %252 = load i32, i32* %9, align 4
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = icmp slt i32 %252, %255
  br i1 %256, label %257, label %299

257:                                              ; preds = %251
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 9
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %259, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 9
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %267, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = sub nsw i64 %265, %273
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %295

276:                                              ; preds = %257
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 9
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %278, align 8
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @pc(i64 %284)
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 9
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %287, align 8
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %293)
  br label %295

295:                                              ; preds = %276, %257
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %9, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %9, align 4
  br label %251

299:                                              ; preds = %251
  %300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  br label %301

301:                                              ; preds = %299, %246
  %302 = load i32, i32* %12, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %366

304:                                              ; preds = %301
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %306

306:                                              ; preds = %361, %304
  %307 = load i32, i32* %9, align 4
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 4
  %311 = icmp slt i32 %307, %310
  br i1 %311, label %312, label %364

312:                                              ; preds = %306
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 9
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %314, align 8
  %316 = load i32, i32* %9, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 9
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = load i32, i32* %9, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = sub nsw i64 %320, %328
  %330 = icmp sgt i64 %329, 0
  br i1 %330, label %331, label %360

331:                                              ; preds = %312
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 9
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %333, align 8
  %335 = load i32, i32* %9, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = call i32 @pc(i64 %339)
  %341 = call i32 @putchar(i8 signext 32)
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 9
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %343, align 8
  %345 = load i32, i32* %9, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = call i32 @pc(i64 %349)
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 9
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %352, align 8
  %354 = load i32, i32* %9, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %358)
  br label %360

360:                                              ; preds = %331, %312
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %9, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %9, align 4
  br label %306

364:                                              ; preds = %306
  %365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %366

366:                                              ; preds = %364, %301
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %367

367:                                              ; preds = %399, %366
  %368 = load i32, i32* %9, align 4
  %369 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 5
  %371 = load i32, i32* %370, align 8
  %372 = icmp slt i32 %368, %371
  br i1 %372, label %373, label %402

373:                                              ; preds = %367
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 8
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %375, align 8
  %377 = load i32, i32* %9, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i32 0, i32 8
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %383, align 8
  %385 = load i32, i32* %9, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = sub nsw i64 %381, %389
  %391 = icmp sgt i64 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %373
  %393 = load i32, i32* %12, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %12, align 4
  br label %398

395:                                              ; preds = %373
  %396 = load i32, i32* %11, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %11, align 4
  br label %398

398:                                              ; preds = %395, %392
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %9, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %9, align 4
  br label %367

402:                                              ; preds = %367
  %403 = load i32, i32* %11, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %457

405:                                              ; preds = %402
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %407

407:                                              ; preds = %452, %405
  %408 = load i32, i32* %9, align 4
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 5
  %411 = load i32, i32* %410, align 8
  %412 = icmp slt i32 %408, %411
  br i1 %412, label %413, label %455

413:                                              ; preds = %407
  %414 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 8
  %416 = load %struct.TYPE_8__*, %struct.TYPE_8__** %415, align 8
  %417 = load i32, i32* %9, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i32 0, i32 8
  %424 = load %struct.TYPE_8__*, %struct.TYPE_8__** %423, align 8
  %425 = load i32, i32* %9, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = sub nsw i64 %421, %429
  %431 = icmp eq i64 %430, 0
  br i1 %431, label %432, label %451

432:                                              ; preds = %413
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 8
  %435 = load %struct.TYPE_8__*, %struct.TYPE_8__** %434, align 8
  %436 = load i32, i32* %9, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i64 %437
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = call i32 @pc(i64 %440)
  %442 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i32 0, i32 8
  %444 = load %struct.TYPE_8__*, %struct.TYPE_8__** %443, align 8
  %445 = load i32, i32* %9, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %447, i32 0, i32 2
  %449 = load i32, i32* %448, align 8
  %450 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %449)
  br label %451

451:                                              ; preds = %432, %413
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %9, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %9, align 4
  br label %407

455:                                              ; preds = %407
  %456 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  br label %457

457:                                              ; preds = %455, %402
  %458 = load i32, i32* %12, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %521

460:                                              ; preds = %457
  %461 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %462

462:                                              ; preds = %516, %460
  %463 = load i32, i32* %9, align 4
  %464 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %465 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %464, i32 0, i32 5
  %466 = load i32, i32* %465, align 8
  %467 = icmp slt i32 %463, %466
  br i1 %467, label %468, label %519

468:                                              ; preds = %462
  %469 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %470 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %469, i32 0, i32 8
  %471 = load %struct.TYPE_8__*, %struct.TYPE_8__** %470, align 8
  %472 = load i32, i32* %9, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %471, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %477, i32 0, i32 8
  %479 = load %struct.TYPE_8__*, %struct.TYPE_8__** %478, align 8
  %480 = load i32, i32* %9, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %479, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %482, i32 0, i32 1
  %484 = load i64, i64* %483, align 8
  %485 = sub nsw i64 %476, %484
  %486 = icmp sgt i64 %485, 0
  br i1 %486, label %487, label %515

487:                                              ; preds = %468
  %488 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %489 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %488, i32 0, i32 8
  %490 = load %struct.TYPE_8__*, %struct.TYPE_8__** %489, align 8
  %491 = load i32, i32* %9, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %490, i64 %492
  %494 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %493, i32 0, i32 1
  %495 = load i64, i64* %494, align 8
  %496 = call i32 @pc(i64 %495)
  %497 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %498 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %497, i32 0, i32 8
  %499 = load %struct.TYPE_8__*, %struct.TYPE_8__** %498, align 8
  %500 = load i32, i32* %9, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %499, i64 %501
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = call i32 @pc(i64 %504)
  %506 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %507 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %506, i32 0, i32 8
  %508 = load %struct.TYPE_8__*, %struct.TYPE_8__** %507, align 8
  %509 = load i32, i32* %9, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %508, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %513)
  br label %515

515:                                              ; preds = %487, %468
  br label %516

516:                                              ; preds = %515
  %517 = load i32, i32* %9, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %9, align 4
  br label %462

519:                                              ; preds = %462
  %520 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %521

521:                                              ; preds = %519, %457
  %522 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %523 = load i32*, i32** %6, align 8
  %524 = call i32 @fz_drop_context(i32* %523)
  store i32 0, i32* %3, align 4
  br label %525

525:                                              ; preds = %521, %23, %15
  %526 = load i32, i32* %3, align 4
  ret i32 %526
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @fz_new_context(i32*, i32*, i32) #1

declare dso_local i32* @fz_open_file(i32*, i8*) #1

declare dso_local %struct.TYPE_11__* @pdf_load_cmap(i32*, i32*) #1

declare dso_local i32 @fz_drop_stream(i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pc(i64) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fz_drop_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
