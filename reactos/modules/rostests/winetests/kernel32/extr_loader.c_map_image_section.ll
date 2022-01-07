; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_loader.c_map_image_section.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_loader.c_map_image_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_18__, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@dos_header = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"CreateFile error %d\0A\00", align 1
@STANDARD_RIGHTS_REQUIRED = common dso_local global i32 0, align 4
@SECTION_MAP_READ = common dso_local global i32 0, align 4
@SECTION_QUERY = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@SEC_IMAGE = common dso_local global i32 0, align 4
@SectionBasicInformation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"NtQuerySection failed err %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"NtQuerySection wrong size %lu\0A\00", align 1
@SEC_FILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"NtQuerySection wrong attr %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"NtQuerySection wrong base %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"NtQuerySection wrong size %x%08x / %08x\0A\00", align 1
@is_win64 = common dso_local global i64 0, align 8
@IMAGE_NT_OPTIONAL_HDR32_MAGIC = common dso_local global i64 0, align 8
@IMAGE_NT_OPTIONAL_HDR64_MAGIC = common dso_local global i64 0, align 8
@DONT_RESOLVE_DLL_REFERENCES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR = common dso_local global i64 0, align 8
@COMIMAGE_FLAGS_ILONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"%u: loading failed err %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%u: loading succeeded\0A\00", align 1
@ERROR_BAD_EXE_FORMAT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"%u: wrong error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32*, i8*, i32)* @map_image_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_image_section(%struct.TYPE_25__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_23__, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_22__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @create_test_dll_sections(i32* @dos_header, %struct.TYPE_25__* %27, i32* %28, i8* %29, i8* %26)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* @GENERIC_READ, align 4
  %32 = load i32, i32* @FILE_SHARE_READ, align 4
  %33 = load i32, i32* @OPEN_EXISTING, align 4
  %34 = call i64 @CreateFileA(i8* %26, i32 %31, i32 %32, i32* null, i32 %33, i32 0, i32 0)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 (...) @GetLastError()
  %40 = trunc i64 %39 to i32
  %41 = call i32 (i32, i8*, i32, ...) @ok(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %15, align 4
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @STANDARD_RIGHTS_REQUIRED, align 4
  %45 = load i32, i32* @SECTION_MAP_READ, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SECTION_QUERY, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PAGE_READONLY, align 4
  %50 = load i32, i32* @SEC_IMAGE, align 4
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @pNtCreateSection(i64* %13, i32 %48, i32* null, %struct.TYPE_23__* %11, i32 %49, i32 %50, i64 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %192, label %55

55:                                               ; preds = %4
  store i32 -559038737, i32* %19, align 4
  %56 = load i64, i64* %13, align 8
  %57 = load i32, i32* @SectionBasicInformation, align 4
  %58 = call i32 @pNtQuerySection(i64 %56, i32 %57, %struct.TYPE_22__* %18, i32 24, i32* %19)
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %20, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %20, align 4
  %64 = call i32 (i32, i8*, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %66, 24
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %19, align 4
  %70 = call i32 (i32, i8*, i32, ...) @ok(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SEC_IMAGE, align 4
  %74 = load i32, i32* @SEC_FILE, align 4
  %75 = or i32 %73, %74
  %76 = icmp eq i32 %72, %75
  %77 = zext i1 %76 to i32
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, i32, ...) @ok(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = ptrtoint i32* %86 to i32
  %88 = call i32 (i32, i8*, i32, ...) @ok(i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %15, align 4
  %104 = call i32 (i32, i8*, i32, ...) @ok(i32 %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %98, i32 %102, i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @query_image_section(i32 %105, i8* %26, %struct.TYPE_25__* %106, i8* %107)
  store i32 %108, i32* %16, align 4
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @is_win64, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %55
  %116 = load i64, i64* @IMAGE_NT_OPTIONAL_HDR32_MAGIC, align 8
  br label %119

117:                                              ; preds = %55
  %118 = load i64, i64* @IMAGE_NT_OPTIONAL_HDR64_MAGIC, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i64 [ %116, %115 ], [ %118, %117 ]
  %121 = icmp eq i64 %112, %120
  br i1 %121, label %122, label %191

122:                                              ; preds = %119
  %123 = call i32 @SetLastError(i32 -559038737)
  %124 = load i32, i32* @DONT_RESOLVE_DLL_REFERENCES, align 4
  %125 = call i32* @LoadLibraryExA(i8* %26, i32 0, i32 %124)
  store i32* %125, i32** %17, align 8
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %170, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @IMAGE_NT_OPTIONAL_HDR32_MAGIC, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %170

135:                                              ; preds = %128
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %21, align 4
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %138 = bitcast %struct.TYPE_25__* %137 to %struct.TYPE_24__*
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %140, align 8
  %142 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %135
  %148 = load i8*, i8** %7, align 8
  %149 = bitcast i8* %148 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %149, %struct.TYPE_16__** %22, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @COMIMAGE_FLAGS_ILONLY, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %21, align 4
  br label %157

157:                                              ; preds = %147, %135
  %158 = load i32*, i32** %17, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %21, align 4
  %162 = call i64 @broken(i32 %161)
  %163 = icmp ne i64 %162, 0
  br label %164

164:                                              ; preds = %160, %157
  %165 = phi i1 [ true, %157 ], [ %163, %160 ]
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %8, align 4
  %168 = call i64 (...) @GetLastError()
  %169 = call i32 (i32, i8*, i32, ...) @ok(i32 %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %167, i64 %168)
  br label %184

170:                                              ; preds = %128, %122
  %171 = load i32*, i32** %17, align 8
  %172 = icmp ne i32* %171, null
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %8, align 4
  %176 = call i32 (i32, i8*, i32, ...) @ok(i32 %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %175)
  %177 = call i64 (...) @GetLastError()
  %178 = load i64, i64* @ERROR_BAD_EXE_FORMAT, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %8, align 4
  %182 = call i64 (...) @GetLastError()
  %183 = call i32 (i32, i8*, i32, ...) @ok(i32 %180, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %181, i64 %182)
  br label %184

184:                                              ; preds = %170, %164
  %185 = load i32*, i32** %17, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32*, i32** %17, align 8
  %189 = call i32 @FreeLibrary(i32* %188)
  br label %190

190:                                              ; preds = %187, %184
  br label %191

191:                                              ; preds = %190, %119
  br label %192

192:                                              ; preds = %191, %4
  %193 = load i64, i64* %13, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i64, i64* %13, align 8
  %197 = call i32 @CloseHandle(i64 %196)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i64, i64* %12, align 8
  %200 = call i32 @CloseHandle(i64 %199)
  %201 = call i32 @DeleteFileA(i8* %26)
  %202 = load i32, i32* %14, align 4
  %203 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %203)
  ret i32 %202
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_test_dll_sections(i32*, %struct.TYPE_25__*, i32*, i8*, i8*) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @pNtCreateSection(i64*, i32, i32*, %struct.TYPE_23__*, i32, i32, i64) #2

declare dso_local i32 @pNtQuerySection(i64, i32, %struct.TYPE_22__*, i32, i32*) #2

declare dso_local i32 @query_image_section(i32, i8*, %struct.TYPE_25__*, i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32* @LoadLibraryExA(i8*, i32, i32) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @FreeLibrary(i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @DeleteFileA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
