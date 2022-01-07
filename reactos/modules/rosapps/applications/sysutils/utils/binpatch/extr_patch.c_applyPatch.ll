; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/binpatch/extr_patch.c_applyPatch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/binpatch/extr_patch.c_applyPatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8, i8 }

@MAX_PATH = common dso_local global i32 0, align 4
@m_argc = common dso_local global i32 0, align 4
@m_argv = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"This executable doesn't contain a patch, use -c to create one.\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Patch name: %s\0A\00", align 1
@m_patch = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"File count: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"----------------------\0AFile name:   %s\0AFile size:   %Id bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Patch count: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"  Offset 0x%Ix   0x%02x -> 0x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Applying patch...\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"File %s not found! \00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"(S)kip, (R)etry, (A)bort, (M)anually enter filename\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"fgets() failed!\0A\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"File %s has unexpected filesize of %Id bytes (%Id bytes expected)\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"Do you want to make a backup of %s? (Y)es, (N)o, (A)bort\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%s.bak\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"File %s already exists, overwrite? (Y)es, (N)o, (A)bort\00", align 1
@.str.16 = private unnamed_addr constant [79 x i8] c"Unexpected value in file %s at offset 0x%x: expected = 0x%02x, found = 0x%02x\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Patch applied sucessfully!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @applyPatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applyPatch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @m_argc, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %30

22:                                               ; preds = %0
  %23 = load i32*, i32** @m_argv, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strcmp(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (...) @printUsage()
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %419

30:                                               ; preds = %22, %0
  %31 = call i64 (...) @loadPatch()
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %419

35:                                               ; preds = %30
  %36 = load i32, i32* @m_argc, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %122

38:                                               ; preds = %35
  %39 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 0), align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 1), align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %118, %38
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 1), align 8
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %121

47:                                               ; preds = %43
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i8* %53, i64 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %114, %47
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %69, %75
  br i1 %76, label %77, label %117

77:                                               ; preds = %68
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i8, i8* %98, align 4
  %100 = zext i8 %99 to i32
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %88, i32 %100, i32 %112)
  br label %114

114:                                              ; preds = %77
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %68

117:                                              ; preds = %68
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %43

121:                                              ; preds = %43
  br label %418

122:                                              ; preds = %35
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %413, %122
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 1), align 8
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %416

128:                                              ; preds = %124
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %9, align 8
  br label %135

135:                                              ; preds = %196, %169, %128
  %136 = load i8*, i8** %9, align 8
  %137 = call i8* @loadFile(i8* %136, i64* %6)
  store i8* %137, i8** %7, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %201

140:                                              ; preds = %135
  %141 = load i8*, i8** %9, align 8
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %230, %140
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  br label %145

145:                                              ; preds = %159, %143
  %146 = call i32 (...) @_getch()
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145
  %148 = load i32, i32* %2, align 4
  %149 = icmp ne i32 %148, 115
  br i1 %149, label %150, label %159

150:                                              ; preds = %147
  %151 = load i32, i32* %2, align 4
  %152 = icmp ne i32 %151, 114
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i32, i32* %2, align 4
  %155 = icmp ne i32 %154, 97
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %2, align 4
  %158 = icmp ne i32 %157, 109
  br label %159

159:                                              ; preds = %156, %153, %150, %147
  %160 = phi i1 [ false, %153 ], [ false, %150 ], [ false, %147 ], [ %158, %156 ]
  br i1 %160, label %145, label %161

161:                                              ; preds = %159
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %163 = load i32, i32* %2, align 4
  %164 = icmp eq i32 %163, 115
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %413

166:                                              ; preds = %161
  %167 = load i32, i32* %2, align 4
  %168 = icmp eq i32 %167, 114
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %135

170:                                              ; preds = %166
  %171 = load i32, i32* %2, align 4
  %172 = icmp eq i32 %171, 97
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 0, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %419

174:                                              ; preds = %170
  %175 = load i32, i32* %2, align 4
  %176 = icmp eq i32 %175, 109
  br i1 %176, label %177, label %197

177:                                              ; preds = %174
  %178 = trunc i64 %17 to i32
  %179 = load i32, i32* @stdin, align 4
  %180 = call i32* @fgets(i8* %19, i32 %178, i32 %179)
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %419

184:                                              ; preds = %177
  %185 = call i8* @strchr(i8* %19, i8 signext 13)
  store i8* %185, i8** %8, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i8*, i8** %8, align 8
  store i8 0, i8* %189, align 1
  br label %190

