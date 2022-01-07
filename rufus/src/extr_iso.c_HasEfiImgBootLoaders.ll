; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_iso.c_HasEfiImgBootLoaders.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_iso.c_HasEfiImgBootLoaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32****, i32, i32*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.libfat_filesystem = type { i32 }
%struct.libfat_direntry = type { i32* }

@FALSE = common dso_local global i64 0, align 8
@image_path = common dso_local global i8* null, align 8
@img_report = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [53 x i8] c"Could not open image '%s' as an ISO-9660 file system\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Could not get ISO-9660 file information for file %s\0A\00", align 1
@ISO_NB_BLOCKS = common dso_local global i32 0, align 4
@ISO_BLOCKSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Error reading ISO-9660 file %s at LSN %lu\0A\00", align 1
@iso9660_readfat = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"FAT access error\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"EFI        \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"BOOT       \00", align 1
@efi_bootname = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"Internal error: FAT 8.3\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"  Detected EFI bootloader(s) (from '%s'):\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"  \E2\97\8F '%s'\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HasEfiImgBootLoaders() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.libfat_filesystem*, align 8
  %9 = alloca %struct.libfat_direntry, align 8
  %10 = alloca [12 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %2, align 8
  store i32* null, i32** %3, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  store %struct.libfat_filesystem* null, %struct.libfat_filesystem** %8, align 8
  %15 = bitcast [12 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %15, i8 0, i64 12, i1 false)
  %16 = load i8*, i8** @image_path, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %0
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @img_report, i32 0, i32 0), align 8
  %20 = call i32 @HAS_EFI_IMG(i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18, %0
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %1, align 8
  br label %248

24:                                               ; preds = %18
  %25 = load i8*, i8** @image_path, align 8
  %26 = call i32* @iso9660_open(i8* %25)
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** @image_path, align 8
  %31 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %221

32:                                               ; preds = %24
  %33 = load i32*, i32** %3, align 8
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @img_report, i32 0, i32 0), align 8
  %35 = call %struct.TYPE_10__* @iso9660_ifs_stat_translate(i32* %33, i8* %34)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %4, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = icmp eq %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @img_report, i32 0, i32 0), align 8
  %40 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %221

41:                                               ; preds = %32
  %42 = call %struct.TYPE_10__* @malloc(i32 40)
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %5, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = icmp eq %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %221

46:                                               ; preds = %41
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32****, i32***** %51, align 8
  %53 = getelementptr inbounds i32***, i32**** %52, i64 0
  %54 = load i32***, i32**** %53, align 8
  %55 = bitcast i32*** %54 to i32****
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i32**** %55, i32***** %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32****, i32***** %67, align 8
  %69 = bitcast i32**** %68 to i32***
  %70 = load i32, i32* @ISO_NB_BLOCKS, align 4
  %71 = call i32 @iso9660_iso_seek_read(i32* %62, i32 %65, i32*** %69, i32 %70)
  %72 = load i32, i32* @ISO_NB_BLOCKS, align 4
  %73 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %74 = mul nsw i32 %72, %73
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %46
  %77 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @img_report, i32 0, i32 0), align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32****, i32***** %79, align 8
  %81 = ptrtoint i32**** %80 to i64
  %82 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %77, i64 %81)
  br label %221

83:                                               ; preds = %46
  %84 = load i32, i32* @iso9660_readfat, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = ptrtoint %struct.TYPE_10__* %85 to i64
  %87 = call %struct.libfat_filesystem* @libfat_open(i32 %84, i64 %86)
  store %struct.libfat_filesystem* %87, %struct.libfat_filesystem** %8, align 8
  %88 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %8, align 8
  %89 = icmp eq %struct.libfat_filesystem* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %221

92:                                               ; preds = %83
  %93 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %8, align 8
  %94 = call i64 @libfat_searchdir(%struct.libfat_filesystem* %93, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.libfat_direntry* %9)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %221

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.libfat_direntry, %struct.libfat_direntry* %9, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 26
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.libfat_direntry, %struct.libfat_direntry* %9, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 27
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 8
  %107 = add nsw i32 %101, %106
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %6, align 8
  %109 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %8, align 8
  %110 = load i64, i64* %6, align 8
  %111 = call i64 @libfat_searchdir(%struct.libfat_filesystem* %109, i64 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %struct.libfat_direntry* %9)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %97
  br label %221

