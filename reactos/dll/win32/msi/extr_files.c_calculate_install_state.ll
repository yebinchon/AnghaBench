; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_calculate_install_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_calculate_install_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_21__, i32, i32, %struct.TYPE_22__*, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i64 }

@INSTALLSTATE_LOCAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"skipping %s (not scheduled for install)\0A\00", align 1
@msifs_skipped = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"skipping %s (obsoleted by patch)\0A\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"installing %s (missing)\0A\00", align 1
@msifs_missing = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"overwriting %s (new version %s old version %u.%u.%u.%u)\0A\00", align 1
@msifs_overwrite = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"keeping %s (new version %s old version %u.%u.%u.%u)\0A\00", align 1
@msifs_present = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"overwriting %s (new version %s old version %s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"keeping %s (new version %s old version %s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"overwriting %s (old size %u new size %u)\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"keeping %s (hash match)\0A\00", align 1
@msifs_hashmatch = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"overwriting %s (hash mismatch)\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"keeping %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_23__*)* @calculate_install_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_install_state(i32* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %16 = call i64 @msi_get_component_action(i32* %14, %struct.TYPE_24__* %15)
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INSTALLSTATE_LOCAL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %33 = icmp ne %struct.TYPE_20__* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34, %23, %2
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %45 = call i32 @debugstr_w(%struct.TYPE_22__* %44)
  %46 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @msifs_skipped, align 4
  store i32 %47, i32* %3, align 4
  br label %257

48:                                               ; preds = %34, %29
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %51 = call i64 @is_obsoleted_by_patch(i32* %49, %struct.TYPE_23__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  %57 = call i32 @debugstr_w(%struct.TYPE_22__* %56)
  %58 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @msifs_skipped, align 4
  store i32 %59, i32* %3, align 4
  br label %257

60:                                               ; preds = %48
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %62 = call i64 @msi_is_global_assembly(%struct.TYPE_24__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64, %60
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @GetFileAttributesW(i32 %74)
  %76 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %71, %64
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = call i32 @debugstr_w(%struct.TYPE_22__* %81)
  %83 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @msifs_missing, align 4
  store i32 %84, i32* %3, align 4
  br label %257

85:                                               ; preds = %71
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  %89 = icmp ne %struct.TYPE_22__* %88, null
  br i1 %89, label %90, label %206

90:                                               ; preds = %85
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.TYPE_22__* @msi_get_disk_file_version(i32 %93)
  store %struct.TYPE_22__* %94, %struct.TYPE_22__** %7, align 8
  %95 = icmp ne %struct.TYPE_22__* %94, null
  br i1 %95, label %96, label %161

96:                                               ; preds = %90
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %99, align 8
  %101 = call i64 @msi_compare_file_versions(%struct.TYPE_22__* %97, %struct.TYPE_22__* %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %130

103:                                              ; preds = %96
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %105, align 8
  %107 = call i32 @debugstr_w(%struct.TYPE_22__* %106)
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %109, align 8
  %111 = call i32 @debugstr_w(%struct.TYPE_22__* %110)
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @HIWORD(i32 %114)
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @LOWORD(i32 %118)
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @HIWORD(i32 %122)
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @LOWORD(i32 %126)
  %128 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %111, i32 %115, i32 %119, i32 %123, i32 %127)
  %129 = load i32, i32* @msifs_overwrite, align 4
  store i32 %129, i32* %9, align 4
  br label %157

130:                                              ; preds = %96
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %132, align 8
  %134 = call i32 @debugstr_w(%struct.TYPE_22__* %133)
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %136, align 8
  %138 = call i32 @debugstr_w(%struct.TYPE_22__* %137)
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @HIWORD(i32 %141)
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @LOWORD(i32 %145)
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @HIWORD(i32 %149)
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @LOWORD(i32 %153)
  %155 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %138, i32 %142, i32 %146, i32 %150, i32 %154)
  %156 = load i32, i32* @msifs_present, align 4
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %130, %103
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %159 = call i32 @msi_free(%struct.TYPE_22__* %158)
  %160 = load i32, i32* %9, align 4
  store i32 %160, i32* %3, align 4
  br label %257

161:                                              ; preds = %90
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call %struct.TYPE_22__* @msi_font_version_from_file(i32 %164)
  store %struct.TYPE_22__* %165, %struct.TYPE_22__** %8, align 8
  %166 = icmp ne %struct.TYPE_22__* %165, null
  br i1 %166, label %167, label %204

167:                                              ; preds = %161
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %170, align 8
  %172 = call i64 @msi_compare_font_versions(%struct.TYPE_22__* %168, %struct.TYPE_22__* %171)
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %167
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %176, align 8
  %178 = call i32 @debugstr_w(%struct.TYPE_22__* %177)
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 4
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %180, align 8
  %182 = call i32 @debugstr_w(%struct.TYPE_22__* %181)
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %184 = call i32 @debugstr_w(%struct.TYPE_22__* %183)
  %185 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %178, i32 %182, i32 %184)
  %186 = load i32, i32* @msifs_overwrite, align 4
  store i32 %186, i32* %9, align 4
  br label %200

187:                                              ; preds = %167
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %189, align 8
  %191 = call i32 @debugstr_w(%struct.TYPE_22__* %190)
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %193, align 8
  %195 = call i32 @debugstr_w(%struct.TYPE_22__* %194)
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %197 = call i32 @debugstr_w(%struct.TYPE_22__* %196)
  %198 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %191, i32 %195, i32 %197)
  %199 = load i32, i32* @msifs_present, align 4
  store i32 %199, i32* %9, align 4
  br label %200

