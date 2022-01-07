; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_fromfile.c_RosSymCreateFromFile.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_fromfile.c_RosSymCreateFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, %struct.TYPE_20__, %struct.TYPE_19__, i64 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__*, i8* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_22__*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Could not rewind file\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to read DOS header %x\0A\00", align 1
@RosSymStatus = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Image doesn't have a valid DOS header\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed seeking to NT headers\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to read NT headers\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Image doesn't have a valid PE header\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Image doesn't have debug symbols\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"SymbolTable %x NumSymbols %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Failed seeking to section headers\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Alloc section headers\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Failed to allocate memory for %u section headers\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Failed to read section headers\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Short name string %d, %s\0A\00", align 1
@IMAGE_SIZEOF_SHORT_NAME = common dso_local global i32 0, align 4
@SYMBOL_SIZE = common dso_local global i32 0, align 4
@MAXIMUM_DWARF_NAME_SIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"Long name %d, %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Done with sections\0A\00", align 1
@peget2 = common dso_local global i32 0, align 4
@peget4 = common dso_local global i32 0, align 4
@peget8 = common dso_local global i32 0, align 4
@loaddisksection = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RosSymCreateFromFile(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__, align 8
  %7 = alloca %struct.TYPE_22__, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @RosSymSeekFile(i32 %17, i64 0)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %313

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @RosSymReadFile(i32 %24, %struct.TYPE_22__* %6, i32 48)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @RosSymStatus, align 4
  %29 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %313

31:                                               ; preds = %23
  %32 = call i32 @ROSSYM_IS_VALID_DOS_HEADER(%struct.TYPE_22__* %6)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %313

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @RosSymSeekFile(i32 %38, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %313

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @RosSymReadFile(i32 %47, %struct.TYPE_22__* %7, i32 48)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %313

53:                                               ; preds = %46
  %54 = call i32 @ROSSYM_IS_VALID_NT_HEADERS(%struct.TYPE_22__* %7)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  br label %313

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %10, align 4
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %3, align 4
  br label %313

71:                                               ; preds = %59
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @IMAGE_FIRST_SECTION(%struct.TYPE_22__* %7)
  %77 = inttoptr i64 %76 to i8*
  %78 = bitcast %struct.TYPE_22__* %7 to i8*
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %81, %83
  %85 = call i32 @RosSymSeekFile(i32 %75, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %71
  %88 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %3, align 4
  br label %313

90:                                               ; preds = %71
  %91 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call i8* @RosSymAllocMem(i32 %97)
  %99 = bitcast i8* %98 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %99, %struct.TYPE_22__** %8, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %101 = icmp eq %struct.TYPE_22__* null, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %3, align 4
  br label %313

108:                                              ; preds = %90
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = call i32 @RosSymReadFile(i32 %109, %struct.TYPE_22__* %110, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %108
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %121 = call i32 @RosSymFreeMem(%struct.TYPE_22__* %120)
  %122 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %3, align 4
  br label %313

124:                                              ; preds = %108
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %236, %124
  %126 = load i32, i32* %9, align 4
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp ult i32 %126, %129
  br i1 %130, label %131, label %239

131:                                              ; preds = %125
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 47
  br i1 %141, label %142, label %172

142:                                              ; preds = %131
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %143, i8* %149)
  %151 = load i32, i32* @IMAGE_SIZEOF_SHORT_NAME, align 4
  %152 = call i8* @RosSymAllocMem(i32 %151)
  %153 = bitcast i8* %152 to %struct.TYPE_22__*
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  store %struct.TYPE_22__* %153, %struct.TYPE_22__** %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %155, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* @IMAGE_SIZEOF_SHORT_NAME, align 4
  %164 = call i32 @memcpy(%struct.TYPE_22__* %156, i8* %162, i32 %163)
  %165 = load i32, i32* @IMAGE_SIZEOF_SHORT_NAME, align 4
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  store i32 %165, i32* %166, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %167, align 8
  %169 = load i32, i32* @IMAGE_SIZEOF_SHORT_NAME, align 4
  %170 = call i8* @GetStrnlen(%struct.TYPE_22__* %168, i32 %169)
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  store i8* %170, i8** %171, align 8
  br label %228

172:                                              ; preds = %131
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %174 = load i32, i32* %9, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = ptrtoint i8* %178 to i64
  %180 = add nsw i64 %179, 1
  %181 = call i32 @RtlCreateUnicodeStringFromAsciiz(i32* %13, i64 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %172
  br label %292

184:                                              ; preds = %172
  %185 = call i32 @RtlUnicodeStringToInteger(i32* %13, i32 10, i64* %15)
  store i32 %185, i32* %14, align 4
  %186 = call i32 @RtlFreeUnicodeString(i32* %13)
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @NT_SUCCESS(i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %184
  br label %292

191:                                              ; preds = %184
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @SYMBOL_SIZE, align 4
  %196 = mul i32 %194, %195
  %197 = add i32 %193, %196
  %198 = zext i32 %197 to i64
  %199 = load i64, i64* %15, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @RosSymSeekFile(i32 %192, i64 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %191
  br label %292

204:                                              ; preds = %191
  %205 = load i32, i32* @MAXIMUM_DWARF_NAME_SIZE, align 4
  %206 = call i8* @RosSymAllocMem(i32 %205)
  %207 = bitcast i8* %206 to %struct.TYPE_22__*
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  store %struct.TYPE_22__* %207, %struct.TYPE_22__** %208, align 8
  %209 = load i32, i32* %4, align 4
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %210, align 8
  %212 = load i32, i32* @MAXIMUM_DWARF_NAME_SIZE, align 4
  %213 = call i32 @RosSymReadFile(i32 %209, %struct.TYPE_22__* %211, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %204
  br label %292

216:                                              ; preds = %204
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %217, align 8
  %219 = load i32, i32* @MAXIMUM_DWARF_NAME_SIZE, align 4
  %220 = call i8* @GetStrnlen(%struct.TYPE_22__* %218, i32 %219)
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  store i8* %220, i8** %221, align 8
  %222 = load i32, i32* @MAXIMUM_DWARF_NAME_SIZE, align 4
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  store i32 %222, i32* %223, align 8
  %224 = load i32, i32* %9, align 4
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %225, align 8
  %227 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %224, %struct.TYPE_22__* %226)
  br label %228

228:                                              ; preds = %216, %142
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %230 = load i32, i32* %9, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i64 %231
  %233 = call %struct.TYPE_23__* @ANSI_NAME_STRING(%struct.TYPE_22__* %232)
  %234 = bitcast %struct.TYPE_23__* %233 to i8*
  %235 = bitcast %struct.TYPE_23__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %234, i8* align 8 %235, i64 24, i1 false)
  br label %236

236:                                              ; preds = %228
  %237 = load i32, i32* %9, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %9, align 4
  br label %125

239:                                              ; preds = %125
  %240 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %241 = call i8* @RosSymAllocMem(i32 56)
  %242 = bitcast i8* %241 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %242, %struct.TYPE_21__** %16, align 8
  %243 = load i32, i32* %4, align 4
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 11
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* @peget2, align 4
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 10
  store i32 %246, i32* %248, align 8
  %249 = load i32, i32* @peget4, align 4
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 9
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* @peget8, align 4
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 8
  store i32 %252, i32* %254, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 7
  store %struct.TYPE_22__* %260, %struct.TYPE_22__** %262, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 5
  store i32 %265, i32* %267, align 4
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 6
  store i32 %265, i32* %269, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 3
  store i32 %277, i32* %279, align 4
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 2
  store i32 %282, i32* %284, align 8
  %285 = load i32, i32* @loaddisksection, align 4
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 1
  store i32 %285, i32* %287, align 4
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %289 = call i32 @dwarfopen(%struct.TYPE_21__* %288)
  %290 = load i32*, i32** %5, align 8
  store i32 %289, i32* %290, align 4
  %291 = load i32, i32* @TRUE, align 4
  store i32 %291, i32* %3, align 4
  br label %313

292:                                              ; preds = %215, %203, %190, %183
  store i32 0, i32* %9, align 4
  br label %293

293:                                              ; preds = %306, %292
  %294 = load i32, i32* %9, align 4
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = icmp ult i32 %294, %297
  br i1 %298, label %299, label %309

299:                                              ; preds = %293
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %301 = load i32, i32* %9, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i64 %302
  %304 = call %struct.TYPE_23__* @ANSI_NAME_STRING(%struct.TYPE_22__* %303)
  %305 = call i32 @RtlFreeAnsiString(%struct.TYPE_23__* %304)
  br label %306

306:                                              ; preds = %299
  %307 = load i32, i32* %9, align 4
  %308 = add i32 %307, 1
  store i32 %308, i32* %9, align 4
  br label %293

309:                                              ; preds = %293
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %311 = call i32 @RosSymFreeMem(%struct.TYPE_22__* %310)
  %312 = load i32, i32* @FALSE, align 4
  store i32 %312, i32* %3, align 4
  br label %313

313:                                              ; preds = %309, %239, %119, %102, %87, %68, %56, %50, %43, %34, %27, %20
  %314 = load i32, i32* %3, align 4
  ret i32 %314
}

declare dso_local i32 @RosSymSeekFile(i32, i64) #1

declare dso_local i32 @werrstr(i8*, ...) #1

declare dso_local i32 @RosSymReadFile(i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @ROSSYM_IS_VALID_DOS_HEADER(%struct.TYPE_22__*) #1

declare dso_local i32 @ROSSYM_IS_VALID_NT_HEADERS(%struct.TYPE_22__*) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @IMAGE_FIRST_SECTION(%struct.TYPE_22__*) #1

declare dso_local i8* @RosSymAllocMem(i32) #1

declare dso_local i32 @RosSymFreeMem(%struct.TYPE_22__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i8* @GetStrnlen(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @RtlCreateUnicodeStringFromAsciiz(i32*, i64) #1

declare dso_local i32 @RtlUnicodeStringToInteger(i32*, i32, i64*) #1

declare dso_local i32 @RtlFreeUnicodeString(i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local %struct.TYPE_23__* @ANSI_NAME_STRING(%struct.TYPE_22__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dwarfopen(%struct.TYPE_21__*) #1

declare dso_local i32 @RtlFreeAnsiString(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
