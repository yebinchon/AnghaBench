; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_project.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_project.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8*, i8*, i8*, i8*, i8* }

@ZFS_INVALID_PROJID = common dso_local global i64 0, align 8
@ZFS_PROJECT_OP_DEFAULT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@B_TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"0Ccdkp:rs\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot specify '-C' '-c' '-s' together\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"project ID must be less than %u\0A\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid project ID\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"'-k' is only valid together with '-C'\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"'-0' is only valid together with '-c'\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"'-d' is useless together with '-C'\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"'-p' is useless together with '-C'\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"'-d' is useless for set project ID and/or inherit flag\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [37 x i8] c"missing file or directory target(s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_project to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_project(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %12 = load i64, i64* @ZFS_INVALID_PROJID, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %14 = load i32, i32* @ZFS_PROJECT_OP_DEFAULT, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %16 = load i8*, i8** @B_FALSE, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %18 = load i8*, i8** @B_FALSE, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %20 = load i8*, i8** @B_TRUE, align 8
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %22 = load i8*, i8** @B_FALSE, align 8
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 6
  %24 = load i8*, i8** @B_FALSE, align 8
  store i8* %24, i8** %23, align 8
  store i32 0, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i8*, i8** @B_FALSE, align 8
  %29 = call i32 @usage(i8* %28)
  br label %30

30:                                               ; preds = %27, %2
  br label %31

31:                                               ; preds = %133, %30
  %32 = load i32, i32* %3, align 4
  %33 = load i8**, i8*** %4, align 8
  %34 = call i32 @getopt(i32 %32, i8** %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %7, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %134

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %126 [
    i32 48, label %38
    i32 67, label %41
    i32 99, label %54
    i32 100, label %67
    i32 107, label %72
    i32 112, label %75
    i32 114, label %106
    i32 115, label %111
  ]

38:                                               ; preds = %36
  %39 = load i8*, i8** @B_FALSE, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  store i8* %39, i8** %40, align 8
  br label %133

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ZFS_PROJECT_OP_DEFAULT, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* %48)
  %50 = load i8*, i8** @B_FALSE, align 8
  %51 = call i32 @usage(i8* %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 130, i32* %53, align 8
  br label %133

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ZFS_PROJECT_OP_DEFAULT, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @stderr, align 4
  %61 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* %61)
  %63 = load i8*, i8** @B_FALSE, align 8
  %64 = call i32 @usage(i8* %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 131, i32* %66, align 8
  br label %133

67:                                               ; preds = %36
  %68 = load i8*, i8** @B_TRUE, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i8* %68, i8** %69, align 8
  %70 = load i8*, i8** @B_FALSE, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  store i8* %70, i8** %71, align 8
  br label %133

72:                                               ; preds = %36
  %73 = load i8*, i8** @B_TRUE, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i8* %73, i8** %74, align 8
  br label %133

75:                                               ; preds = %36
  store i32 0, i32* @errno, align 4
  %76 = load i32, i32* @optarg, align 4
  %77 = call i64 @strtoull(i32 %76, i8** %8, i32 0)
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = load i32, i32* @errno, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81, %75
  %87 = load i32, i32* @stderr, align 4
  %88 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @UINT32_MAX, align 4
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* %88, i32 %89)
  %91 = load i8*, i8** @B_FALSE, align 8
  %92 = call i32 @usage(i8* %91)
  br label %93

93:                                               ; preds = %86, %81
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @UINT32_MAX, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp sge i64 %95, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load i32, i32* @stderr, align 4
  %101 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* %101)
  %103 = load i8*, i8** @B_FALSE, align 8
  %104 = call i32 @usage(i8* %103)
  br label %105

105:                                              ; preds = %99, %93
  br label %133

106:                                              ; preds = %36
  %107 = load i8*, i8** @B_TRUE, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  store i8* %107, i8** %108, align 8
  %109 = load i8*, i8** @B_FALSE, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i8* %109, i8** %110, align 8
  br label %133

111:                                              ; preds = %36
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ZFS_PROJECT_OP_DEFAULT, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load i32, i32* @stderr, align 4
  %118 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* %118)
  %120 = load i8*, i8** @B_FALSE, align 8
  %121 = call i32 @usage(i8* %120)
  br label %122

122:                                              ; preds = %116, %111
  %123 = load i8*, i8** @B_TRUE, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 6
  store i8* %123, i8** %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 128, i32* %125, align 8
  br label %133

126:                                              ; preds = %36
  %127 = load i32, i32* @stderr, align 4
  %128 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32, i32* @optopt, align 4
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* %128, i32 %129)
  %131 = load i8*, i8** @B_FALSE, align 8
  %132 = call i32 @usage(i8* %131)
  br label %133

133:                                              ; preds = %126, %122, %106, %105, %72, %67, %65, %52, %38
  br label %31

