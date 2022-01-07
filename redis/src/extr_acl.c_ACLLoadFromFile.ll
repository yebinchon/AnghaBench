; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLLoadFromFile.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLLoadFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Error loading ACLs, opening file '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@Users = common dso_local global i32* null, align 8
@DefaultUser = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s:%d: unbalanced quotes in acl line. \00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"%s:%d should start with user keyword followed by the username. \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"%s:%d: %s. \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.10 = private unnamed_addr constant [89 x i8] c"WARNING: ACL errors detected, no change to the previously active ACL rules was performed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ACLLoadFromFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %4, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = call i8* (...) @sdsempty()
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i8* (i8*, i8*, i8*, i32, ...) @sdscatprintf(i8* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %29)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %2, align 8
  br label %268

32:                                               ; preds = %1
  %33 = call i8* (...) @sdsempty()
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %39, %32
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %36 = load i32*, i32** %4, align 8
  %37 = call i32* @fgets(i8* %35, i32 1024, i32* %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %42 = call i8* @sdscat(i8* %40, i8* %41)
  store i8* %42, i8** %7, align 8
  br label %34

43:                                               ; preds = %34
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = call i8* (...) @sdsempty()
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = call i8** @sdssplitlen(i8* %47, i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i32* %8)
  store i8** %50, i8*** %9, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @sdsfree(i8* %51)
  %53 = call i32* (...) @ACLCreateUnlinkedUser()
  store i32* %53, i32** %11, align 8
  %54 = load i32*, i32** @Users, align 8
  store i32* %54, i32** %12, align 8
  %55 = load i32*, i32** @DefaultUser, align 8
  store i32* %55, i32** %13, align 8
  %56 = call i32* (...) @raxNew()
  store i32* %56, i32** @Users, align 8
  %57 = call i32 (...) @ACLInitDefaultUser()
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %228, %43
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %231

62:                                               ; preds = %58
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %17, align 4
  %65 = load i8**, i8*** %9, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @sdstrim(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i8**, i8*** %9, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %70, i8** %74, align 8
  %75 = load i8**, i8*** %9, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %62
  br label %228

85:                                               ; preds = %62
  %86 = load i8**, i8*** %9, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i8** @sdssplitargs(i8* %90, i32* %16)
  store i8** %91, i8*** %15, align 8
  %92 = load i8**, i8*** %15, align 8
  %93 = icmp eq i8** %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %85
  %95 = load i8*, i8** %10, align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load i32, i32* %17, align 4
  %100 = call i8* (i8*, i8*, i8*, i32, ...) @sdscatprintf(i8* %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %98, i32 %99)
  store i8* %100, i8** %10, align 8
  br label %228

101:                                              ; preds = %85
  %102 = load i32, i32* %16, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i8**, i8*** %15, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @sdsfreesplitres(i8** %105, i32 %106)
  br label %228

108:                                              ; preds = %101
  %109 = load i8**, i8*** %15, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %16, align 4
  %116 = icmp slt i32 %115, 2
  br i1 %116, label %117, label %127

117:                                              ; preds = %114, %108
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = load i32, i32* %17, align 4
  %123 = call i8* (i8*, i8*, i8*, i32, ...) @sdscatprintf(i8* %118, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* %121, i32 %122)
  store i8* %123, i8** %10, align 8
  %124 = load i8**, i8*** %15, align 8
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @sdsfreesplitres(i8** %124, i32 %125)
  br label %228

127:                                              ; preds = %114
  %128 = load i32*, i32** %11, align 8
  %129 = call i64 @ACLSetUser(i32* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 -1)
  store i32 2, i32* %18, align 4
  br label %130

130:                                              ; preds = %160, %127
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %163

134:                                              ; preds = %130
  %135 = load i32*, i32** %11, align 8
  %136 = load i8**, i8*** %15, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = load i8**, i8*** %15, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @sdslen(i8* %145)
  %147 = call i64 @ACLSetUser(i32* %135, i8* %140, i64 %146)
  %148 = load i64, i64* @C_OK, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %134
  %151 = call i8* (...) @ACLSetUserStringError()
  store i8* %151, i8** %19, align 8
  %152 = load i8*, i8** %10, align 8
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = load i32, i32* %17, align 4
  %157 = load i8*, i8** %19, align 8
  %158 = call i8* (i8*, i8*, i8*, i32, ...) @sdscatprintf(i8* %152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %155, i32 %156, i8* %157)
  store i8* %158, i8** %10, align 8
  br label %160

159:                                              ; preds = %134
  br label %160

160:                                              ; preds = %159, %150
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %18, align 4
  br label %130

163:                                              ; preds = %130
  %164 = load i8*, i8** %10, align 8
  %165 = call i64 @sdslen(i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i8**, i8*** %15, align 8
  %169 = load i32, i32* %16, align 4
  %170 = call i32 @sdsfreesplitres(i8** %168, i32 %169)
  br label %228

171:                                              ; preds = %163
  %172 = load i8**, i8*** %15, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 1
  %174 = load i8*, i8** %173, align 8
  %175 = load i8**, i8*** %15, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @sdslen(i8* %177)
  %179 = call i32* @ACLCreateUser(i8* %174, i64 %178)
  store i32* %179, i32** %20, align 8
  %180 = load i32*, i32** %20, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %198, label %182

182:                                              ; preds = %171
  %183 = load i8**, i8*** %15, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 1
  %185 = load i8*, i8** %184, align 8
  %186 = load i8**, i8*** %15, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 1
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @sdslen(i8* %188)
  %190 = trunc i64 %189 to i32
  %191 = call i32* @ACLGetUserByName(i8* %185, i32 %190)
  store i32* %191, i32** %20, align 8
  %192 = load i32*, i32** %20, align 8
  %193 = icmp ne i32* %192, null
  %194 = zext i1 %193 to i32
  %195 = call i32 @serverAssert(i32 %194)
  %196 = load i32*, i32** %20, align 8
  %197 = call i64 @ACLSetUser(i32* %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 -1)
  br label %198

198:                                              ; preds = %182, %171
  store i32 2, i32* %18, align 4
  br label %199

199:                                              ; preds = %221, %198
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %16, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %224

203:                                              ; preds = %199
  %204 = load i32*, i32** %20, align 8
  %205 = load i8**, i8*** %15, align 8
  %206 = load i32, i32* %18, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = load i8**, i8*** %15, align 8
  %211 = load i32, i32* %18, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = call i64 @sdslen(i8* %214)
  %216 = call i64 @ACLSetUser(i32* %204, i8* %209, i64 %215)
  %217 = load i64, i64* @C_OK, align 8
  %218 = icmp eq i64 %216, %217
  %219 = zext i1 %218 to i32
  %220 = call i32 @serverAssert(i32 %219)
  br label %221

221:                                              ; preds = %203
  %222 = load i32, i32* %18, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %18, align 4
  br label %199

224:                                              ; preds = %199
  %225 = load i8**, i8*** %15, align 8
  %226 = load i32, i32* %16, align 4
  %227 = call i32 @sdsfreesplitres(i8** %225, i32 %226)
  br label %228

228:                                              ; preds = %224, %167, %117, %104, %94, %84
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %14, align 4
  br label %58

231:                                              ; preds = %58
  %232 = load i32*, i32** %11, align 8
  %233 = call i32 @ACLFreeUser(i32* %232)
  %234 = load i8**, i8*** %9, align 8
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @sdsfreesplitres(i8** %234, i32 %235)
  %237 = load i32*, i32** %13, align 8
  store i32* %237, i32** @DefaultUser, align 8
  %238 = load i8*, i8** %10, align 8
  %239 = call i64 @sdslen(i8* %238)
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %261

241:                                              ; preds = %231
  %242 = call i32* @ACLGetUserByName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 7)
  store i32* %242, i32** %21, align 8
  %243 = load i32*, i32** %21, align 8
  %244 = icmp ne i32* %243, null
  %245 = zext i1 %244 to i32
  %246 = call i32 @serverAssert(i32 %245)
  %247 = load i32*, i32** @DefaultUser, align 8
  %248 = load i32*, i32** %21, align 8
  %249 = call i32 @ACLCopyUser(i32* %247, i32* %248)
  %250 = load i32*, i32** %21, align 8
  %251 = call i32 @ACLFreeUser(i32* %250)
  %252 = load i32*, i32** @Users, align 8
  %253 = load i32*, i32** @DefaultUser, align 8
  %254 = call i32 @raxInsert(i32* %252, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 7, i32* %253, i32* null)
  %255 = load i32*, i32** %12, align 8
  %256 = call i32 @raxRemove(i32* %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 7, i32* null)
  %257 = load i32*, i32** %12, align 8
  %258 = call i32 @ACLFreeUsersSet(i32* %257)
  %259 = load i8*, i8** %10, align 8
  %260 = call i32 @sdsfree(i8* %259)
  store i8* null, i8** %2, align 8
  br label %268

261:                                              ; preds = %231
  %262 = load i32*, i32** @Users, align 8
  %263 = call i32 @ACLFreeUsersSet(i32* %262)
  %264 = load i32*, i32** %12, align 8
  store i32* %264, i32** @Users, align 8
  %265 = load i8*, i8** %10, align 8
  %266 = call i8* @sdscat(i8* %265, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.10, i64 0, i64 0))
  store i8* %266, i8** %10, align 8
  %267 = load i8*, i8** %10, align 8
  store i8* %267, i8** %2, align 8
  br label %268

268:                                              ; preds = %261, %241, %25
  %269 = load i8*, i8** %2, align 8
  ret i8* %269
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @sdscatprintf(i8*, i8*, i8*, i32, ...) #1

declare dso_local i8* @sdsempty(...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8** @sdssplitlen(i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32* @ACLCreateUnlinkedUser(...) #1

declare dso_local i32* @raxNew(...) #1

declare dso_local i32 @ACLInitDefaultUser(...) #1

declare dso_local i8* @sdstrim(i8*, i8*) #1

declare dso_local i8** @sdssplitargs(i8*, i32*) #1

declare dso_local i32 @sdsfreesplitres(i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @ACLSetUser(i32*, i8*, i64) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i8* @ACLSetUserStringError(...) #1

declare dso_local i32* @ACLCreateUser(i8*, i64) #1

declare dso_local i32* @ACLGetUserByName(i8*, i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @ACLFreeUser(i32*) #1

declare dso_local i32 @ACLCopyUser(i32*, i32*) #1

declare dso_local i32 @raxInsert(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @raxRemove(i32*, i8*, i32, i32*) #1

declare dso_local i32 @ACLFreeUsersSet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
