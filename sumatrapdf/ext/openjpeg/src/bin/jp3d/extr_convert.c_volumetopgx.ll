; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_convert.c_volumetopgx.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_convert.c_volumetopgx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i64, i64, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s%d-%d.pgx\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s%d.pgx\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.pgx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"[ERROR] Failed to open %s for writing \0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"[INFO] Writing in %s (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Bigendian\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Little-endian\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"PG %c%c %c%d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @volumetopgx(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_5__*, align 8
  %22 = alloca [256 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %20, align 8
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %393, %2
  %29 = load i32, i32* %17, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %396

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 7
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %21, align 8
  store i32 0, i32* %23, align 4
  %41 = load i8*, i8** %5, align 8
  store i8* %41, i8** %24, align 8
  br label %42

42:                                               ; preds = %46, %34
  %43 = load i8*, i8** %24, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8*, i8** %24, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %24, align 8
  br label %42

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %55, %49
  %51 = load i8*, i8** %24, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 46
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %24, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %57, i8** %24, align 8
  br label %50

58:                                               ; preds = %50
  %59 = load i8*, i8** %24, align 8
  store i8 0, i8* %59, align 1
  store i32 0, i32* %19, align 4
  br label %60

60:                                               ; preds = %389, %58
  %61 = load i32, i32* %19, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  %69 = icmp slt i32 %61, %68
  br i1 %69, label %70, label %392

70:                                               ; preds = %60
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %19, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* %17, align 4
  %81 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %77, i32 %79, i32 %80)
  br label %102

82:                                               ; preds = %70
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %85, %88
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %19, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %93, i32 %95)
  br label %101

97:                                               ; preds = %82
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %97, %91
  br label %102

102:                                              ; preds = %101, %75
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %104 = call i32* @fopen(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %104, i32** %20, align 8
  %105 = load i32*, i32** %20, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @stdout, align 4
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i32*
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %111)
  store i32 1, i32* %3, align 4
  br label %397

113:                                              ; preds = %102
  %114 = load i32, i32* @stdout, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i32*
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 7
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)
  %127 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %117, i8* %126)
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %130, %133
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 7
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @int_ceildiv(i32 %134, i32 %142)
  store i32 %143, i32* %6, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 7
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %7, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 7
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 7
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 7
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @int_ceildivpow2(i32 %159, i32 %169)
  store i32 %170, i32* %8, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %173, %176
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 7
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 9
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @int_ceildiv(i32 %177, i32 %185)
  store i32 %186, i32* %9, align 4
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 7
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = load i32, i32* %17, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %10, align 4
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 7
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = load i32, i32* %17, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 7
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = load i32, i32* %17, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 7
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @int_ceildivpow2(i32 %202, i32 %212)
  store i32 %213, i32* %11, align 4
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = sub nsw i32 %216, %219
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 7
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = load i32, i32* %17, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @int_ceildiv(i32 %220, i32 %228)
  store i32 %229, i32* %12, align 4
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 7
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = load i32, i32* %17, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  store i32 %237, i32* %13, align 4
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 7
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %239, align 8
  %241 = load i32, i32* %17, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 7
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %247, align 8
  %249 = load i32, i32* %17, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 7
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 2
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @int_ceildivpow2(i32 %245, i32 %255)
  store i32 %256, i32* %14, align 4
  %257 = load i32*, i32** %20, align 8
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 5
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 77, i32 76
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 5
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i32 76, i32 77
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 6
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  %274 = zext i1 %273 to i64
  %275 = select i1 %273, i32 45, i32 43
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* %10, align 4
  %281 = call i32 (i32*, i8*, ...) @fprintf(i32* %257, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %263, i32 %269, i32 %275, i32 %278, i32 %279, i32 %280)
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = icmp sle i32 %284, 8
  br i1 %285, label %286, label %287

286:                                              ; preds = %113
  store i32 1, i32* %23, align 4
  br label %295

287:                                              ; preds = %113
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = icmp sle i32 %290, 16
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  store i32 2, i32* %23, align 4
  br label %294

293:                                              ; preds = %287
  store i32 4, i32* %23, align 4
  br label %294

294:                                              ; preds = %293, %292
  br label %295

