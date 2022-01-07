; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_resource.c_build_exe.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_resource.c_build_exe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i64, i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_14__, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@page_size = common dso_local global i32 0, align 4
@IMAGE_DOS_SIGNATURE = common dso_local global i32 0, align 4
@IMAGE_NT_SIGNATURE = common dso_local global i32 0, align 4
@IMAGE_FILE_MACHINE_I386 = common dso_local global i32 0, align 4
@IMAGE_FILE_EXECUTABLE_IMAGE = common dso_local global i32 0, align 4
@IMAGE_FILE_DLL = common dso_local global i32 0, align 4
@IMAGE_NT_OPTIONAL_HDR_MAGIC = common dso_local global i32 0, align 4
@IMAGE_SUBSYSTEM_WINDOWS_CUI = common dso_local global i32 0, align 4
@rva_rsrc_start = common dso_local global i32 0, align 4
@IMAGE_FILE_RESOURCE_DIRECTORY = common dso_local global i64 0, align 8
@max_sections = common dso_local global i64 0, align 8
@filename = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"failed to create file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @build_exe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_exe(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %16 = load i32, i32* @page_size, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = mul nuw i64 4, %17
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32* %19, i32 0, i32 %21)
  %23 = bitcast i32* %19 to i8*
  %24 = bitcast i8* %23 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %3, align 8
  %25 = load i32, i32* @IMAGE_DOS_SIGNATURE, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  store i32 8, i32* %29, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i64 1
  %32 = bitcast %struct.TYPE_16__* %31 to i8*
  %33 = bitcast i8* %32 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %4, align 8
  %34 = load i32, i32* @IMAGE_NT_SIGNATURE, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @IMAGE_FILE_MACHINE_I386, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store i32 56, i32* %46, align 4
  %47 = load i32, i32* @IMAGE_FILE_EXECUTABLE_IMAGE, align 4
  %48 = load i32, i32* @IMAGE_FILE_DLL, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %6, align 8
  %55 = load i32, i32* @IMAGE_NT_OPTIONAL_HDR_MAGIC, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  store i32 16, i32* %61, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  store i32 268435456, i32* %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  store i32 4, i32* %65, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 4
  store i32 1, i32* %67, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 5
  store i32 4, i32* %69, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 6
  store i32 96, i32* %71, align 8
  %72 = load i32, i32* @page_size, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @IMAGE_SUBSYSTEM_WINDOWS_CUI, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 11
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @page_size, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @page_size, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @rva_rsrc_start, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 10
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i64, i64* @IMAGE_FILE_RESOURCE_DIRECTORY, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store i32 %84, i32* %90, align 4
  %91 = load i32, i32* @page_size, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 10
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load i64, i64* @IMAGE_FILE_RESOURCE_DIRECTORY, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store i32 %91, i32* %97, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i64 1
  %100 = bitcast %struct.TYPE_15__* %99 to i8*
  %101 = bitcast i8* %100 to i32*
  store i32* %101, i32** %5, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %102

102:                                              ; preds = %188, %1
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* @max_sections, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %191

106:                                              ; preds = %102
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %109, i64 %110
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %111, align 8
  %113 = icmp ne %struct.TYPE_17__* %112, null
  br i1 %113, label %114, label %187

114:                                              ; preds = %106
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %117, i64 %118
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %126, i64 %127
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %123, %131
  store i64 %132, i64* %13, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %135, i64 %136
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %143, i64 %144
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %140, %148
  store i64 %149, i64* %14, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %150, i64 %155
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %158, align 8
  %160 = load i64, i64* %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %159, i64 %160
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = call i32 @memcpy(i32* %156, %struct.TYPE_17__* %162, i32 4)
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %13, align 8
  %174 = icmp ult i64 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %114
  %176 = load i64, i64* %13, align 8
  %177 = trunc i64 %176 to i32
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 4
  br label %180

180:                                              ; preds = %175, %114
  %181 = load i64, i64* %10, align 8
  %182 = load i64, i64* %14, align 8
  %183 = icmp ult i64 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load i64, i64* %14, align 8
  store i64 %185, i64* %10, align 8
  br label %186

186:                                              ; preds = %184, %180
  br label %187

187:                                              ; preds = %186, %106
  br label %188

188:                                              ; preds = %187
  %189 = load i64, i64* %9, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %9, align 8
  br label %102

191:                                              ; preds = %102
  %192 = load i32, i32* @filename, align 4
  %193 = load i32, i32* @GENERIC_WRITE, align 4
  %194 = load i32, i32* @CREATE_ALWAYS, align 4
  %195 = call i64 @CreateFileA(i32 %192, i32 %193, i32 0, i32* null, i32 %194, i32 0, i32 0)
  store i64 %195, i64* %7, align 8
  %196 = load i64, i64* %7, align 8
  %197 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %198 = icmp ne i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = call i32 @ok(i32 %199, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %201 = load i64, i64* %7, align 8
  %202 = mul nuw i64 4, %17
  %203 = call i32 @WriteFile(i64 %201, i32* %19, i64 %202, i64* %8, i32* null)
  %204 = mul nuw i64 4, %17
  %205 = trunc i64 %204 to i32
  %206 = call i32 @memset(i32* %19, i32 0, i32 %205)
  %207 = load i32, i32* @page_size, align 4
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %9, align 8
  br label %209

209:                                              ; preds = %222, %191
  %210 = load i64, i64* %9, align 8
  %211 = load i64, i64* %10, align 8
  %212 = icmp ult i64 %210, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %209
  %214 = load i32, i32* @page_size, align 4
  %215 = load i64, i64* %10, align 8
  %216 = load i64, i64* %9, align 8
  %217 = sub i64 %215, %216
  %218 = call i64 @min(i32 %214, i64 %217)
  store i64 %218, i64* %15, align 8
  %219 = load i64, i64* %7, align 8
  %220 = load i64, i64* %15, align 8
  %221 = call i32 @WriteFile(i64 %219, i32* %19, i64 %220, i64* %8, i32* null)
  br label %222

222:                                              ; preds = %213
  %223 = load i32, i32* @page_size, align 4
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* %9, align 8
  %226 = add i64 %225, %224
  store i64 %226, i64* %9, align 8
  br label %209

227:                                              ; preds = %209
  %228 = load i64, i64* %7, align 8
  %229 = call i32 @CloseHandle(i64 %228)
  %230 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %230)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, %struct.TYPE_17__*, i32) #2

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @WriteFile(i64, i32*, i64, i64*, i32*) #2

declare dso_local i64 @min(i32, i64) #2

declare dso_local i32 @CloseHandle(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
