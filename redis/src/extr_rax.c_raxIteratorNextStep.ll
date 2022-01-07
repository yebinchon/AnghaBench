; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rax.c_raxIteratorNextStep.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rax.c_raxIteratorNextStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i8*, %struct.TYPE_19__*, i8*, i64 (%struct.TYPE_19__**)*, %struct.TYPE_21__, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32, i8*, i64, i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }

@RAX_ITER_EOF = common dso_local global i32 0, align 4
@RAX_ITER_JUST_SEEKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"GO DEEPER\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"SCAN NEXT %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"SCAN found a new node\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raxIteratorNextStep(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__**, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RAX_ITER_EOF, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %345

23:                                               ; preds = %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RAX_ITER_JUST_SEEKED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* @RAX_ITER_JUST_SEEKED, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  store i32 1, i32* %3, align 4
  br label %345

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %7, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  store %struct.TYPE_19__* %48, %struct.TYPE_19__** %8, align 8
  br label %49

49:                                               ; preds = %38, %344
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %63

57:                                               ; preds = %49
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  br label %63

63:                                               ; preds = %57, %56
  %64 = phi i32 [ 1, %56 ], [ %62, %57 ]
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %146, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %146

70:                                               ; preds = %67
  %71 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 6
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = call i32 @raxStackPush(%struct.TYPE_21__* %73, %struct.TYPE_19__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %345

80:                                               ; preds = %70
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = call %struct.TYPE_19__** @raxNodeFirstChildPtr(%struct.TYPE_19__* %83)
  store %struct.TYPE_19__** %84, %struct.TYPE_19__*** %10, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %80
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  br label %104

103:                                              ; preds = %80
  br label %104

104:                                              ; preds = %103, %97
  %105 = phi i32 [ %102, %97 ], [ 1, %103 ]
  %106 = call i32 @raxIteratorAddChars(%struct.TYPE_20__* %85, i8* %90, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %345

109:                                              ; preds = %104
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %113 = call i32 @memcpy(%struct.TYPE_19__** %111, %struct.TYPE_19__** %112, i32 8)
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 5
  %116 = load i64 (%struct.TYPE_19__**)*, i64 (%struct.TYPE_19__**)** %115, align 8
  %117 = icmp ne i64 (%struct.TYPE_19__**)* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %109
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 5
  %121 = load i64 (%struct.TYPE_19__**)*, i64 (%struct.TYPE_19__**)** %120, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 3
  %124 = call i64 %121(%struct.TYPE_19__** %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %118
  %127 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %10, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 3
  %130 = call i32 @memcpy(%struct.TYPE_19__** %127, %struct.TYPE_19__** %129, i32 8)
  br label %131

131:                                              ; preds = %126, %118, %109
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %140, align 8
  %142 = call i8* @raxGetData(%struct.TYPE_19__* %141)
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  store i32 1, i32* %3, align 4
  br label %345

145:                                              ; preds = %131
  br label %344

146:                                              ; preds = %67, %63
  br label %147

147:                                              ; preds = %146, %342
  %148 = load i32, i32* %5, align 4
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %177, label %151

151:                                              ; preds = %147
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 7
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %158, align 8
  %160 = icmp eq %struct.TYPE_19__* %154, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %151
  %162 = load i32, i32* @RAX_ITER_EOF, align 4
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load i64, i64* %7, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  store i64 %167, i64* %170, align 8
  %171 = load i64, i64* %6, align 8
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 3
  store %struct.TYPE_19__* %174, %struct.TYPE_19__** %176, align 8
  store i32 1, i32* %3, align 4
  br label %345

177:                                              ; preds = %151, %147
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = sub i64 %183, 1
  %185 = getelementptr inbounds i8, i8* %180, i64 %184
  %186 = load i8, i8* %185, align 1
  store i8 %186, i8* %12, align 1
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %177
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 6
  %192 = call %struct.TYPE_19__* @raxStackPop(%struct.TYPE_21__* %191)
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 3
  store %struct.TYPE_19__* %192, %struct.TYPE_19__** %194, align 8
  br label %196

195:                                              ; preds = %177
  store i32 0, i32* %5, align 4
  br label %196

196:                                              ; preds = %195, %189
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %196
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  br label %210

209:                                              ; preds = %196
  br label %210

210:                                              ; preds = %209, %203
  %211 = phi i32 [ %208, %203 ], [ 1, %209 ]
  store i32 %211, i32* %13, align 4
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %213 = load i32, i32* %13, align 4
  %214 = call i32 @raxIteratorDelChars(%struct.TYPE_20__* %212, i32 %213)
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %342, label %221

221:                                              ; preds = %210
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i32 0, i32 1
  %231 = icmp sgt i32 %226, %230
  br i1 %231, label %232, label %342

232:                                              ; preds = %221
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 3
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %234, align 8
  %236 = call %struct.TYPE_19__** @raxNodeFirstChildPtr(%struct.TYPE_19__* %235)
  store %struct.TYPE_19__** %236, %struct.TYPE_19__*** %14, align 8
  store i32 0, i32* %15, align 4
  br label %237

237:                                              ; preds = %271, %232
  %238 = load i32, i32* %15, align 4
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp slt i32 %238, %243
  br i1 %244, label %245, label %276

245:                                              ; preds = %237
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = load i32, i32* %15, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %255)
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 3
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  %262 = load i32, i32* %15, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = load i8, i8* %12, align 1
  %268 = zext i8 %267 to i32
  %269 = icmp sgt i32 %266, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %245
  br label %276

271:                                              ; preds = %245
  %272 = load i32, i32* %15, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %15, align 4
  %274 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %274, i32 1
  store %struct.TYPE_19__** %275, %struct.TYPE_19__*** %14, align 8
  br label %237

276:                                              ; preds = %270, %237
  %277 = load i32, i32* %15, align 4
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 3
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %277, %282
  br i1 %283, label %284, label %341

284:                                              ; preds = %276
  %285 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 3
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 1
  %291 = load i8*, i8** %290, align 8
  %292 = load i32, i32* %15, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %291, i64 %293
  %295 = call i32 @raxIteratorAddChars(%struct.TYPE_20__* %286, i8* %294, i32 1)
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 6
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 3
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %299, align 8
  %301 = call i32 @raxStackPush(%struct.TYPE_21__* %297, %struct.TYPE_19__* %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %284
  store i32 0, i32* %3, align 4
  br label %345

304:                                              ; preds = %284
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 3
  %307 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %308 = call i32 @memcpy(%struct.TYPE_19__** %306, %struct.TYPE_19__** %307, i32 8)
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 5
  %311 = load i64 (%struct.TYPE_19__**)*, i64 (%struct.TYPE_19__**)** %310, align 8
  %312 = icmp ne i64 (%struct.TYPE_19__**)* %311, null
  br i1 %312, label %313, label %326

313:                                              ; preds = %304
  %314 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i32 0, i32 5
  %316 = load i64 (%struct.TYPE_19__**)*, i64 (%struct.TYPE_19__**)** %315, align 8
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 3
  %319 = call i64 %316(%struct.TYPE_19__** %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %313
  %322 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 3
  %325 = call i32 @memcpy(%struct.TYPE_19__** %322, %struct.TYPE_19__** %324, i32 8)
  br label %326

326:                                              ; preds = %321, %313, %304
  %327 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 3
  %329 = load %struct.TYPE_19__*, %struct.TYPE_19__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %326
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %334, i32 0, i32 3
  %336 = load %struct.TYPE_19__*, %struct.TYPE_19__** %335, align 8
  %337 = call i8* @raxGetData(%struct.TYPE_19__* %336)
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 4
  store i8* %337, i8** %339, align 8
  store i32 1, i32* %3, align 4
  br label %345

340:                                              ; preds = %326
  br label %343

341:                                              ; preds = %276
  br label %342

342:                                              ; preds = %341, %221, %210
  br label %147

343:                                              ; preds = %340
  br label %344

344:                                              ; preds = %343, %145
  br label %49

345:                                              ; preds = %333, %303, %161, %138, %108, %79, %30, %22
  %346 = load i32, i32* %3, align 4
  ret i32 %346
}

declare dso_local i32 @debugf(i8*, ...) #1

declare dso_local i32 @raxStackPush(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__** @raxNodeFirstChildPtr(%struct.TYPE_19__*) #1

declare dso_local i32 @raxIteratorAddChars(%struct.TYPE_20__*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__**, %struct.TYPE_19__**, i32) #1

declare dso_local i8* @raxGetData(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @raxStackPop(%struct.TYPE_21__*) #1

declare dso_local i32 @raxIteratorDelChars(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
