; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/scripts/extr_cmapcleanx.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/scripts/extr_cmapcleanx.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i8*, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.cidrange = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"usage: cmapclean input.cmap\0A\00", align 1
@FZ_STORE_UNLIMITED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot initialise context\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"begincmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"/CMapName /%s def\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"/WMode %d def\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"/%s usecmap\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"begincodespacerange\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"<%02x> <%02x>\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"<%04x> <%04x>\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"<%06x> <%06x>\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"<%08x> <%08x>\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"<%x> <%x>\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"endcodespacerange\0A\00", align 1
@cmpcidrange = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"begincidchar\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"endcidchar\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"endcmap\0A\00", align 1

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
  %13 = alloca %struct.cidrange*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %383

19:                                               ; preds = %2
  %20 = load i32, i32* @FZ_STORE_UNLIMITED, align 4
  %21 = call i32* @fz_new_context(i32* null, i32* null, i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %383

27:                                               ; preds = %19
  %28 = load i32*, i32** %6, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32* @fz_open_file(i32* %28, i8* %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call %struct.TYPE_11__* @pdf_load_cmap(i32* %33, i32* %34)
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %8, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @fz_drop_stream(i32* %36, i32* %37)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %27
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %54, %27
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %211

64:                                               ; preds = %59
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %206, %64
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %209

72:                                               ; preds = %66
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 10
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %100

82:                                               ; preds = %72
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 10
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 10
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %90, i32 %98)
  br label %205

100:                                              ; preds = %72
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 10
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %128

110:                                              ; preds = %100
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 10
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 10
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %118, i32 %126)
  br label %204

128:                                              ; preds = %100
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 10
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %156

138:                                              ; preds = %128
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 10
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 10
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %146, i32 %154)
  br label %203

156:                                              ; preds = %128
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 10
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 4
  br i1 %165, label %166, label %184

166:                                              ; preds = %156
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 10
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 10
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %174, i32 %182)
  br label %202

184:                                              ; preds = %156
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 10
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 10
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %192, i32 %200)
  br label %202

202:                                              ; preds = %184, %166
  br label %203

203:                                              ; preds = %202, %138
  br label %204

204:                                              ; preds = %203, %110
  br label %205

205:                                              ; preds = %204, %82
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %66

209:                                              ; preds = %66
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %59
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %214, %217
  store i32 %218, i32* %11, align 4
  %219 = load i32*, i32** %6, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = mul i64 %221, 12
  %223 = trunc i64 %222 to i32
  %224 = call %struct.cidrange* @fz_malloc(i32* %219, i32 %223)
  store %struct.cidrange* %224, %struct.cidrange** %13, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %225

225:                                              ; preds = %273, %211
  %226 = load i32, i32* %9, align 4
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %276

231:                                              ; preds = %225
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 9
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.cidrange*, %struct.cidrange** %13, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %240, i64 %242
  %244 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %243, i32 0, i32 0
  store i32 %239, i32* %244, align 4
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 9
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.cidrange*, %struct.cidrange** %13, align 8
  %254 = load i32, i32* %12, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %253, i64 %255
  %257 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %256, i32 0, i32 1
  store i32 %252, i32* %257, align 4
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 9
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %259, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.cidrange*, %struct.cidrange** %13, align 8
  %267 = load i32, i32* %12, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %266, i64 %268
  %270 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %269, i32 0, i32 2
  store i32 %265, i32* %270, align 4
  %271 = load i32, i32* %12, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %12, align 4
  br label %273

273:                                              ; preds = %231
  %274 = load i32, i32* %9, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %9, align 4
  br label %225

276:                                              ; preds = %225
  store i32 0, i32* %9, align 4
  br label %277

277:                                              ; preds = %325, %276
  %278 = load i32, i32* %9, align 4
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 8
  %282 = icmp slt i32 %278, %281
  br i1 %282, label %283, label %328

283:                                              ; preds = %277
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 8
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %285, align 8
  %287 = load i32, i32* %9, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.cidrange*, %struct.cidrange** %13, align 8
  %293 = load i32, i32* %12, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %292, i64 %294
  %296 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %295, i32 0, i32 0
  store i32 %291, i32* %296, align 4
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 8
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %298, align 8
  %300 = load i32, i32* %9, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.cidrange*, %struct.cidrange** %13, align 8
  %306 = load i32, i32* %12, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %305, i64 %307
  %309 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %308, i32 0, i32 1
  store i32 %304, i32* %309, align 4
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 8
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %311, align 8
  %313 = load i32, i32* %9, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.cidrange*, %struct.cidrange** %13, align 8
  %319 = load i32, i32* %12, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %318, i64 %320
  %322 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %321, i32 0, i32 2
  store i32 %317, i32* %322, align 4
  %323 = load i32, i32* %12, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %12, align 4
  br label %325

325:                                              ; preds = %283
  %326 = load i32, i32* %9, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %9, align 4
  br label %277

328:                                              ; preds = %277
  %329 = load %struct.cidrange*, %struct.cidrange** %13, align 8
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* @cmpcidrange, align 4
  %332 = call i32 @qsort(%struct.cidrange* %329, i32 %330, i32 12, i32 %331)
  %333 = load i32, i32* %11, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %379

335:                                              ; preds = %328
  %336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %337

337:                                              ; preds = %374, %335
  %338 = load i32, i32* %12, align 4
  %339 = load i32, i32* %11, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %377

341:                                              ; preds = %337
  %342 = load %struct.cidrange*, %struct.cidrange** %13, align 8
  %343 = load i32, i32* %12, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %342, i64 %344
  %346 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  store i32 %347, i32* %9, align 4
  %348 = load %struct.cidrange*, %struct.cidrange** %13, align 8
  %349 = load i32, i32* %12, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %348, i64 %350
  %352 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %10, align 4
  br label %354

354:                                              ; preds = %368, %341
  %355 = load i32, i32* %9, align 4
  %356 = load %struct.cidrange*, %struct.cidrange** %13, align 8
  %357 = load i32, i32* %12, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %356, i64 %358
  %360 = getelementptr inbounds %struct.cidrange, %struct.cidrange* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = icmp sle i32 %355, %361
  br i1 %362, label %363, label %373

363:                                              ; preds = %354
  %364 = load i32, i32* %9, align 4
  %365 = call i32 @pc(i32 %364)
  %366 = load i32, i32* %10, align 4
  %367 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %366)
  br label %368

368:                                              ; preds = %363
  %369 = load i32, i32* %9, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %9, align 4
  %371 = load i32, i32* %10, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %10, align 4
  br label %354

373:                                              ; preds = %354
  br label %374

374:                                              ; preds = %373
  %375 = load i32, i32* %12, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %12, align 4
  br label %337

377:                                              ; preds = %337
  %378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  br label %379

379:                                              ; preds = %377, %328
  %380 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %381 = load i32*, i32** %6, align 8
  %382 = call i32 @fz_drop_context(i32* %381)
  store i32 0, i32* %3, align 4
  br label %383

383:                                              ; preds = %379, %24, %16
  %384 = load i32, i32* %3, align 4
  ret i32 %384
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @fz_new_context(i32*, i32*, i32) #1

declare dso_local i32* @fz_open_file(i32*, i8*) #1

declare dso_local %struct.TYPE_11__* @pdf_load_cmap(i32*, i32*) #1

declare dso_local i32 @fz_drop_stream(i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.cidrange* @fz_malloc(i32*, i32) #1

declare dso_local i32 @qsort(%struct.cidrange*, i32, i32, i32) #1

declare dso_local i32 @pc(i32) #1

declare dso_local i32 @fz_drop_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