200:                                              ; preds = %187, %174
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %202 = call i32 @msi_free(%struct.TYPE_22__* %201)
  %203 = load i32, i32* %9, align 4
  store i32 %203, i32* %3, align 4
  br label %257

204:                                              ; preds = %161
  br label %205

205:                                              ; preds = %204
  br label %206

206:                                              ; preds = %205, %85
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @msi_get_disk_file_size(i32 %209)
  store i32 %210, i32* %10, align 4
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %210, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %206
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %217, align 8
  %219 = call i32 @debugstr_w(%struct.TYPE_22__* %218)
  %220 = load i32, i32* %10, align 4
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %219, i32 %220, i32 %223)
  %225 = load i32, i32* @msifs_overwrite, align 4
  store i32 %225, i32* %3, align 4
  br label %257

226:                                              ; preds = %206
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %250

232:                                              ; preds = %226
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %234 = call i64 @msi_file_hash_matches(%struct.TYPE_23__* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %232
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %238, align 8
  %240 = call i32 @debugstr_w(%struct.TYPE_22__* %239)
  %241 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* @msifs_hashmatch, align 4
  store i32 %242, i32* %3, align 4
  br label %257

243:                                              ; preds = %232
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %245, align 8
  %247 = call i32 @debugstr_w(%struct.TYPE_22__* %246)
  %248 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* @msifs_overwrite, align 4
  store i32 %249, i32* %3, align 4
  br label %257

250:                                              ; preds = %226
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %252, align 8
  %254 = call i32 @debugstr_w(%struct.TYPE_22__* %253)
  %255 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* @msifs_present, align 4
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %250, %243, %236, %215, %200, %157, %78, %53, %41
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i64 @msi_get_component_action(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_w(%struct.TYPE_22__*) #1

declare dso_local i64 @is_obsoleted_by_patch(i32*, %struct.TYPE_23__*) #1

declare dso_local i64 @msi_is_global_assembly(%struct.TYPE_24__*) #1

declare dso_local i64 @GetFileAttributesW(i32) #1

declare dso_local %struct.TYPE_22__* @msi_get_disk_file_version(i32) #1

declare dso_local i64 @msi_compare_file_versions(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @msi_free(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @msi_font_version_from_file(i32) #1

declare dso_local i64 @msi_compare_font_versions(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @msi_get_disk_file_size(i32) #1

declare dso_local i64 @msi_file_hash_matches(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
