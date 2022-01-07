; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_iso.c_fix_config.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_iso.c_fix_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64 }

@boot_type = common dso_local global i64 0, align 8
@BT_IMAGE = common dso_local global i64 0, align 8
@img_report = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@persistence_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"/casper/vmlinuz\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"initrd=/casper/initrd\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"/casper/vmlinuz persistent\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"persistent initrd=/casper/initrd\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"  Added 'persistent' kernel option\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"boot=live\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"boot=live persistence\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"  Added 'persistence' kernel option\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\\x20\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"linuxefi\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"  Patched %s: '%s' \E2\9E\94 '%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@efi_dirname = common dso_local global i32 0, align 4
@syslinux_cfg = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"Duplicated %s to %s\0A\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"cd9660:/dev/iso9660/%s\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"msdosfs:/dev/msdosfs/%s\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, %struct.TYPE_5__*)* @fix_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_config(i8* %0, i8* %1, i8* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @safe_strlen(i8* %16)
  store i64 %17, i64* %10, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @safe_strdup(i8* %18)
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %275

23:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i8*, i8** %13, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i8*, i8** %13, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 92, i8* %38, align 1
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  br label %24

43:                                               ; preds = %24
  %44 = load i64, i64* @boot_type, align 8
  %45 = load i64, i64* @BT_IMAGE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %115

47:                                               ; preds = %43
  %48 = bitcast { i64, i32 }* %15 to i8*
  %49 = bitcast %struct.TYPE_6__* @img_report to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 12, i1 false)
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %51 = load i64, i64* %50, align 4
  %52 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @HAS_PERSISTENCE(i64 %51, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %115

56:                                               ; preds = %47
  %57 = load i64, i64* @persistence_size, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %115

59:                                               ; preds = %56
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %114

74:                                               ; preds = %69, %64, %59
  %75 = load i8*, i8** %13, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)
  %94 = load i32, i32* @TRUE, align 4
  %95 = call i32* @replace_in_token_data(i8* %75, i8* %81, i8* %87, i8* %93, i32 %94)
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %74
  %98 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %113

99:                                               ; preds = %74
  %100 = load i8*, i8** %13, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %107 = load i32, i32* @TRUE, align 4
  %108 = call i32* @replace_in_token_data(i8* %100, i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %107)
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %99
  br label %113

113:                                              ; preds = %112, %97
  br label %114

114:                                              ; preds = %113, %69
  br label %115

115:                                              ; preds = %114, %56, %47, %43
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %185

125:                                              ; preds = %120, %115
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @img_report, i32 0, i32 1), align 4
  %127 = call i8* @replace_char(i32 %126, i8 signext 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %127, i8** %11, align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @img_report, i32 0, i32 0), align 4
  %129 = call i8* @replace_char(i32 %128, i8 signext 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %129, i8** %12, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %180

132:                                              ; preds = %125
  %133 = load i8*, i8** %12, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %180

135:                                              ; preds = %132
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %135
  %141 = load i8*, i8** %13, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = load i32, i32* @TRUE, align 4
  %145 = call i32* @replace_in_token_data(i8* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %142, i8* %143, i32 %144)
  %146 = icmp ne i32* %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = load i8*, i8** %13, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = load i32, i32* @TRUE, align 4
  %152 = call i32* @replace_in_token_data(i8* %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %149, i8* %150, i32 %151)
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %147, %140
  %155 = load i8*, i8** %13, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %155, i8* %156, i8* %157)
  br label %159

159:                                              ; preds = %154, %147
  br label %179

160:                                              ; preds = %135
  %161 = load i8*, i8** %13, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %168 = load i8*, i8** %11, align 8
  %169 = load i8*, i8** %12, align 8
  %170 = load i32, i32* @TRUE, align 4
  %171 = call i32* @replace_in_token_data(i8* %161, i8* %167, i8* %168, i8* %169, i32 %170)
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %160
  %174 = load i8*, i8** %13, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = load i8*, i8** %12, align 8
  %177 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %174, i8* %175, i8* %176)
  br label %178

178:                                              ; preds = %173, %160
  br label %179

179:                                              ; preds = %178, %159
  br label %180

180:                                              ; preds = %179, %132, %125
  %181 = load i8*, i8** %11, align 8
  %182 = call i32 @safe_free(i8* %181)
  %183 = load i8*, i8** %12, align 8
  %184 = call i32 @safe_free(i8* %183)
  br label %185

185:                                              ; preds = %180, %120
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %231

