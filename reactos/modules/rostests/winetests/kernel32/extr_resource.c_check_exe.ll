; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_resource.c_check_exe.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_resource.c_check_exe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32, i64, i64, i64, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_14__, %struct.TYPE_19__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, i64, i64, i32 }
%struct.TYPE_18__ = type { i64, i32, i64, i32, i32, i32 }

@filename = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed to create file (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"file size wrong\0A\00", align 1
@PAGE_READONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to create file\0A\00", align 1
@FILE_MAP_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"failed to map file\0A\00", align 1
@max_sections = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"section %d name wrong\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"section %d vaddr wrong\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"section %d SizeOfRawData wrong (%d vs %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"section %d PointerToRawData wrong\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"section %d characteristics wrong\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"number of sections wrong\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Characteristics wrong\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"TimeDateStamp wrong %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"MajorVersion wrong\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"MinorVersion wrong\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"NumberOfNamedEntries should be %d instead of %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"NumberOfIdEntries should be %d instead of %d\0A\00", align 1
@IMAGE_FILE_RESOURCE_DIRECTORY = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [62 x i8] c"VirtualAddress in optional header should be %d instead of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @check_exe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_exe(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @filename, align 4
  %14 = load i32, i32* @GENERIC_READ, align 4
  %15 = load i32, i32* @OPEN_EXISTING, align 4
  %16 = call i32* @CreateFileA(i32 %13, i32 %14, i32 0, i32* null, i32 %15, i32 0, i32 0)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %19 = icmp ne i32* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @GetFileSize(i32* %23, i32* null)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* @PAGE_READONLY, align 4
  %34 = call i32* @CreateFileMappingA(i32* %32, i32* null, i32 %33, i32 0, i32 0, i32* null)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @FILE_MAP_READ, align 4
  %41 = load i64, i64* %11, align 8
  %42 = call %struct.TYPE_21__* @MapViewOfFile(i32* %39, i32 %40, i32 0, i32 0, i64 %41)
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %4, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %44 = icmp ne %struct.TYPE_21__* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = icmp ne %struct.TYPE_21__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %1
  br label %326

50:                                               ; preds = %1
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %52 = bitcast %struct.TYPE_21__* %51 to i32*
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = bitcast i32* %57 to i8*
  %59 = bitcast i8* %58 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %59, %struct.TYPE_20__** %5, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  store %struct.TYPE_19__* %61, %struct.TYPE_19__** %6, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i64 1
  %64 = bitcast %struct.TYPE_20__* %63 to i8*
  %65 = bitcast i8* %64 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %65, %struct.TYPE_17__** %7, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %187, %50
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @max_sections, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %190

70:                                               ; preds = %66
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %73, i64 %75
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = icmp ne %struct.TYPE_13__* %77, null
  br i1 %78, label %79, label %186

79:                                               ; preds = %70
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %82, i64 %84
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 4
  %92 = call i32 @memcmp(i32* %87, i32* %91, i32 8)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %12, align 8
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %100, i64 %102
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %108 = load i64, i64* %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %106, %111
  %113 = zext i1 %112 to i32
  %114 = load i64, i64* %12, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %118, i64 %120
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sle i64 %124, %129
  %131 = zext i1 %130 to i32
  %132 = load i64, i64* %12, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %134, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %135, i64 %137
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %143 = load i64, i64* %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 %132, i64 %141, i64 %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %149, align 8
  %151 = load i32, i32* %3, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %150, i64 %152
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %158 = load i64, i64* %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %156, %161
  %163 = zext i1 %162 to i32
  %164 = load i64, i64* %12, align 8
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i64 %164)
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %167, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %168, i64 %170
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %176 = load i64, i64* %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %174, %179
  %181 = zext i1 %180 to i32
  %182 = load i64, i64* %12, align 8
  %183 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i64 %182)
  %184 = load i64, i64* %12, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %12, align 8
  br label %186

186:                                              ; preds = %79, %70
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %3, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %3, align 4
  br label %66

190:                                              ; preds = %66
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %12, align 8
  %196 = icmp eq i64 %194, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp uge i64 %201, 0
  br i1 %202, label %203, label %325

203:                                              ; preds = %190
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ult i64 %206, %210
  br i1 %211, label %212, label %325

212:                                              ; preds = %203
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %214 = bitcast %struct.TYPE_21__* %213 to i32*
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %214, i64 %222
  %224 = bitcast i32* %223 to i8*
  %225 = bitcast i8* %224 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %225, %struct.TYPE_18__** %8, align 8
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %228, 0
  %230 = zext i1 %229 to i32
  %231 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 8
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %245, label %236

236:                                              ; preds = %212
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = call i64 (...) @GetTickCount()
  %242 = sub nsw i64 %240, %241
  %243 = call i32 @abs(i64 %242)
  %244 = icmp slt i32 %243, 1000
  br label %245

245:                                              ; preds = %236, %212
  %246 = phi i1 [ true, %212 ], [ %244, %236 ]
  %247 = zext i1 %246 to i32
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %250)
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, 4
  %256 = zext i1 %255 to i32
  %257 = call i32 (i32, i8*, ...) @ok(i32 %256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = icmp eq i64 %260, 0
  %262 = zext i1 %261 to i32
  %263 = call i32 (i32, i8*, ...) @ok(i32 %262, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %266, %269
  %271 = zext i1 %270 to i32
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = call i32 (i32, i8*, ...) @ok(i32 %271, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i32 %274, i32 %277)
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = icmp eq i32 %281, %284
  %286 = zext i1 %285 to i32
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = call i32 (i32, i8*, ...) @ok(i32 %286, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %289, i32 %292)
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %295, align 8
  %297 = load i64, i64* @IMAGE_FILE_RESOURCE_DIRECTORY, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = icmp eq i32 %300, %307
  %309 = zext i1 %308 to i32
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %318, align 8
  %320 = load i64, i64* @IMAGE_FILE_RESOURCE_DIRECTORY, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 (i32, i8*, ...) @ok(i32 %309, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.16, i64 0, i64 0), i32 %316, i32 %323)
  br label %325

325:                                              ; preds = %245, %203, %190
  br label %326

326:                                              ; preds = %325, %49
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %328 = call i32 @UnmapViewOfFile(%struct.TYPE_21__* %327)
  %329 = load i32*, i32** %10, align 8
  %330 = call i32 @CloseHandle(i32* %329)
  %331 = load i32*, i32** %9, align 8
  %332 = call i32 @CloseHandle(i32* %331)
  ret void
}

declare dso_local i32* @CreateFileA(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @GetFileSize(i32*, i32*) #1

declare dso_local i32* @CreateFileMappingA(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_21__* @MapViewOfFile(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i64 @GetTickCount(...) #1

declare dso_local i32 @UnmapViewOfFile(%struct.TYPE_21__*) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
