; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_WriteBmLine.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_bookmark.c_WriteBmLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@kPasswordMagic = common dso_local global i32 0, align 4
@kPasswordMagicLen = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c",%c\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c",%u\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c",%lu\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @WriteBmLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteBmLine(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca [160 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %229

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 17
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @BmEscapeTok(i8* %19, i32 256, i32 %22)
  %24 = call i64 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %229

27:                                               ; preds = %17
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 16
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @BmEscapeTok(i8* %29, i32 256, i32 %32)
  %34 = call i64 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %229

37:                                               ; preds = %27
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = getelementptr inbounds [160 x i8], [160 x i8]* %9, i64 0, i64 0
  %50 = load i32, i32* @kPasswordMagic, align 4
  %51 = load i32, i32* @kPasswordMagicLen, align 4
  %52 = call i32 @memcpy(i8* %49, i32 %50, i32 %51)
  %53 = getelementptr inbounds [160 x i8], [160 x i8]* %9, i64 0, i64 0
  %54 = load i32, i32* @kPasswordMagicLen, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = call i32 @ToBase64(i8* %56, i8* %59, i32 %63, i32 1)
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds [160 x i8], [160 x i8]* %9, i64 0, i64 0
  %67 = call i64 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %229

70:                                               ; preds = %48
  br label %77

71:                                               ; preds = %45, %37
  %72 = load i32*, i32** %6, align 8
  %73 = call i64 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %229

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %70
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 15
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @BmEscapeTok(i8* %79, i32 256, i32 %82)
  %84 = call i64 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i32 -1, i32* %4, align 4
  br label %229

87:                                               ; preds = %77
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 14
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @BmEscapeTok(i8* %89, i32 256, i32 %92)
  %94 = call i64 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 -1, i32* %4, align 4
  br label %229

97:                                               ; preds = %87
  %98 = load i32*, i32** %6, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i64 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 -1, i32* %4, align 4
  br label %229

105:                                              ; preds = %97
  %106 = load i32*, i32** %6, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 13
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i64 (i32*, i8*, ...) @fprintf(i32* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 -1, i32* %4, align 4
  br label %229

114:                                              ; preds = %105
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 12
  %118 = load i64, i64* %117, align 8
  %119 = call i64 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i32 -1, i32* %4, align 4
  br label %229

122:                                              ; preds = %114
  %123 = load i32*, i32** %6, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i64 (i32*, i8*, ...) @fprintf(i32* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i32 -1, i32* %4, align 4
  br label %229

130:                                              ; preds = %122
  %131 = load i32*, i32** %6, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i64 (i32*, i8*, ...) @fprintf(i32* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 -1, i32* %4, align 4
  br label %229

138:                                              ; preds = %130
  %139 = load i32*, i32** %6, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = call i64 (i32*, i8*, ...) @fprintf(i32* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %142)
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  store i32 -1, i32* %4, align 4
  br label %229

146:                                              ; preds = %138
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = call i64 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  store i32 -1, i32* %4, align 4
  br label %229

154:                                              ; preds = %146
  %155 = load i32*, i32** %6, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 7
  %158 = load i8*, i8** %157, align 8
  %159 = call i64 (i32*, i8*, ...) @fprintf(i32* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %158)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  store i32 -1, i32* %4, align 4
  br label %229

162:                                              ; preds = %154
  %163 = load i32*, i32** %6, align 8
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 11
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @BmEscapeTok(i8* %164, i32 256, i32 %167)
  %169 = call i64 (i32*, i8*, ...) @fprintf(i32* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %168)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  store i32 -1, i32* %4, align 4
  br label %229

172:                                              ; preds = %162
  %173 = load i32*, i32** %6, align 8
  %174 = call i64 (i32*, i8*, ...) @fprintf(i32* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 -1, i32* %4, align 4
  br label %229

177:                                              ; preds = %172
  %178 = load i32*, i32** %6, align 8
  %179 = call i64 (i32*, i8*, ...) @fprintf(i32* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  store i32 -1, i32* %4, align 4
  br label %229

182:                                              ; preds = %177
  %183 = load i32*, i32** %6, align 8
  %184 = call i64 (i32*, i8*, ...) @fprintf(i32* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  store i32 -1, i32* %4, align 4
  br label %229

187:                                              ; preds = %182
  %188 = load i32*, i32** %6, align 8
  %189 = call i64 (i32*, i8*, ...) @fprintf(i32* %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store i32 -1, i32* %4, align 4
  br label %229

192:                                              ; preds = %187
  %193 = load i32*, i32** %6, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 8
  %197 = call i64 (i32*, i8*, ...) @fprintf(i32* %193, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %196)
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  store i32 -1, i32* %4, align 4
  br label %229

200:                                              ; preds = %192
  %201 = load i32*, i32** %6, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 4
  %205 = call i64 (i32*, i8*, ...) @fprintf(i32* %201, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %204)
  %206 = icmp slt i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  store i32 -1, i32* %4, align 4
  br label %229

208:                                              ; preds = %200
  %209 = load i32*, i32** %6, align 8
  %210 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 10
  %213 = load i32, i32* %212, align 8
  %214 = call i8* @BmEscapeTok(i8* %210, i32 256, i32 %213)
  %215 = call i64 (i32*, i8*, ...) @fprintf(i32* %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %214)
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %208
  store i32 -1, i32* %4, align 4
  br label %229

218:                                              ; preds = %208
  %219 = load i32*, i32** %6, align 8
  %220 = call i64 (i32*, i8*, ...) @fprintf(i32* %219, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  store i32 -1, i32* %4, align 4
  br label %229

223:                                              ; preds = %218
  %224 = load i32*, i32** %6, align 8
  %225 = call i64 @fflush(i32* %224)
  %226 = icmp slt i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  store i32 -1, i32* %4, align 4
  br label %229

228:                                              ; preds = %223
  store i32 0, i32* %4, align 4
  br label %229

229:                                              ; preds = %228, %227, %222, %217, %207, %199, %191, %186, %181, %176, %171, %161, %153, %145, %137, %129, %121, %113, %104, %96, %86, %75, %69, %36, %26, %16
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @BmEscapeTok(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ToBase64(i8*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
