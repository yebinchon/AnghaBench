; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pnpdump/extr_pnpdump.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pnpdump/extr_pnpdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_18__ = type { i64, i32 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"/S\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/s\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"This utility prints the PnP-nodes from the registry\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\22/s\22 prevents the \22Press any key\22\0A\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to get PnP-BIOS key\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Found PnP-BIOS key\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Error: malloc() failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Configuration Data\00", align 1
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [37 x i8] c"Error: realloc() of %u bytes failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Failed to read 'Configuration Data' value\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Invalid resource count!\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Signature '%.4s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"$PnP\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Error: Invalid PnP signature\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Error: Device node size is zero!\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Node: %x  Size %hu (0x%hx)\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"\0A Press any key...\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %7, align 8
  %16 = load i64, i64* @TRUE, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25, %19
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %31, %25, %2
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %248

45:                                               ; preds = %36, %33
  %46 = call i64 @GetPnpKey(i64* %7)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %248

52:                                               ; preds = %45
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  store i32 2048, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call %struct.TYPE_19__* @malloc(i32 %58)
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %11, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %61 = icmp eq %struct.TYPE_19__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @RegCloseKey(i64 %64)
  store i32 0, i32* %3, align 4
  br label %248

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %88, %66
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %70 = ptrtoint %struct.TYPE_19__* %69 to i32
  %71 = call i64 @RegQueryValueEx(i64 %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* null, i32* %8, i32 %70, i32* %9)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @ERROR_MORE_DATA, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call %struct.TYPE_19__* @realloc(%struct.TYPE_19__* %76, i32 %77)
  store %struct.TYPE_19__* %78, %struct.TYPE_19__** %11, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %80 = icmp eq %struct.TYPE_19__* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %82)
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @RegCloseKey(i64 %84)
  store i32 0, i32* %3, align 4
  br label %248

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %67
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @ERROR_MORE_DATA, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %67, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @ERROR_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %99 = call i32 @free(%struct.TYPE_19__* %98)
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @RegCloseKey(i64 %100)
  store i32 0, i32* %3, align 4
  br label %248

102:                                              ; preds = %92
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @RegCloseKey(i64 %103)
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %113 = call i32 @free(%struct.TYPE_19__* %112)
  store i32 0, i32* %3, align 4
  br label %248

114:                                              ; preds = %102
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %15, align 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i64 0
  %129 = ptrtoint %struct.TYPE_15__* %128 to i64
  %130 = add i64 %129, 4
  %131 = inttoptr i64 %130 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %131, %struct.TYPE_17__** %12, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %134)
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = ptrtoint i8* %138 to i32
  %140 = call i64 @strncmp(i32 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 4)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %114
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %145 = call i32 @free(%struct.TYPE_19__* %144)
  store i32 0, i32* %3, align 4
  br label %248

146:                                              ; preds = %114
  store i32 4, i32* %14, align 4
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %148 = ptrtoint %struct.TYPE_17__* %147 to i32
  %149 = sext i32 %148 to i64
  %150 = add i64 %149, 4
  %151 = inttoptr i64 %150 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %151, %struct.TYPE_18__** %13, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %248

158:                                              ; preds = %146
  br label %159

159:                                              ; preds = %169, %158
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %195

163:                                              ; preds = %159
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %195

169:                                              ; preds = %163
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %172, i64 %175, i64 %178)
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %14, align 4
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %188 = ptrtoint %struct.TYPE_18__* %187 to i32
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %189, %192
  %194 = inttoptr i64 %193 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %194, %struct.TYPE_18__** %13, align 8
  br label %159

195:                                              ; preds = %168, %159
  %196 = load i64, i64* %10, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %200 = call i32 (...) @getch()
  br label %203

201:                                              ; preds = %195
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %198
  store i32 4, i32* %14, align 4
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %205 = ptrtoint %struct.TYPE_17__* %204 to i32
  %206 = sext i32 %205 to i64
  %207 = add i64 %206, 4
  %208 = inttoptr i64 %207 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %208, %struct.TYPE_18__** %13, align 8
  br label %209

209:                                              ; preds = %229, %203
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %15, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %245

213:                                              ; preds = %209
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %245

219:                                              ; preds = %213
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %221 = call i32 @PrintDeviceData(%struct.TYPE_18__* %220)
  %222 = load i64, i64* %10, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %226 = call i32 (...) @getch()
  br label %229

227:                                              ; preds = %219
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %229

229:                                              ; preds = %227, %224
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %14, align 4
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %238 = ptrtoint %struct.TYPE_18__* %237 to i32
  %239 = sext i32 %238 to i64
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %239, %242
  %244 = inttoptr i64 %243 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %244, %struct.TYPE_18__** %13, align 8
  br label %209

245:                                              ; preds = %218, %209
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %247 = call i32 @free(%struct.TYPE_19__* %246)
  store i32 0, i32* %3, align 4
  br label %248

248:                                              ; preds = %245, %156, %142, %110, %96, %81, %62, %50, %42
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @GetPnpKey(i64*) #1

declare dso_local %struct.TYPE_19__* @malloc(i32) #1

declare dso_local i32 @RegCloseKey(i64) #1

declare dso_local i64 @RegQueryValueEx(i64, i8*, i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @realloc(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_19__*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @getch(...) #1

declare dso_local i32 @PrintDeviceData(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
