; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_asciimode.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_asciimode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ascii.tst\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\0D\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"fgets\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"CR CR LF not read as CR LF\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"foo\1A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"fgets foo\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"foo ^Z not read as foo by fgets\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"fgets after logical EOF\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"foo ^Z not read as foo by fread\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"fread after logical EOF\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"0\0D\0A1\0D\0A2\0D\0A3\0D\0A4\0D\0A5\0D\0A6\0D\0A7\0D\0A8\0D\0A9\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"fgetc failed, expected '0', got '%c'\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"fgetc failed, expected '\\n', got '%c'\0A\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [26 x i8] c"ftell fails in TEXT mode\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"fgetc after fseek failed in line %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"fgetc after fseek with pos Offset failed in line %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"fgetc failed, expected '9', got '%c'\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"fgetc after fseek with neg Offset failed in line %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"fgetc fails to read next char when positioned on \\r\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_asciimode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_asciimode() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @fclose(i32* %9)
  %11 = call i32* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %11, i32** %1, align 8
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %13 = load i32*, i32** %1, align 8
  %14 = call i32* @fgets(i8* %12, i32 64, i32* %13)
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %20 = icmp eq i64 0, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @rewind(i32* %23)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @fread(i8* %25, i32 1, i32 64, i32* %26)
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %33

29:                                               ; preds = %0
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %32 = icmp eq i64 0, %31
  br label %33

