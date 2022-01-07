; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_fromfile.c_RosSymCreateFromFile.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym/extr_fromfile.c_RosSymCreateFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i8*, i64, i64, %struct.TYPE_14__, i32, i64 }
%struct.TYPE_14__ = type { i32 }

@IMAGE_SIZEOF_SHORT_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to read DOS header\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Image doesn't have a valid DOS header\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed seeking to NT headers\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to read NT headers\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Image doesn't have a valid PE header\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed seeking to section headers\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Failed to allocate memory for %u section headers\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to read section headers\0A\00", align 1
@ROSSYM_SECTION_NAME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"No %s section found\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed seeking to section data\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed to read rossym header\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Invalid ROSSYM_HEADER\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Failed to allocate memory for rossym\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Failed to read rossym headers\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RosSymCreateFromFile(i32 %0, %struct.TYPE_15__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__**, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %5, align 8
  %15 = load i32, i32* @IMAGE_SIZEOF_SHORT_NAME, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @RosSymReadFile(i32 %19, %struct.TYPE_15__* %6, i32 64)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

25:                                               ; preds = %2
  %26 = call i32 @ROSSYM_IS_VALID_DOS_HEADER(%struct.TYPE_15__* %6)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 10
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @RosSymSeekFile(i32 %32, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @RosSymReadFile(i32 %41, %struct.TYPE_15__* %7, i32 64)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

47:                                               ; preds = %40
  %48 = call i32 @ROSSYM_IS_VALID_NT_HEADERS(%struct.TYPE_15__* %7)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @IMAGE_FIRST_SECTION(%struct.TYPE_15__* %7)
  %56 = inttoptr i64 %55 to i8*
  %57 = bitcast %struct.TYPE_15__* %7 to i8*
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 10
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %60, %62
  %64 = call i32 @RosSymSeekFile(i32 %54, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %53
  %67 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call %struct.TYPE_15__* @RosSymAllocMem(i32 %75)
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %8, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %78 = icmp eq %struct.TYPE_15__* null, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

85:                                               ; preds = %69
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @RosSymReadFile(i32 %86, %struct.TYPE_15__* %87, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %85
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %98 = call i32 @RosSymFreeMem(%struct.TYPE_15__* %97)
  %99 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

101:                                              ; preds = %85
  %102 = load i32, i32* @ROSSYM_SECTION_NAME, align 4
  %103 = load i32, i32* @IMAGE_SIZEOF_SHORT_NAME, align 4
  %104 = call i32 @strncpy(i8* %18, i32 %102, i32 %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %105, %struct.TYPE_15__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %123, %101
  %107 = load i32, i32* %10, align 4
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ult i32 %107, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %106
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IMAGE_SIZEOF_SHORT_NAME, align 4
  %117 = call i64 @memcmp(i8* %18, i32 %115, i32 %116)
  %118 = icmp eq i64 0, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %126

120:                                              ; preds = %112
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 1
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %9, align 8
  br label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %10, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %106

126:                                              ; preds = %119, %106
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = icmp ule i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %134 = call i32 @RosSymFreeMem(%struct.TYPE_15__* %133)
  %135 = load i32, i32* @ROSSYM_SECTION_NAME, align 4
  %136 = call i32 @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

138:                                              ; preds = %126
  %139 = load i32, i32* %4, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @RosSymSeekFile(i32 %139, i64 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %138
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %147 = call i32 @RosSymFreeMem(%struct.TYPE_15__* %146)
  %148 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %149 = load i32, i32* @FALSE, align 4
  store i32 %149, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

150:                                              ; preds = %138
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %152 = call i32 @RosSymFreeMem(%struct.TYPE_15__* %151)
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @RosSymReadFile(i32 %153, %struct.TYPE_15__* %13, i32 64)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %150
  %157 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %158 = load i32, i32* @FALSE, align 4
  store i32 %158, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = icmp ult i64 %162, 64
  br i1 %163, label %179, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %168, %170
  %172 = icmp slt i32 %166, %171
  br i1 %172, label %179, label %173

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = urem i64 %176, 4
  %178 = icmp ne i64 0, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %173, %164, %159
  %180 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %181 = load i32, i32* @FALSE, align 4
  store i32 %181, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

182:                                              ; preds = %173
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 -60, %185
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = add i64 %186, %189
  %191 = add i64 %190, 1
  %192 = trunc i64 %191 to i32
  %193 = call %struct.TYPE_15__* @RosSymAllocMem(i32 %192)
  %194 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  store %struct.TYPE_15__* %193, %struct.TYPE_15__** %194, align 8
  %195 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %195, align 8
  %197 = icmp eq %struct.TYPE_15__* null, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %182
  %199 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  %200 = load i32, i32* @FALSE, align 4
  store i32 %200, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

201:                                              ; preds = %182
  %202 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %202, align 8
  %204 = bitcast %struct.TYPE_15__* %203 to i8*
  %205 = getelementptr inbounds i8, i8* %204, i64 4
  %206 = getelementptr inbounds i8, i8* %205, i64 -64
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %206, i64 %209
  %211 = ptrtoint i8* %210 to i64
  %212 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 6
  store i64 %211, i64* %214, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = udiv i64 %217, 4
  %219 = trunc i64 %218 to i32
  %220 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 4
  store i32 %219, i32* %222, align 8
  %223 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %223, align 8
  %225 = bitcast %struct.TYPE_15__* %224 to i8*
  %226 = getelementptr inbounds i8, i8* %225, i64 4
  %227 = getelementptr inbounds i8, i8* %226, i64 -64
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %227, i64 %230
  %232 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 5
  store i8* %231, i8** %234, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 3
  store i32 %236, i32* %239, align 4
  %240 = load i32, i32* %4, align 4
  %241 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i64 1
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %245, %247
  %249 = sext i32 %248 to i64
  %250 = sub i64 %249, 64
  %251 = trunc i64 %250 to i32
  %252 = call i32 @RosSymReadFile(i32 %240, %struct.TYPE_15__* %243, i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %201
  %255 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %256 = load i32, i32* @FALSE, align 4
  store i32 %256, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

257:                                              ; preds = %201
  %258 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 5
  %261 = load i8*, i8** %260, align 8
  %262 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %261, i64 %266
  store i8 0, i8* %267, align 1
  %268 = load i32, i32* @TRUE, align 4
  store i32 %268, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

269:                                              ; preds = %257, %254, %198, %179, %156, %145, %132, %96, %79, %66, %50, %44, %37, %28, %22
  %270 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %270)
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RosSymReadFile(i32, %struct.TYPE_15__*, i32) #2

declare dso_local i32 @DPRINT1(i8*, ...) #2

declare dso_local i32 @ROSSYM_IS_VALID_DOS_HEADER(%struct.TYPE_15__*) #2

declare dso_local i32 @RosSymSeekFile(i32, i64) #2

declare dso_local i32 @ROSSYM_IS_VALID_NT_HEADERS(%struct.TYPE_15__*) #2

declare dso_local i64 @IMAGE_FIRST_SECTION(%struct.TYPE_15__*) #2

declare dso_local %struct.TYPE_15__* @RosSymAllocMem(i32) #2

declare dso_local i32 @RosSymFreeMem(%struct.TYPE_15__*) #2

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i64 @memcmp(i8*, i32, i32) #2

declare dso_local i32 @DPRINT(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