114:                                              ; preds = %97
  %115 = getelementptr inbounds %struct.libfat_direntry, %struct.libfat_direntry* %9, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 26
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.libfat_direntry, %struct.libfat_direntry* %9, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 27
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  %124 = add nsw i32 %118, %123
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %6, align 8
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %217, %114
  %127 = load i32, i32* %11, align 4
  %128 = load i8**, i8*** @efi_bootname, align 8
  %129 = call i32 @ARRAYSIZE(i8** %128)
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %220

131:                                              ; preds = %126
  %132 = load i8**, i8*** @efi_bootname, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @strlen(i8* %136)
  %138 = icmp sgt i32 %137, 12
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %217

141:                                              ; preds = %131
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %192, %141
  %143 = load i8**, i8*** @efi_bootname, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %195

154:                                              ; preds = %142
  %155 = load i8**, i8*** @efi_bootname, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 46
  br i1 %165, label %166, label %176

166:                                              ; preds = %154
  br label %167

167:                                              ; preds = %170, %166
  %168 = load i32, i32* %13, align 4
  %169 = icmp slt i32 %168, 8
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds [12 x i8], [12 x i8]* %10, i64 0, i64 %173
  store i8 32, i8* %174, align 1
  br label %167

175:                                              ; preds = %167
  br label %191

176:                                              ; preds = %154
  %177 = load i8**, i8*** @efi_bootname, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = call signext i8 @toupper(i8 signext %185)
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %13, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds [12 x i8], [12 x i8]* %10, i64 0, i64 %189
  store i8 %186, i8* %190, align 1
  br label %191

191:                                              ; preds = %176, %175
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %142

195:                                              ; preds = %142
  %196 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %8, align 8
  %197 = load i64, i64* %6, align 8
  %198 = getelementptr inbounds [12 x i8], [12 x i8]* %10, i64 0, i64 0
  %199 = call i64 @libfat_searchdir(%struct.libfat_filesystem* %196, i64 %197, i8* %198, %struct.libfat_direntry* %9)
  store i64 %199, i64* %7, align 8
  %200 = load i64, i64* %7, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %195
  %203 = load i64, i64* %2, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %202
  %206 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @img_report, i32 0, i32 0), align 8
  %207 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %206)
  br label %208

208:                                              ; preds = %205, %202
  %209 = load i8**, i8*** @efi_bootname, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %213)
  %215 = load i64, i64* @TRUE, align 8
  store i64 %215, i64* %2, align 8
  br label %216

216:                                              ; preds = %208, %195
  br label %217

217:                                              ; preds = %216, %139
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %126

220:                                              ; preds = %126
  br label %221

221:                                              ; preds = %220, %113, %96, %90, %76, %45, %38, %29
  %222 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %8, align 8
  %223 = icmp ne %struct.libfat_filesystem* %222, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load %struct.libfat_filesystem*, %struct.libfat_filesystem** %8, align 8
  %226 = call i32 @libfat_close(%struct.libfat_filesystem* %225)
  br label %227

227:                                              ; preds = %224, %221
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %229 = icmp ne %struct.TYPE_10__* %228, null
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  %235 = call i32 @safe_free(%struct.TYPE_10__* %234)
  br label %236

236:                                              ; preds = %230, %227
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %238 = call i32 @safe_free(%struct.TYPE_10__* %237)
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %240 = call i32 @safe_free(%struct.TYPE_10__* %239)
  %241 = load i32*, i32** %3, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %236
  %244 = load i32*, i32** %3, align 8
  %245 = call i32 @iso9660_close(i32* %244)
  br label %246

246:                                              ; preds = %243, %236
  %247 = load i64, i64* %2, align 8
  store i64 %247, i64* %1, align 8
  br label %248

248:                                              ; preds = %246, %22
  %249 = load i64, i64* %1, align 8
  ret i64 %249
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HAS_EFI_IMG(i8*) #2

declare dso_local i32* @iso9660_open(i8*) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local %struct.TYPE_10__* @iso9660_ifs_stat_translate(i32*, i8*) #2

declare dso_local %struct.TYPE_10__* @malloc(i32) #2

declare dso_local i32 @iso9660_iso_seek_read(i32*, i32, i32***, i32) #2

declare dso_local %struct.libfat_filesystem* @libfat_open(i32, i64) #2

declare dso_local i64 @libfat_searchdir(%struct.libfat_filesystem*, i64, i8*, %struct.libfat_direntry*) #2

declare dso_local i32 @ARRAYSIZE(i8**) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local signext i8 @toupper(i8 signext) #2

declare dso_local i32 @libfat_close(%struct.libfat_filesystem*) #2

declare dso_local i32 @safe_free(%struct.TYPE_10__*) #2

declare dso_local i32 @iso9660_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