134:                                              ; preds = %31
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ZFS_PROJECT_OP_DEFAULT, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @ZFS_INVALID_PROJID, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 128, i32* %145, align 8
  br label %148

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 129, i32* %147, align 8
  br label %148

148:                                              ; preds = %146, %144
  br label %149

149:                                              ; preds = %148, %134
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  switch i32 %151, label %247 [
    i32 129, label %152
    i32 131, label %173
    i32 130, label %184
    i32 128, label %216
  ]

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load i32, i32* @stderr, align 4
  %158 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %159 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* %158)
  %160 = load i8*, i8** @B_FALSE, align 8
  %161 = call i32 @usage(i8* %160)
  br label %162

162:                                              ; preds = %156, %152
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* @stderr, align 4
  %168 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* %168)
  %170 = load i8*, i8** @B_FALSE, align 8
  %171 = call i32 @usage(i8* %170)
  br label %172

172:                                              ; preds = %166, %162
  br label %249

173:                                              ; preds = %149
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i32, i32* @stderr, align 4
  %179 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %178, i8* %179)
  %181 = load i8*, i8** @B_FALSE, align 8
  %182 = call i32 @usage(i8* %181)
  br label %183

183:                                              ; preds = %177, %173
  br label %249

184:                                              ; preds = %149
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = load i32, i32* @stderr, align 4
  %190 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %191 = call i32 (i32, i8*, ...) @fprintf(i32 %189, i8* %190)
  %192 = load i8*, i8** @B_FALSE, align 8
  %193 = call i32 @usage(i8* %192)
  br label %194

194:                                              ; preds = %188, %184
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %204, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* @stderr, align 4
  %200 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %201 = call i32 (i32, i8*, ...) @fprintf(i32 %199, i8* %200)
  %202 = load i8*, i8** @B_FALSE, align 8
  %203 = call i32 @usage(i8* %202)
  br label %204

204:                                              ; preds = %198, %194
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @ZFS_INVALID_PROJID, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %204
  %210 = load i32, i32* @stderr, align 4
  %211 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %212 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* %211)
  %213 = load i8*, i8** @B_FALSE, align 8
  %214 = call i32 @usage(i8* %213)
  br label %215

215:                                              ; preds = %209, %204
  br label %249

216:                                              ; preds = %149
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load i32, i32* @stderr, align 4
  %222 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  %223 = call i32 (i32, i8*, ...) @fprintf(i32 %221, i8* %222)
  %224 = load i8*, i8** @B_FALSE, align 8
  %225 = call i32 @usage(i8* %224)
  br label %226

226:                                              ; preds = %220, %216
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = load i32, i32* @stderr, align 4
  %232 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %233 = call i32 (i32, i8*, ...) @fprintf(i32 %231, i8* %232)
  %234 = load i8*, i8** @B_FALSE, align 8
  %235 = call i32 @usage(i8* %234)
  br label %236

236:                                              ; preds = %230, %226
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %238 = load i8*, i8** %237, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %246, label %240

240:                                              ; preds = %236
  %241 = load i32, i32* @stderr, align 4
  %242 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %243 = call i32 (i32, i8*, ...) @fprintf(i32 %241, i8* %242)
  %244 = load i8*, i8** @B_FALSE, align 8
  %245 = call i32 @usage(i8* %244)
  br label %246

246:                                              ; preds = %240, %236
  br label %249

247:                                              ; preds = %149
  %248 = call i32 @ASSERT(i32 0)
  br label %249

249:                                              ; preds = %247, %246, %215, %183, %172
  %250 = load i64, i64* @optind, align 8
  %251 = load i8**, i8*** %4, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 %250
  store i8** %252, i8*** %4, align 8
  %253 = load i64, i64* @optind, align 8
  %254 = load i32, i32* %3, align 4
  %255 = sext i32 %254 to i64
  %256 = sub nsw i64 %255, %253
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %3, align 4
  %258 = load i32, i32* %3, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %249
  %261 = load i32, i32* @stderr, align 4
  %262 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %263 = call i32 (i32, i8*, ...) @fprintf(i32 %261, i8* %262)
  %264 = load i8*, i8** @B_FALSE, align 8
  %265 = call i32 @usage(i8* %264)
  br label %266

266:                                              ; preds = %260, %249
  store i32 0, i32* %9, align 4
  br label %267

267:                                              ; preds = %286, %266
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %3, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %289

271:                                              ; preds = %267
  %272 = load i8**, i8*** %4, align 8
  %273 = load i32, i32* %9, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @zfs_project_handle(i8* %276, %struct.TYPE_3__* %5)
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %10, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %271
  %281 = load i32, i32* %6, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %280
  %284 = load i32, i32* %10, align 4
  store i32 %284, i32* %6, align 4
  br label %285

285:                                              ; preds = %283, %280, %271
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %9, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %9, align 4
  br label %267

289:                                              ; preds = %267
  %290 = load i32, i32* %6, align 4
  ret i32 %290
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i64 @strtoull(i32, i8**, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_project_handle(i8*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
