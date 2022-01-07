; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_convert.c_imgtovolume.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_convert.c_imgtovolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@CLRSPC_GRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"[ERROR] Failed to open %s for reading !!\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%*s%*[ \09]%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%*s %*s%*[ \09]%s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Min\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%*s %*s%*[ \09]%d%*[ \09]%d\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Bpp\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%*s%*[ \09]%d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"%*s %*s%*[ \09]%d\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Dim\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"%*s%*[ \09]%d%*[ \09]%d%*[ \09]%d\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Res\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"%*s%*[ \09]%f%*[ \09]%f%*[ \09]%f\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"[ERROR] Unable to read IMG file correctly. Found some null values.\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [32 x i8] c"[ERROR] Unable to create volume\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @imgtovolume(i8* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
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
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca [100 x i8], align 16
  %22 = alloca [100 x i8], align 16
  %23 = alloca [100 x i8], align 16
  %24 = alloca i8*, align 8
  %25 = alloca [100 x i8], align 16
  %26 = alloca [100 x i8], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_12__, align 8
  %32 = alloca %struct.TYPE_10__*, align 8
  %33 = alloca %struct.TYPE_11__*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %6, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32* null, i32** %28, align 8
  store i32* null, i32** %29, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %32, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %33, align 8
  store i32 0, i32* %27, align 4
  %45 = load i32, i32* @CLRSPC_GRAY, align 4
  store i32 %45, i32* %30, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = call i32* @fopen(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %47, i32** %29, align 8
  %48 = load i32*, i32** %29, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %2
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %372

54:                                               ; preds = %2
  %55 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strcpy(i8* %55, i8* %56)
  %58 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %59 = call i8* @strrchr(i8* %58, i8 signext 47)
  store i8* %59, i8** %24, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load i8*, i8** %24, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %24, align 8
  %64 = load i8*, i8** %24, align 8
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %23, i64 0, i64 0
  %66 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %67 = call i32 @strcpy(i8* %65, i8* %66)
  br label %71

68:                                               ; preds = %54
  %69 = getelementptr inbounds [100 x i8], [100 x i8]* %23, i64 0, i64 0
  %70 = call i32 @strcpy(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %61
  %72 = load i32*, i32** %29, align 8
  %73 = load i32, i32* @SEEK_SET, align 4
  %74 = call i32 @fseek(i32* %72, i32 0, i32 %73)
  br label %75

75:                                               ; preds = %151, %71
  %76 = load i32*, i32** %29, align 8
  %77 = call i32 @feof(i32* %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br i1 %79, label %80, label %152

80:                                               ; preds = %75
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %82 = load i32*, i32** %29, align 8
  %83 = call i32 @fgets(i8* %81, i32 100, i32* %82)
  %84 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %85 = call i64 @strncmp(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %89 = getelementptr inbounds [100 x i8], [100 x i8]* %26, i64 0, i64 0
  %90 = call i32 (i8*, i8*, ...) @sscanf(i8* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  br label %151

91:                                               ; preds = %80
  %92 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %93 = call i64 @strncmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %97 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %98 = call i32 (i8*, i8*, ...) @sscanf(i8* %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  %99 = getelementptr inbounds [100 x i8], [100 x i8]* %23, i64 0, i64 0
  %100 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %101 = call i32 @strcat(i8* %99, i8* %100)
  %102 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %103 = getelementptr inbounds [100 x i8], [100 x i8]* %23, i64 0, i64 0
  %104 = call i32 @strcpy(i8* %102, i8* %103)
  br label %150

105:                                              ; preds = %91
  %106 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %107 = call i64 @strncmp(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %111 = call i32 (i8*, i8*, ...) @sscanf(i8* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32* %17, i32* %16)
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = sub nsw i32 %112, %113
  %115 = add nsw i32 %114, 1
  %116 = call i32 @int_floorlog2(i32 %115)
  store i32 %116, i32* %15, align 4
  br label %149

117:                                              ; preds = %105
  %118 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %119 = call i64 @strncmp(i8* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %123 = call i32 (i8*, i8*, ...) @sscanf(i8* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32* %15)
  br label %148

124:                                              ; preds = %117
  %125 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %126 = call i64 @strncmp(i8* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 5)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %130 = call i32 (i8*, i8*, ...) @sscanf(i8* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32* %30)
  br label %147

131:                                              ; preds = %124
  %132 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %133 = call i64 @strncmp(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 3)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %137 = call i32 (i8*, i8*, ...) @sscanf(i8* %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32* %11, i32* %12, i32* %13)
  br label %146

138:                                              ; preds = %131
  %139 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %140 = call i64 @strncmp(i8* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 3)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = getelementptr inbounds [100 x i8], [100 x i8]* %25, i64 0, i64 0
  %144 = call i32 (i8*, i8*, ...) @sscanf(i8* %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), float* %18, float* %19, float* %20)
  br label %145

145:                                              ; preds = %142, %138
  br label %146

146:                                              ; preds = %145, %135
  br label %147

147:                                              ; preds = %146, %128
  br label %148

148:                                              ; preds = %147, %121
  br label %149

149:                                              ; preds = %148, %109
  br label %150

150:                                              ; preds = %149, %95
  br label %151

151:                                              ; preds = %150, %87
  br label %75

152:                                              ; preds = %75
  %153 = load i32*, i32** %29, align 8
  %154 = call i32 @fclose(i32* %153)
  %155 = load i32, i32* %15, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163, %160, %157, %152
  %167 = load i32, i32* @stderr, align 4
  %168 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.17, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %372

169:                                              ; preds = %163
  %170 = call i32 @memset(%struct.TYPE_12__* %31, i32 0, i32 48)
  %171 = load i32, i32* %15, align 4
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store i32 %171, i32* %172, align 8
  %173 = load i32, i32* %15, align 4
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  store i32 %173, i32* %174, align 4
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 10
  store i64 0, i64* %175, align 8
  %176 = load i32, i32* %27, align 4
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  store i32 %176, i32* %177, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 9
  store i32 %180, i32* %181, align 4
  %182 = load i32, i32* %6, align 4
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  store i32 %182, i32* %183, align 4
  %184 = load i32, i32* %7, align 4
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 4
  store i32 %184, i32* %185, align 8
  %186 = load i32, i32* %8, align 4
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 5
  store i32 %186, i32* %187, align 4
  %188 = load i32, i32* %11, align 4
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 6
  store i32 %188, i32* %189, align 8
  %190 = load i32, i32* %12, align 4
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 7
  store i32 %190, i32* %191, align 4
  %192 = load i32, i32* %13, align 4
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 8
  store i32 %192, i32* %193, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %30, align 4
  %196 = call %struct.TYPE_10__* @opj_volume_create(i32 %194, %struct.TYPE_12__* %31, i32 %195)
  store %struct.TYPE_10__* %196, %struct.TYPE_10__** %32, align 8
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %198 = icmp ne %struct.TYPE_10__* %197, null
  br i1 %198, label %202, label %199

199:                                              ; preds = %169
  %200 = load i32, i32* @stdout, align 4
  %201 = call i32 (i32, i8*, ...) @fprintf(i32 %200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %372

202:                                              ; preds = %169
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 5
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 7
  store i64 %205, i64* %207, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 6
  store i64 %210, i64* %212, align 8
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 5
  store i64 %215, i64* %217, align 8
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 5
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* %11, align 4
  %222 = sub nsw i32 %221, 1
  %223 = load i32, i32* %6, align 4
  %224 = mul nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %220, %225
  %227 = add nsw i64 %226, 1
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 4
  store i64 %227, i64* %229, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sub nsw i32 %233, 1
  %235 = load i32, i32* %7, align 4
  %236 = mul nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %232, %237
  %239 = add nsw i64 %238, 1
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 3
  store i64 %239, i64* %241, align 8
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sub nsw i32 %245, 1
  %247 = load i32, i32* %8, align 4
  %248 = mul nsw i32 %246, %247
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %244, %249
  %251 = add nsw i64 %250, 1
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 2
  store i64 %251, i64* %253, align 8
  store i32 0, i32* %16, align 4
  %254 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %255 = call i32* @fopen(i8* %254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  store i32* %255, i32** %28, align 8
  %256 = load i32*, i32** %28, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %264, label %258

258:                                              ; preds = %202
  %259 = load i32, i32* @stderr, align 4
  %260 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %261 = call i32 (i32, i8*, ...) @fprintf(i32 %259, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %260)
  %262 = load i32*, i32** %28, align 8
  %263 = call i32 @fclose(i32* %262)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %372

264:                                              ; preds = %202
  store i32 0, i32* %10, align 4
  br label %265

265:                                              ; preds = %365, %264
  %266 = load i32, i32* %10, align 4
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp slt i32 %266, %269
  br i1 %270, label %271, label %368

271:                                              ; preds = %265
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %12, align 4
  %274 = mul nsw i32 %272, %273
  %275 = load i32, i32* %13, align 4
  %276 = mul nsw i32 %274, %275
  store i32 %276, i32* %34, align 4
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %278, align 8
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i64 %281
  store %struct.TYPE_11__* %282, %struct.TYPE_11__** %33, align 8
  store i32 0, i32* %9, align 4
  br label %283

283:                                              ; preds = %356, %271
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* %34, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %359

287:                                              ; preds = %283
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp sle i32 %290, 8
  br i1 %291, label %292, label %306

292:                                              ; preds = %287
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %292
  %298 = load i32*, i32** %28, align 8
  %299 = call i32 @readuchar(i32* %298)
  store i32 %299, i32* %35, align 4
  br label %305

300:                                              ; preds = %292
  %301 = load i32*, i32** %28, align 8
  %302 = call i32 @readuchar(i32* %301)
  %303 = trunc i32 %302 to i8
  %304 = sext i8 %303 to i32
  store i32 %304, i32* %35, align 4
  br label %305

305:                                              ; preds = %300, %297
  br label %342

306:                                              ; preds = %287
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp sle i32 %309, 16
  br i1 %310, label %311, label %327

311:                                              ; preds = %306
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %311
  %317 = load i32*, i32** %28, align 8
  %318 = load i32, i32* %27, align 4
  %319 = call i32 @readushort(i32* %317, i32 %318)
  store i32 %319, i32* %35, align 4
  br label %326

320:                                              ; preds = %311
  %321 = load i32*, i32** %28, align 8
  %322 = load i32, i32* %27, align 4
  %323 = call i32 @readushort(i32* %321, i32 %322)
  %324 = trunc i32 %323 to i16
  %325 = sext i16 %324 to i32
  store i32 %325, i32* %35, align 4
  br label %326

326:                                              ; preds = %320, %316
  br label %341

327:                                              ; preds = %306
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %336, label %332

332:                                              ; preds = %327
  %333 = load i32*, i32** %28, align 8
  %334 = load i32, i32* %27, align 4
  %335 = call i32 @readuint(i32* %333, i32 %334)
  store i32 %335, i32* %35, align 4
  br label %340

336:                                              ; preds = %327
  %337 = load i32*, i32** %28, align 8
  %338 = load i32, i32* %27, align 4
  %339 = call i32 @readuint(i32* %337, i32 %338)
  store i32 %339, i32* %35, align 4
  br label %340

340:                                              ; preds = %336, %332
  br label %341

341:                                              ; preds = %340, %326
  br label %342

342:                                              ; preds = %341, %305
  %343 = load i32, i32* %35, align 4
  %344 = load i32, i32* %16, align 4
  %345 = icmp sgt i32 %343, %344
  br i1 %345, label %346, label %348

346:                                              ; preds = %342
  %347 = load i32, i32* %35, align 4
  store i32 %347, i32* %16, align 4
  br label %348

348:                                              ; preds = %346, %342
  %349 = load i32, i32* %35, align 4
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %9, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  store i32 %349, i32* %355, align 4
  br label %356

356:                                              ; preds = %348
  %357 = load i32, i32* %9, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %9, align 4
  br label %283

359:                                              ; preds = %283
  %360 = load i32, i32* %16, align 4
  %361 = call i32 @int_floorlog2(i32 %360)
  %362 = add nsw i32 %361, 1
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 2
  store i32 %362, i32* %364, align 8
  br label %365

365:                                              ; preds = %359
  %366 = load i32, i32* %10, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %10, align 4
  br label %265

368:                                              ; preds = %265
  %369 = load i32*, i32** %28, align 8
  %370 = call i32 @fclose(i32* %369)
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  store %struct.TYPE_10__* %371, %struct.TYPE_10__** %3, align 8
  br label %372

372:                                              ; preds = %368, %258, %199, %166, %50
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %373
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @int_floorlog2(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @opj_volume_create(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @readuchar(i32*) #1

declare dso_local i32 @readushort(i32*, i32) #1

declare dso_local i32 @readuint(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
