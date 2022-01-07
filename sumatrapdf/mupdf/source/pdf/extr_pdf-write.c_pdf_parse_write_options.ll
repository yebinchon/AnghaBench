; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_pdf_parse_write_options.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_pdf_parse_write_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"decompress\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"compress-fonts\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"compress-images\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"pretty\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"linearize\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"clean\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"sanitize\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"incremental\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"decrypt\00", align 1
@PDF_ENCRYPT_NONE = common dso_local global i8* null, align 8
@PDF_ENCRYPT_KEEP = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@PDF_ENCRYPT_UNKNOWN = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"rc4-40\00", align 1
@PDF_ENCRYPT_RC4_40 = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"rc4-128\00", align 1
@PDF_ENCRYPT_RC4_128 = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"aes-128\00", align 1
@PDF_ENCRYPT_AES_128 = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"aes-256\00", align 1
@PDF_ENCRYPT_AES_256 = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"owner-password\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"user-password\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"permissions\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"compact\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"deduplicate\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"appearance\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"all\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @pdf_parse_write_options(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = call i32 @memset(%struct.TYPE_5__* %8, i32 0, i32 112)
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @fz_has_option(i32* %10, i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @fz_option_eq(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 15
  store i8* %16, i8** %18, align 8
  br label %19

19:                                               ; preds = %14, %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @fz_has_option(i32* %20, i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @fz_option_eq(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 14
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @fz_has_option(i32* %30, i8* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = call i8* @fz_option_eq(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 13
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32*, i32** %4, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @fz_has_option(i32* %40, i8* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* @fz_option_eq(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 12
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32*, i32** %4, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @fz_has_option(i32* %50, i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %7)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @fz_option_eq(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 11
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32*, i32** %4, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @fz_has_option(i32* %60, i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %7)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = call i8* @fz_option_eq(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 10
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32*, i32** %4, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @fz_has_option(i32* %70, i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %7)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = call i8* @fz_option_eq(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 9
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %74, %69
  %80 = load i32*, i32** %4, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @fz_has_option(i32* %80, i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %7)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i8*, i8** %7, align 8
  %86 = call i8* @fz_option_eq(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 8
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32*, i32** %4, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i64 @fz_has_option(i32* %90, i8* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %7)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i8*, i8** %7, align 8
  %96 = call i8* @fz_option_eq(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 7
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32*, i32** %4, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @fz_has_option(i32* %100, i8* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %7)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i8*, i8** %7, align 8
  %106 = call i8* @fz_option_eq(i8* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 6
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %104, %99
  %110 = load i32*, i32** %4, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = call i64 @fz_has_option(i32* %110, i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %7)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load i8*, i8** %7, align 8
  %116 = call i8* @fz_option_eq(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i8*, i8** @PDF_ENCRYPT_NONE, align 8
  br label %122

120:                                              ; preds = %114
  %121 = load i8*, i8** @PDF_ENCRYPT_KEEP, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i8* [ %119, %118 ], [ %121, %120 ]
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %122, %109
  %127 = load i32*, i32** %4, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = call i64 @fz_has_option(i32* %127, i8* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %7)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %191

131:                                              ; preds = %126
  %132 = load i8*, i8** @PDF_ENCRYPT_UNKNOWN, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 5
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = call i8* @fz_option_eq(i8* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %137 = icmp ne i8* %136, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %131
  %139 = load i8*, i8** %7, align 8
  %140 = call i8* @fz_option_eq(i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %138, %131
  %143 = load i8*, i8** @PDF_ENCRYPT_NONE, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %142, %138
  %147 = load i8*, i8** %7, align 8
  %148 = call i8* @fz_option_eq(i8* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i8*, i8** @PDF_ENCRYPT_KEEP, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 5
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %150, %146
  %155 = load i8*, i8** %7, align 8
  %156 = call i8* @fz_option_eq(i8* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %157 = icmp ne i8* %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i8*, i8** %7, align 8
  %160 = call i8* @fz_option_eq(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %158, %154
  %163 = load i8*, i8** @PDF_ENCRYPT_RC4_40, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 5
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %162, %158
  %167 = load i8*, i8** %7, align 8
  %168 = call i8* @fz_option_eq(i8* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load i8*, i8** @PDF_ENCRYPT_RC4_128, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 5
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %170, %166
  %175 = load i8*, i8** %7, align 8
  %176 = call i8* @fz_option_eq(i8* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load i8*, i8** @PDF_ENCRYPT_AES_128, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 5
  store i8* %179, i8** %181, align 8
  br label %182

182:                                              ; preds = %178, %174
  %183 = load i8*, i8** %7, align 8
  %184 = call i8* @fz_option_eq(i8* %183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load i8*, i8** @PDF_ENCRYPT_AES_256, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 5
  store i8* %187, i8** %189, align 8
  br label %190

190:                                              ; preds = %186, %182
  br label %191

191:                                              ; preds = %190, %126
  %192 = load i32*, i32** %4, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = call i64 @fz_has_option(i32* %192, i8* %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8** %7)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %191
  %197 = load i32*, i32** %4, align 8
  %198 = load i8*, i8** %7, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @nelem(i32 %204)
  %206 = call i32 @fz_copy_option(i32* %197, i8* %198, i32 %201, i32 %205)
  br label %207

207:                                              ; preds = %196, %191
  %208 = load i32*, i32** %4, align 8
  %209 = load i8*, i8** %6, align 8
  %210 = call i64 @fz_has_option(i32* %208, i8* %209, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8** %7)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %207
  %213 = load i32*, i32** %4, align 8
  %214 = load i8*, i8** %7, align 8
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @nelem(i32 %220)
  %222 = call i32 @fz_copy_option(i32* %213, i8* %214, i32 %217, i32 %221)
  br label %223

223:                                              ; preds = %212, %207
  %224 = load i32*, i32** %4, align 8
  %225 = load i8*, i8** %6, align 8
  %226 = call i64 @fz_has_option(i32* %224, i8* %225, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8** %7)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load i8*, i8** %7, align 8
  %230 = call i8* @fz_atoi(i8* %229)
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 2
  store i8* %230, i8** %232, align 8
  br label %236

233:                                              ; preds = %223
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  store i8* inttoptr (i64 -1 to i8*), i8** %235, align 8
  br label %236

236:                                              ; preds = %233, %228
  %237 = load i32*, i32** %4, align 8
  %238 = load i8*, i8** %6, align 8
  %239 = call i64 @fz_has_option(i32* %237, i8* %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8** %7)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %271

241:                                              ; preds = %236
  %242 = load i8*, i8** %7, align 8
  %243 = call i8* @fz_option_eq(i8* %242, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %241
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  store i32 1, i32* %247, align 8
  br label %270

248:                                              ; preds = %241
  %249 = load i8*, i8** %7, align 8
  %250 = call i8* @fz_option_eq(i8* %249, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  store i32 2, i32* %254, align 8
  br label %269

255:                                              ; preds = %248
  %256 = load i8*, i8** %7, align 8
  %257 = call i8* @fz_option_eq(i8* %256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  store i32 3, i32* %261, align 8
  br label %268

262:                                              ; preds = %255
  %263 = load i8*, i8** %7, align 8
  %264 = call i8* @fz_atoi(i8* %263)
  %265 = ptrtoint i8* %264 to i32
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  br label %268

268:                                              ; preds = %262, %259
  br label %269

269:                                              ; preds = %268, %252
  br label %270

270:                                              ; preds = %269, %245
  br label %271

271:                                              ; preds = %270, %236
  %272 = load i32*, i32** %4, align 8
  %273 = load i8*, i8** %6, align 8
  %274 = call i64 @fz_has_option(i32* %272, i8* %273, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8** %7)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %292

276:                                              ; preds = %271
  %277 = load i8*, i8** %7, align 8
  %278 = call i8* @fz_option_eq(i8* %277, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 1
  store i32 1, i32* %282, align 4
  br label %291

283:                                              ; preds = %276
  %284 = load i8*, i8** %7, align 8
  %285 = call i8* @fz_option_eq(i8* %284, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %290

287:                                              ; preds = %283
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 1
  store i32 2, i32* %289, align 4
  br label %290

290:                                              ; preds = %287, %283
  br label %291

291:                                              ; preds = %290, %280
  br label %292

292:                                              ; preds = %291, %271
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %293
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @fz_has_option(i32*, i8*, i8*, i8**) #1

declare dso_local i8* @fz_option_eq(i8*, i8*) #1

declare dso_local i32 @fz_copy_option(i32*, i8*, i32, i32) #1

declare dso_local i32 @nelem(i32) #1

declare dso_local i8* @fz_atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