190:                                              ; preds = %188, %184
  %191 = call i8* @strchr(i8* %19, i8 signext 10)
  store i8* %191, i8** %8, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i8*, i8** %8, align 8
  store i8 0, i8* %195, align 1
  br label %196

196:                                              ; preds = %194, %190
  store i8* %19, i8** %9, align 8
  br label %135

197:                                              ; preds = %174
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200, %135
  %202 = load i64, i64* %6, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %204 = load i32, i32* %3, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %202, %208
  br i1 %209, label %210, label %232

210:                                              ; preds = %201
  %211 = load i8*, i8** %7, align 8
  %212 = call i32 @free(i8* %211)
  %213 = load i8*, i8** %9, align 8
  %214 = load i64, i64* %6, align 8
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %216 = load i32, i32* %3, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i64 0, i64 0), i8* %213, i64 %214, i64 %220)
  %222 = load i8*, i8** %9, align 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %224 = load i32, i32* %3, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ne i8* %222, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %210
  br label %143

231:                                              ; preds = %210
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %419

232:                                              ; preds = %201
  %233 = load i8*, i8** %9, align 8
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0), i8* %233)
  br label %235

235:                                              ; preds = %246, %232
  %236 = call i32 (...) @_getch()
  store i32 %236, i32* %2, align 4
  br label %237

237:                                              ; preds = %235
  %238 = load i32, i32* %2, align 4
  %239 = icmp ne i32 %238, 121
  br i1 %239, label %240, label %246

240:                                              ; preds = %237
  %241 = load i32, i32* %2, align 4
  %242 = icmp ne i32 %241, 110
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32, i32* %2, align 4
  %245 = icmp ne i32 %244, 97
  br label %246

246:                                              ; preds = %243, %240, %237
  %247 = phi i1 [ false, %240 ], [ false, %237 ], [ %245, %243 ]
  br i1 %247, label %235, label %248

248:                                              ; preds = %246
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %250 = load i32, i32* %2, align 4
  %251 = icmp eq i32 %250, 121
  br i1 %251, label %252, label %310

252:                                              ; preds = %248
  %253 = load i32, i32* @MAX_PATH, align 4
  %254 = zext i32 %253 to i64
  %255 = call i8* @llvm.stacksave()
  store i8* %255, i8** %13, align 8
  %256 = alloca i8, i64 %254, align 16
  store i64 %254, i64* %14, align 8
  %257 = load i32, i32* @MAX_PATH, align 4
  %258 = load i8*, i8** %9, align 8
  %259 = call i32 @_snprintf(i8* %256, i32 %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %258)
  %260 = load i32, i32* @MAX_PATH, align 4
  %261 = sub nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %256, i64 %262
  store i8 0, i8* %263, align 1
  store i32 1, i32* %5, align 4
  %264 = call i64 @_access(i8* %256, i32 0)
  %265 = icmp sge i64 %264, 0
  br i1 %265, label %266, label %294

266:                                              ; preds = %252
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i64 0, i64 0), i8* %256)
  br label %268

268:                                              ; preds = %279, %266
  %269 = call i32 (...) @_getch()
  store i32 %269, i32* %2, align 4
  br label %270

270:                                              ; preds = %268
  %271 = load i32, i32* %2, align 4
  %272 = icmp ne i32 %271, 121
  br i1 %272, label %273, label %279

273:                                              ; preds = %270
  %274 = load i32, i32* %2, align 4
  %275 = icmp ne i32 %274, 110
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i32, i32* %2, align 4
  %278 = icmp ne i32 %277, 97
  br label %279

279:                                              ; preds = %276, %273, %270
  %280 = phi i1 [ false, %273 ], [ false, %270 ], [ %278, %276 ]
  br i1 %280, label %268, label %281

281:                                              ; preds = %279
  %282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %283 = load i32, i32* %2, align 4
  %284 = icmp eq i32 %283, 110
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  store i32 0, i32* %5, align 4
  br label %293

286:                                              ; preds = %281
  %287 = load i32, i32* %2, align 4
  %288 = icmp eq i32 %287, 97
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i8*, i8** %7, align 8
  %291 = call i32 @free(i8* %290)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %306

292:                                              ; preds = %286
  br label %293

293:                                              ; preds = %292, %285
  br label %294

294:                                              ; preds = %293, %252
  %295 = load i32, i32* %5, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %305

