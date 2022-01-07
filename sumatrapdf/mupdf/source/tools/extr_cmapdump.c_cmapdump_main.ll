; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_cmapdump.c_cmapdump_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_cmapdump.c_cmapdump_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32, i32, i32, i32*, i8*, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"usage: cmapdump > out.c [lots of cmap files]\0A\00", align 1
@FZ_STORE_UNLIMITED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot initialise context\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"/* This is an automatically generated file. Do not edit. */\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\0A/* %s */\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"static const pdf_range cmap_%s_ranges[] = {\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\0A{%u,%u,%u},\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\0A};\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"static const pdf_xrange cmap_%s_xranges[] = {\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"static const pdf_mrange cmap_%s_mranges[] = {\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"\0A{%u,%u},\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"static const int cmap_%s_table[] = {\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%u,\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"static pdf_cmap cmap_%s = {\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"\09{ -1, pdf_drop_cmap_imp },\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"\09/* cmapname */ \22%s\22,\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"\09/* usecmap */ \22%s\22, NULL,\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"\09/* wmode */ %u,\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"\09/* codespaces */ %u, {\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"\09\09{ 0, 0, 0 },\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"\09\09{ %u, 0x%0*x, 0x%0*x },\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"\09},\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"\09%u, %u, (pdf_range*)cmap_%s_ranges,\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"\090, 0, NULL, /* ranges */\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"\09%u, %u, (pdf_xrange*)cmap_%s_xranges,\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"\090, 0, NULL, /* xranges */\0A\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"\09%u, %u, (pdf_mrange*)cmap_%s_mranges,\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"\090, 0, NULL, /* mranges */\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"\09%u, %u, (int*)cmap_%s_table,\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"\090, 0, NULL, /* table */\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"\090, 0, 0, NULL /* splay tree */\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmapdump_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %378

20:                                               ; preds = %2
  %21 = load i32, i32* @FZ_STORE_UNLIMITED, align 4
  %22 = call i32* @fz_new_context(i32* null, i32* null, i32 %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %378

28:                                               ; preds = %20
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %372, %28
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %375

34:                                               ; preds = %30
  %35 = load i32*, i32** %11, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32* @fz_open_file(i32* %35, i8* %40)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call %struct.TYPE_12__* @pdf_load_cmap(i32* %42, i32* %43)
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %6, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @fz_drop_stream(i32* %45, i32* %46)
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcpy(i8* %48, i8* %51)
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %54 = call i32 @clean(i8* %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %103

63:                                               ; preds = %34
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %98, %63
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %66
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 12
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 12
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 12
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %80, i32 %88, i32 %96)
  br label %98

98:                                               ; preds = %72
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %66

101:                                              ; preds = %66
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %34
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %148

108:                                              ; preds = %103
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* %109)
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %143, %108
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %146

117:                                              ; preds = %111
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 11
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 11
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 11
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %125, i32 %133, i32 %141)
  br label %143

143:                                              ; preds = %117
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %111

146:                                              ; preds = %111
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %103
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %185

153:                                              ; preds = %148
  %154 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i8* %154)
  store i32 0, i32* %10, align 4
  br label %156

156:                                              ; preds = %180, %153
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %183

162:                                              ; preds = %156
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 10
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 10
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %170, i32 %178)
  br label %180

180:                                              ; preds = %162
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %156

183:                                              ; preds = %156
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %148
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %234

190:                                              ; preds = %185
  store i32 0, i32* %12, align 4
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 5
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %13, align 4
  %196 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %196)
  store i32 0, i32* %10, align 4
  br label %198

198:                                              ; preds = %229, %190
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %232

204:                                              ; preds = %198
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %13, align 4
  br label %220

217:                                              ; preds = %204
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %217, %208
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 5
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %220
  %230 = load i32, i32* %10, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %10, align 4
  br label %198

232:                                              ; preds = %198
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %234

234:                                              ; preds = %232, %185
  %235 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8* %235)
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %240)
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 6
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8* %244)
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 8
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %248)
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 8
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %252)
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %234
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  br label %260

260:                                              ; preds = %258, %234
  store i32 0, i32* %10, align 4
  br label %261

261:                                              ; preds = %298, %260
  %262 = load i32, i32* %10, align 4
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 8
  %265 = load i32, i32* %264, align 4
  %266 = icmp slt i32 %262, %265
  br i1 %266, label %267, label %301

267:                                              ; preds = %261
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 9
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %269, align 8
  %271 = load i32, i32* %10, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %14, align 4
  %276 = load i32, i32* %14, align 4
  %277 = load i32, i32* %14, align 4
  %278 = mul nsw i32 %277, 2
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 9
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %280, align 8
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %14, align 4
  %288 = mul nsw i32 %287, 2
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 9
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %290, align 8
  %292 = load i32, i32* %10, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 %276, i32 %278, i32 %286, i32 %288, i32 %296)
  br label %298

298:                                              ; preds = %267
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %10, align 4
  br label %261

301:                                              ; preds = %261
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %316

307:                                              ; preds = %301
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i32 %310, i32 %313, i8* %314)
  br label %318

316:                                              ; preds = %301
  %317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  br label %318

318:                                              ; preds = %316, %307
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %332

323:                                              ; preds = %318
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i32 %326, i32 %329, i8* %330)
  br label %334

332:                                              ; preds = %318
  %333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0))
  br label %334

334:                                              ; preds = %332, %323
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %348

339:                                              ; preds = %334
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 8
  %346 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i32 %342, i32 %345, i8* %346)
  br label %350

348:                                              ; preds = %334
  %349 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0))
  br label %350

350:                                              ; preds = %348, %339
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 5
  %353 = load i32*, i32** %352, align 8
  %354 = icmp ne i32* %353, null
  br i1 %354, label %355, label %364

355:                                              ; preds = %350
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 4
  %362 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 %358, i32 %361, i8* %362)
  br label %366

364:                                              ; preds = %350
  %365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0))
  br label %366

366:                                              ; preds = %364, %355
  %367 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0))
  %368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  %369 = load i32*, i32** %11, align 8
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %371 = call i32 @pdf_drop_cmap(i32* %369, %struct.TYPE_12__* %370)
  br label %372

372:                                              ; preds = %366
  %373 = load i32, i32* %9, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %9, align 4
  br label %30

375:                                              ; preds = %30
  %376 = load i32*, i32** %11, align 8
  %377 = call i32 @fz_drop_context(i32* %376)
  store i32 0, i32* %3, align 4
  br label %378

378:                                              ; preds = %375, %25, %17
  %379 = load i32, i32* %3, align 4
  ret i32 %379
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @fz_new_context(i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fz_open_file(i32*, i8*) #1

declare dso_local %struct.TYPE_12__* @pdf_load_cmap(i32*, i32*) #1

declare dso_local i32 @fz_drop_stream(i32*, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @clean(i8*) #1

declare dso_local i32 @pdf_drop_cmap(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @fz_drop_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