295:                                              ; preds = %294, %286
  %296 = load i32, i32* %19, align 4
  %297 = load i32, i32* %14, align 4
  %298 = sdiv i32 %296, %297
  %299 = load i32, i32* %12, align 4
  %300 = mul nsw i32 %298, %299
  %301 = load i32, i32* %19, align 4
  %302 = load i32, i32* %14, align 4
  %303 = srem i32 %301, %302
  %304 = add nsw i32 %300, %303
  store i32 %304, i32* %18, align 4
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* %11, align 4
  %307 = mul nsw i32 %305, %306
  %308 = load i32, i32* %18, align 4
  %309 = mul nsw i32 %307, %308
  store i32 %309, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %310

310:                                              ; preds = %383, %295
  %311 = load i32, i32* %15, align 4
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* %11, align 4
  %314 = mul nsw i32 %312, %313
  %315 = icmp slt i32 %311, %314
  br i1 %315, label %316, label %386

316:                                              ; preds = %310
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 7
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i64 0
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 4
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %15, align 4
  %324 = load i32, i32* %8, align 4
  %325 = sdiv i32 %323, %324
  %326 = load i32, i32* %6, align 4
  %327 = mul nsw i32 %325, %326
  %328 = load i32, i32* %15, align 4
  %329 = load i32, i32* %8, align 4
  %330 = srem i32 %328, %329
  %331 = add nsw i32 %327, %330
  %332 = load i32, i32* %18, align 4
  %333 = add nsw i32 %331, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %322, i64 %334
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %25, align 4
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 7
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i64 0
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 5
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %363

344:                                              ; preds = %316
  %345 = load i32, i32* %23, align 4
  %346 = sub nsw i32 %345, 1
  store i32 %346, i32* %16, align 4
  br label %347

347:                                              ; preds = %359, %344
  %348 = load i32, i32* %16, align 4
  %349 = icmp sge i32 %348, 0
  br i1 %349, label %350, label %362

350:                                              ; preds = %347
  %351 = load i32, i32* %25, align 4
  %352 = load i32, i32* %16, align 4
  %353 = mul nsw i32 %352, 8
  %354 = ashr i32 %351, %353
  %355 = and i32 %354, 255
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %26, align 1
  %357 = load i32*, i32** %20, align 8
  %358 = call i32 @fwrite(i8* %26, i32 1, i32 1, i32* %357)
  br label %359

359:                                              ; preds = %350
  %360 = load i32, i32* %16, align 4
  %361 = add nsw i32 %360, -1
  store i32 %361, i32* %16, align 4
  br label %347

362:                                              ; preds = %347
  br label %382

363:                                              ; preds = %316
  store i32 0, i32* %16, align 4
  br label %364

364:                                              ; preds = %378, %363
  %365 = load i32, i32* %16, align 4
  %366 = load i32, i32* %23, align 4
  %367 = sub nsw i32 %366, 1
  %368 = icmp sle i32 %365, %367
  br i1 %368, label %369, label %381

369:                                              ; preds = %364
  %370 = load i32, i32* %25, align 4
  %371 = load i32, i32* %16, align 4
  %372 = mul nsw i32 %371, 8
  %373 = ashr i32 %370, %372
  %374 = and i32 %373, 255
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %27, align 1
  %376 = load i32*, i32** %20, align 8
  %377 = call i32 @fwrite(i8* %27, i32 1, i32 1, i32* %376)
  br label %378

378:                                              ; preds = %369
  %379 = load i32, i32* %16, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %16, align 4
  br label %364

381:                                              ; preds = %364
  br label %382

382:                                              ; preds = %381, %362
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %15, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %15, align 4
  br label %310

386:                                              ; preds = %310
  %387 = load i32*, i32** %20, align 8
  %388 = call i32 @fclose(i32* %387)
  br label %389

389:                                              ; preds = %386
  %390 = load i32, i32* %19, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %19, align 4
  br label %60

392:                                              ; preds = %60
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %17, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %17, align 4
  br label %28

396:                                              ; preds = %28
  store i32 0, i32* %3, align 4
  br label %397

397:                                              ; preds = %396, %107
  %398 = load i32, i32* %3, align 4
  ret i32 %398
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @int_ceildiv(i32, i32) #1

declare dso_local i32 @int_ceildivpow2(i32, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