297:                                              ; preds = %294
  %298 = load i8*, i8** %7, align 8
  %299 = load i64, i64* %6, align 8
  %300 = call i64 @saveFile(i8* %256, i8* %298, i64 %299)
  %301 = icmp slt i64 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %297
  %303 = load i8*, i8** %7, align 8
  %304 = call i32 @free(i8* %303)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %306

305:                                              ; preds = %297, %294
  store i32 0, i32* %12, align 4
  br label %306

306:                                              ; preds = %305, %302, %289
  %307 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %307)
  %308 = load i32, i32* %12, align 4
  switch i32 %308, label %419 [
    i32 0, label %309
  ]

309:                                              ; preds = %306
  br label %317

310:                                              ; preds = %248
  %311 = load i32, i32* %2, align 4
  %312 = icmp eq i32 %311, 97
  br i1 %312, label %313, label %316

313:                                              ; preds = %310
  %314 = load i8*, i8** %7, align 8
  %315 = call i32 @free(i8* %314)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %419

316:                                              ; preds = %310
  br label %317

317:                                              ; preds = %316, %309
  store i32 0, i32* %4, align 4
  br label %318

318:                                              ; preds = %398, %317
  %319 = load i32, i32* %4, align 4
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %321 = load i32, i32* %3, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = icmp slt i32 %319, %325
  br i1 %326, label %327, label %401

327:                                              ; preds = %318
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %329 = load i32, i32* %3, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 3
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %332, align 8
  %334 = load i32, i32* %4, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %15, align 4
  %339 = load i8*, i8** %7, align 8
  %340 = load i32, i32* %15, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %339, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = zext i8 %343 to i32
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %346 = load i32, i32* %3, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 3
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %349, align 8
  %351 = load i32, i32* %4, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 1
  %355 = load i8, i8* %354, align 4
  %356 = zext i8 %355 to i32
  %357 = icmp ne i32 %344, %356
  br i1 %357, label %358, label %382

358:                                              ; preds = %327
  %359 = load i8*, i8** %9, align 8
  %360 = load i32, i32* %15, align 4
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %362 = load i32, i32* %3, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 3
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %365, align 8
  %367 = load i32, i32* %4, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 1
  %371 = load i8, i8* %370, align 4
  %372 = zext i8 %371 to i32
  %373 = load i8*, i8** %7, align 8
  %374 = load i32, i32* %15, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8, i8* %373, i64 %375
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.16, i64 0, i64 0), i8* %359, i32 %360, i32 %372, i32 %378)
  %380 = load i8*, i8** %7, align 8
  %381 = call i32 @free(i8* %380)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %419

382:                                              ; preds = %327
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @m_patch, i32 0, i32 2), align 8
  %384 = load i32, i32* %3, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i32 0, i32 3
  %388 = load %struct.TYPE_4__*, %struct.TYPE_4__** %387, align 8
  %389 = load i32, i32* %4, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 2
  %393 = load i8, i8* %392, align 1
  %394 = load i8*, i8** %7, align 8
  %395 = load i32, i32* %15, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8, i8* %394, i64 %396
  store i8 %393, i8* %397, align 1
  br label %398

398:                                              ; preds = %382
  %399 = load i32, i32* %4, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %4, align 4
  br label %318

401:                                              ; preds = %318
  %402 = load i8*, i8** %9, align 8
  %403 = load i8*, i8** %7, align 8
  %404 = load i64, i64* %6, align 8
  %405 = call i64 @saveFile(i8* %402, i8* %403, i64 %404)
  %406 = icmp slt i64 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %401
  %408 = load i8*, i8** %7, align 8
  %409 = call i32 @free(i8* %408)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %419

410:                                              ; preds = %401
  %411 = load i8*, i8** %7, align 8
  %412 = call i32 @free(i8* %411)
  br label %413

413:                                              ; preds = %410, %165
  %414 = load i32, i32* %3, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %3, align 4
  br label %124

416:                                              ; preds = %124
  %417 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  br label %418

418:                                              ; preds = %416, %121
  store i32 0, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %419

419:                                              ; preds = %418, %407, %358, %313, %306, %231, %182, %173, %33, %28
  %420 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %420)
  %421 = load i32, i32* %1, align 4
  ret i32 %421
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @printUsage(...) #2

declare dso_local i64 @loadPatch(...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @loadFile(i8*, i64*) #2

declare dso_local i32 @_getch(...) #2

declare dso_local i32* @fgets(i8*, i32, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @_snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @_access(i8*, i32) #2

declare dso_local i64 @saveFile(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