33:                                               ; preds = %29, %0
  %34 = phi i1 [ false, %0 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = call i32 @unlink(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %40 = call i32* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %40, i32** %1, align 8
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %41)
  %43 = load i32*, i32** %1, align 8
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = call i32 @fseek(i32* %43, i32 65536, i32 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @fclose(i32* %48)
  %50 = call i32* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %50, i32** %1, align 8
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %52 = load i32*, i32** %1, align 8
  %53 = call i32* @fgets(i8* %51, i32 64, i32* %52)
  %54 = icmp ne i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %59 = icmp eq i64 0, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %63 = load i32*, i32** %1, align 8
  %64 = call i32* @fgets(i8* %62, i32 64, i32* %63)
  %65 = icmp eq i32* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @rewind(i32* %68)
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @fread(i8* %70, i32 1, i32 64, i32* %71)
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %78

74:                                               ; preds = %33
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %77 = icmp eq i64 0, %76
  br label %78

78:                                               ; preds = %74, %33
  %79 = phi i1 [ false, %33 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @fread(i8* %82, i32 1, i32 64, i32* %83)
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @fclose(i32* %88)
  %90 = call i32* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %90, i32** %1, align 8
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32* %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @fclose(i32* %93)
  %95 = call i32* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store i32* %95, i32** %1, align 8
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @fgetc(i32* %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = icmp eq i32 %98, 48
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %3, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @fgetc(i32* %103)
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp eq i32 %105, 10
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %3, align 4
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %1, align 8
  %111 = load i32, i32* @SEEK_CUR, align 4
  %112 = call i32 @fseek(i32* %110, i32 0, i32 %111)
  store i32 1, i32* %4, align 4
  br label %113

113:                                              ; preds = %142, %78
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %114, 10
  br i1 %115, label %116, label %145

116:                                              ; preds = %113
  %117 = load i32*, i32** %1, align 8
  %118 = call i32 @ftell(i32* %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %4, align 4
  %120 = mul nsw i32 %119, 3
  %121 = icmp eq i32 %118, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %124 = load i32*, i32** %1, align 8
  %125 = load i32, i32* @SEEK_CUR, align 4
  %126 = call i32 @fseek(i32* %124, i32 0, i32 %125)
  %127 = load i32*, i32** %1, align 8
  %128 = call i32 @fgetc(i32* %127)
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 48, %129
  %131 = icmp eq i32 %128, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %4, align 4
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i32 %133)
  %135 = load i32*, i32** %1, align 8
  %136 = call i32 @fgetc(i32* %135)
  store i32 %136, i32* %3, align 4
  %137 = load i32, i32* %3, align 4
  %138 = icmp eq i32 %137, 10
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %3, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %116
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %4, align 4
  br label %113

145:                                              ; preds = %113
  %146 = load i32*, i32** %1, align 8
  %147 = call i32 @rewind(i32* %146)
  %148 = load i32*, i32** %1, align 8
  %149 = call i32 @fgetc(i32* %148)
  store i32 %149, i32* %3, align 4
  %150 = load i32, i32* %3, align 4
  %151 = icmp eq i32 %150, 48
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %3, align 4
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i32 %153)
  %155 = load i32*, i32** %1, align 8
  %156 = load i32, i32* @SEEK_CUR, align 4
  %157 = call i32 @fseek(i32* %155, i32 2, i32 %156)
  store i32 1, i32* %4, align 4
  br label %158

158:                                              ; preds = %173, %145
  %159 = load i32, i32* %4, align 4
  %160 = icmp slt i32 %159, 10
  br i1 %160, label %161, label %176

161:                                              ; preds = %158
  %162 = load i32*, i32** %1, align 8
  %163 = call i32 @fgetc(i32* %162)
  store i32 %163, i32* %3, align 4
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 48, %164
  %166 = icmp eq i32 %163, %165
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %4, align 4
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i32 %168)
  %170 = load i32*, i32** %1, align 8
  %171 = load i32, i32* @SEEK_CUR, align 4
  %172 = call i32 @fseek(i32* %170, i32 2, i32 %171)
  br label %173

173:                                              ; preds = %161
  %174 = load i32, i32* %4, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %4, align 4
  br label %158

176:                                              ; preds = %158
  %177 = load i32*, i32** %1, align 8
  %178 = load i32, i32* @SEEK_SET, align 4
  %179 = call i32 @fseek(i32* %177, i32 27, i32 %178)
  %180 = load i32*, i32** %1, align 8
  %181 = call i32 @fgetc(i32* %180)
  store i32 %181, i32* %3, align 4
  %182 = load i32, i32* %3, align 4
  %183 = icmp eq i32 %182, 57
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %3, align 4
  %186 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i32 %185)
  %187 = load i32*, i32** %1, align 8
  %188 = load i32, i32* @SEEK_CUR, align 4
  %189 = call i32 @fseek(i32* %187, i32 -4, i32 %188)
  store i32 8, i32* %4, align 4
  br label %190

190:                                              ; preds = %205, %176
  %191 = load i32, i32* %4, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %190
  %194 = load i32*, i32** %1, align 8
  %195 = call i32 @fgetc(i32* %194)
  store i32 %195, i32* %3, align 4
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 48, %196
  %198 = icmp eq i32 %195, %197
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %4, align 4
  %201 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i64 0, i64 0), i32 %200)
  %202 = load i32*, i32** %1, align 8
  %203 = load i32, i32* @SEEK_CUR, align 4
  %204 = call i32 @fseek(i32* %202, i32 -4, i32 %203)
  br label %205

205:                                              ; preds = %193
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %4, align 4
  br label %190

208:                                              ; preds = %190
  %209 = load i32*, i32** %1, align 8
  %210 = call i32 @fclose(i32* %209)
  %211 = call i32* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store i32* %211, i32** %1, align 8
  %212 = load i32*, i32** %1, align 8
  %213 = load i32, i32* @SEEK_SET, align 4
  %214 = call i32 @fseek(i32* %212, i32 3, i32 %213)
  %215 = load i32*, i32** %1, align 8
  %216 = call i32 @fgetc(i32* %215)
  store i32 %216, i32* %3, align 4
  %217 = icmp eq i32 %216, 49
  %218 = zext i1 %217 to i32
  %219 = call i32 (i32, i8*, ...) @ok(i32 %218, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.24, i64 0, i64 0))
  %220 = load i32*, i32** %1, align 8
  %221 = call i32 @fclose(i32* %220)
  %222 = call i32 @unlink(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @ftell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