190:                                              ; preds = %185
  %191 = load i8*, i8** %6, align 8
  %192 = load i32, i32* @efi_dirname, align 4
  %193 = call i64 @safe_stricmp(i8* %191, i32 %192)
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %231

195:                                              ; preds = %190
  %196 = load i8*, i8** %7, align 8
  %197 = load i32*, i32** @syslinux_cfg, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @safe_stricmp(i8* %196, i32 %199)
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %231

202:                                              ; preds = %195
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @img_report, i32 0, i32 2), align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %231, label %205

205:                                              ; preds = %202
  %206 = load i8*, i8** %13, align 8
  %207 = call i8* @safe_strdup(i8* %206)
  store i8* %207, i8** %14, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %231

209:                                              ; preds = %205
  %210 = load i8*, i8** %14, align 8
  %211 = load i64, i64* %10, align 8
  %212 = sub i64 %211, 12
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  store i8 115, i8* %213, align 1
  %214 = load i8*, i8** %14, align 8
  %215 = load i64, i64* %10, align 8
  %216 = sub i64 %215, 11
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  store i8 121, i8* %217, align 1
  %218 = load i8*, i8** %14, align 8
  %219 = load i64, i64* %10, align 8
  %220 = sub i64 %219, 10
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  store i8 115, i8* %221, align 1
  %222 = load i8*, i8** %13, align 8
  %223 = load i8*, i8** %14, align 8
  %224 = load i32, i32* @TRUE, align 4
  %225 = call i32 @CopyFileA(i8* %222, i8* %223, i32 %224)
  %226 = load i8*, i8** %13, align 8
  %227 = load i8*, i8** %14, align 8
  %228 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %226, i8* %227)
  %229 = load i8*, i8** %14, align 8
  %230 = call i32 @free(i8* %229)
  br label %231

231:                                              ; preds = %209, %205, %202, %195, %190, %185
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %272

236:                                              ; preds = %231
  %237 = load i32, i32* @MAX_PATH, align 4
  %238 = call i8* @malloc(i32 %237)
  store i8* %238, i8** %11, align 8
  %239 = load i32, i32* @MAX_PATH, align 4
  %240 = call i8* @malloc(i32 %239)
  store i8* %240, i8** %12, align 8
  %241 = load i8*, i8** %11, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %267

243:                                              ; preds = %236
  %244 = load i8*, i8** %12, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %267

246:                                              ; preds = %243
  %247 = load i8*, i8** %11, align 8
  %248 = load i32, i32* @MAX_PATH, align 4
  %249 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @img_report, i32 0, i32 1), align 4
  %250 = call i32 @safe_sprintf(i8* %247, i32 %248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %249)
  %251 = load i8*, i8** %12, align 8
  %252 = load i32, i32* @MAX_PATH, align 4
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @img_report, i32 0, i32 0), align 4
  %254 = call i32 @safe_sprintf(i8* %251, i32 %252, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %253)
  %255 = load i8*, i8** %13, align 8
  %256 = load i8*, i8** %11, align 8
  %257 = load i8*, i8** %12, align 8
  %258 = load i32, i32* @TRUE, align 4
  %259 = call i32* @replace_in_token_data(i8* %255, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %256, i8* %257, i32 %258)
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %266

261:                                              ; preds = %246
  %262 = load i8*, i8** %13, align 8
  %263 = load i8*, i8** %11, align 8
  %264 = load i8*, i8** %12, align 8
  %265 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %262, i8* %263, i8* %264)
  br label %266

266:                                              ; preds = %261, %246
  br label %267

267:                                              ; preds = %266, %243, %236
  %268 = load i8*, i8** %11, align 8
  %269 = call i32 @safe_free(i8* %268)
  %270 = load i8*, i8** %12, align 8
  %271 = call i32 @safe_free(i8* %270)
  br label %272

272:                                              ; preds = %267, %231
  %273 = load i8*, i8** %13, align 8
  %274 = call i32 @free(i8* %273)
  br label %275

275:                                              ; preds = %272, %22
  ret void
}

declare dso_local i64 @safe_strlen(i8*) #1

declare dso_local i8* @safe_strdup(i8*) #1

declare dso_local i64 @HAS_PERSISTENCE(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @replace_in_token_data(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @uprintf(i8*, ...) #1

declare dso_local i8* @replace_char(i32, i8 signext, i8*) #1

declare dso_local i32 @safe_free(i8*) #1

declare dso_local i64 @safe_stricmp(i8*, i32) #1

declare dso_local i32 @CopyFileA(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @safe_sprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
