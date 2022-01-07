; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_om.c_test_all_kernel_objects.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_om.c_test_all_kernel_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"\\DosDevices\00", align 1
@GENERIC_ALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%u: NtCreateMutant failed %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%u: NtOpenMutant failed %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%u: NtCreateSemaphore failed %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%u: NtOpenSemaphore failed %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%u: NtCreateEvent failed %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%u: NtOpenEvent failed %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"%u: NtCreateKeyedEvent failed %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"%u: NtOpenKeyedEvent failed %x\0A\00", align 1
@NotificationTimer = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"%u: NtCreateTimer failed %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%u: NtOpenTimer failed %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"%u: NtCreateCompletion failed %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"%u: NtOpenCompletion failed %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"%u: NtCreateJobObject failed %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"%u: NtOpenJobObject failed %x\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"%u: NtCreateDirectoryObject failed %x\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"%u: NtOpenDirectoryObject failed %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"%u: NtCreateSymbolicLinkObject failed %x\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"%u: NtOpenSymbolicLinkObject failed %x\0A\00", align 1
@SECTION_MAP_WRITE = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@SEC_COMMIT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [31 x i8] c"%u: NtCreateSection failed %x\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"%u: NtOpenSection failed %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i64)* @test_all_kernel_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_all_kernel_objects(i32 %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = call i32 @pRtlCreateUnicodeStringFromAsciiz(i32* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 4096, i32* %16, align 4
  %17 = load i32, i32* @GENERIC_ALL, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i64 @pNtCreateMutant(i32* %13, i32 %17, i32* %18, i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %25, i64 %26)
  %28 = load i32, i32* @GENERIC_ALL, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @pNtOpenMutant(i32* %14, i32 %28, i32* %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %35, i64 %36)
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @pNtClose(i32 %41)
  br label %43

43:                                               ; preds = %40, %4
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @pNtClose(i32 %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* @GENERIC_ALL, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @pNtCreateSemaphore(i32* %13, i32 %50, i32* %51, i32 1, i32 2)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %5, align 4
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %57, i64 %58)
  %60 = load i32, i32* @GENERIC_ALL, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @pNtOpenSemaphore(i32* %14, i32 %60, i32* %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %5, align 4
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %67, i64 %68)
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %49
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @pNtClose(i32 %73)
  br label %75

75:                                               ; preds = %72, %49
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @pNtClose(i32 %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* @GENERIC_ALL, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = call i64 @pNtCreateEvent(i32* %13, i32 %82, i32* %83, i32 1, i32 0)
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %5, align 4
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %89, i64 %90)
  %92 = load i32, i32* @GENERIC_ALL, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = call i64 @pNtOpenEvent(i32* %14, i32 %92, i32* %93)
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %5, align 4
  %100 = load i64, i64* %12, align 8
  %101 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %99, i64 %100)
  %102 = load i64, i64* %11, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %81
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @pNtClose(i32 %105)
  br label %107

107:                                              ; preds = %104, %81
  %108 = load i64, i64* %12, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @pNtClose(i32 %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i32, i32* @GENERIC_ALL, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = call i64 @pNtCreateKeyedEvent(i32* %13, i32 %114, i32* %115, i32 0)
  store i64 %116, i64* %11, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %7, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %5, align 4
  %122 = load i64, i64* %11, align 8
  %123 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %121, i64 %122)
  %124 = load i32, i32* @GENERIC_ALL, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = call i64 @pNtOpenKeyedEvent(i32* %14, i32 %124, i32* %125)
  store i64 %126, i64* %12, align 8
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %8, align 8
  %129 = icmp eq i64 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %5, align 4
  %132 = load i64, i64* %12, align 8
  %133 = call i32 @ok(i32 %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %131, i64 %132)
  %134 = load i64, i64* %11, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %113
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @pNtClose(i32 %137)
  br label %139

139:                                              ; preds = %136, %113
  %140 = load i64, i64* %12, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @pNtClose(i32 %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, i32* @GENERIC_ALL, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* @NotificationTimer, align 4
  %149 = call i64 @pNtCreateTimer(i32* %13, i32 %146, i32* %147, i32 %148)
  store i64 %149, i64* %11, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* %7, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %5, align 4
  %155 = load i64, i64* %11, align 8
  %156 = call i32 @ok(i32 %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %154, i64 %155)
  %157 = load i32, i32* @GENERIC_ALL, align 4
  %158 = load i32*, i32** %6, align 8
  %159 = call i64 @pNtOpenTimer(i32* %14, i32 %157, i32* %158)
  store i64 %159, i64* %12, align 8
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* %8, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %5, align 4
  %165 = load i64, i64* %12, align 8
  %166 = call i32 @ok(i32 %163, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %164, i64 %165)
  %167 = load i64, i64* %11, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %145
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @pNtClose(i32 %170)
  br label %172

172:                                              ; preds = %169, %145
  %173 = load i64, i64* %12, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @pNtClose(i32 %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* @GENERIC_ALL, align 4
  %180 = load i32*, i32** %6, align 8
  %181 = call i64 @pNtCreateIoCompletion(i32* %13, i32 %179, i32* %180, i32 0)
  store i64 %181, i64* %11, align 8
  %182 = load i64, i64* %11, align 8
  %183 = load i64, i64* %7, align 8
  %184 = icmp eq i64 %182, %183
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %5, align 4
  %187 = load i64, i64* %11, align 8
  %188 = call i32 @ok(i32 %185, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %186, i64 %187)
  %189 = load i32, i32* @GENERIC_ALL, align 4
  %190 = load i32*, i32** %6, align 8
  %191 = call i64 @pNtOpenIoCompletion(i32* %14, i32 %189, i32* %190)
  store i64 %191, i64* %12, align 8
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* %8, align 8
  %194 = icmp eq i64 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* %5, align 4
  %197 = load i64, i64* %12, align 8
  %198 = call i32 @ok(i32 %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %196, i64 %197)
  %199 = load i64, i64* %11, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %178
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @pNtClose(i32 %202)
  br label %204

204:                                              ; preds = %201, %178
  %205 = load i64, i64* %12, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* %14, align 4
  %209 = call i32 @pNtClose(i32 %208)
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i32, i32* @GENERIC_ALL, align 4
  %212 = load i32*, i32** %6, align 8
  %213 = call i64 @pNtCreateJobObject(i32* %13, i32 %211, i32* %212)
  store i64 %213, i64* %11, align 8
  %214 = load i64, i64* %11, align 8
  %215 = load i64, i64* %7, align 8
  %216 = icmp eq i64 %214, %215
  %217 = zext i1 %216 to i32
  %218 = load i32, i32* %5, align 4
  %219 = load i64, i64* %11, align 8
  %220 = call i32 @ok(i32 %217, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %218, i64 %219)
  %221 = load i32, i32* @GENERIC_ALL, align 4
  %222 = load i32*, i32** %6, align 8
  %223 = call i64 @pNtOpenJobObject(i32* %14, i32 %221, i32* %222)
  store i64 %223, i64* %12, align 8
  %224 = load i64, i64* %12, align 8
  %225 = load i64, i64* %8, align 8
  %226 = icmp eq i64 %224, %225
  %227 = zext i1 %226 to i32
  %228 = load i32, i32* %5, align 4
  %229 = load i64, i64* %12, align 8
  %230 = call i32 @ok(i32 %227, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %228, i64 %229)
  %231 = load i64, i64* %11, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %210
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @pNtClose(i32 %234)
  br label %236

236:                                              ; preds = %233, %210
  %237 = load i64, i64* %12, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %236
  %240 = load i32, i32* %14, align 4
  %241 = call i32 @pNtClose(i32 %240)
  br label %242

242:                                              ; preds = %239, %236
  %243 = load i32, i32* @GENERIC_ALL, align 4
  %244 = load i32*, i32** %6, align 8
  %245 = call i64 @pNtCreateDirectoryObject(i32* %13, i32 %243, i32* %244)
  store i64 %245, i64* %11, align 8
  %246 = load i64, i64* %11, align 8
  %247 = load i64, i64* %7, align 8
  %248 = icmp eq i64 %246, %247
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* %5, align 4
  %251 = load i64, i64* %11, align 8
  %252 = call i32 @ok(i32 %249, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %250, i64 %251)
  %253 = load i32, i32* @GENERIC_ALL, align 4
  %254 = load i32*, i32** %6, align 8
  %255 = call i64 @pNtOpenDirectoryObject(i32* %14, i32 %253, i32* %254)
  store i64 %255, i64* %12, align 8
  %256 = load i64, i64* %12, align 8
  %257 = load i64, i64* %8, align 8
  %258 = icmp eq i64 %256, %257
  %259 = zext i1 %258 to i32
  %260 = load i32, i32* %5, align 4
  %261 = load i64, i64* %12, align 8
  %262 = call i32 @ok(i32 %259, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %260, i64 %261)
  %263 = load i64, i64* %11, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %242
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @pNtClose(i32 %266)
  br label %268

268:                                              ; preds = %265, %242
  %269 = load i64, i64* %12, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %14, align 4
  %273 = call i32 @pNtClose(i32 %272)
  br label %274

274:                                              ; preds = %271, %268
  %275 = load i32, i32* @GENERIC_ALL, align 4
  %276 = load i32*, i32** %6, align 8
  %277 = call i64 @pNtCreateSymbolicLinkObject(i32* %13, i32 %275, i32* %276, i32* %9)
  store i64 %277, i64* %11, align 8
  %278 = load i64, i64* %11, align 8
  %279 = load i64, i64* %7, align 8
  %280 = icmp eq i64 %278, %279
  %281 = zext i1 %280 to i32
  %282 = load i32, i32* %5, align 4
  %283 = load i64, i64* %11, align 8
  %284 = call i32 @ok(i32 %281, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 %282, i64 %283)
  %285 = load i32, i32* @GENERIC_ALL, align 4
  %286 = load i32*, i32** %6, align 8
  %287 = call i64 @pNtOpenSymbolicLinkObject(i32* %14, i32 %285, i32* %286)
  store i64 %287, i64* %12, align 8
  %288 = load i64, i64* %12, align 8
  %289 = load i64, i64* %8, align 8
  %290 = icmp eq i64 %288, %289
  %291 = zext i1 %290 to i32
  %292 = load i32, i32* %5, align 4
  %293 = load i64, i64* %12, align 8
  %294 = call i32 @ok(i32 %291, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i32 %292, i64 %293)
  %295 = load i64, i64* %11, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %274
  %298 = load i32, i32* %13, align 4
  %299 = call i32 @pNtClose(i32 %298)
  br label %300

300:                                              ; preds = %297, %274
  %301 = load i64, i64* %12, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* %14, align 4
  %305 = call i32 @pNtClose(i32 %304)
  br label %306

306:                                              ; preds = %303, %300
  %307 = load i32, i32* @SECTION_MAP_WRITE, align 4
  %308 = load i32*, i32** %6, align 8
  %309 = load i32, i32* @PAGE_READWRITE, align 4
  %310 = load i32, i32* @SEC_COMMIT, align 4
  %311 = call i64 @pNtCreateSection(i32* %13, i32 %307, i32* %308, %struct.TYPE_3__* %10, i32 %309, i32 %310, i32 0)
  store i64 %311, i64* %11, align 8
  %312 = load i64, i64* %11, align 8
  %313 = load i64, i64* %7, align 8
  %314 = icmp eq i64 %312, %313
  %315 = zext i1 %314 to i32
  %316 = load i32, i32* %5, align 4
  %317 = load i64, i64* %11, align 8
  %318 = call i32 @ok(i32 %315, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 %316, i64 %317)
  %319 = load i32, i32* @SECTION_MAP_WRITE, align 4
  %320 = load i32*, i32** %6, align 8
  %321 = call i64 @pNtOpenSection(i32* %14, i32 %319, i32* %320)
  store i64 %321, i64* %12, align 8
  %322 = load i64, i64* %12, align 8
  %323 = load i64, i64* %8, align 8
  %324 = icmp eq i64 %322, %323
  %325 = zext i1 %324 to i32
  %326 = load i32, i32* %5, align 4
  %327 = load i64, i64* %12, align 8
  %328 = call i32 @ok(i32 %325, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 %326, i64 %327)
  %329 = load i64, i64* %11, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %334, label %331

331:                                              ; preds = %306
  %332 = load i32, i32* %13, align 4
  %333 = call i32 @pNtClose(i32 %332)
  br label %334

334:                                              ; preds = %331, %306
  %335 = load i64, i64* %12, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %334
  %338 = load i32, i32* %14, align 4
  %339 = call i32 @pNtClose(i32 %338)
  br label %340

340:                                              ; preds = %337, %334
  %341 = call i32 @pRtlFreeUnicodeString(i32* %9)
  ret void
}

declare dso_local i32 @pRtlCreateUnicodeStringFromAsciiz(i32*, i8*) #1

declare dso_local i64 @pNtCreateMutant(i32*, i32, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i64) #1

declare dso_local i64 @pNtOpenMutant(i32*, i32, i32*) #1

declare dso_local i32 @pNtClose(i32) #1

declare dso_local i64 @pNtCreateSemaphore(i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @pNtOpenSemaphore(i32*, i32, i32*) #1

declare dso_local i64 @pNtCreateEvent(i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @pNtOpenEvent(i32*, i32, i32*) #1

declare dso_local i64 @pNtCreateKeyedEvent(i32*, i32, i32*, i32) #1

declare dso_local i64 @pNtOpenKeyedEvent(i32*, i32, i32*) #1

declare dso_local i64 @pNtCreateTimer(i32*, i32, i32*, i32) #1

declare dso_local i64 @pNtOpenTimer(i32*, i32, i32*) #1

declare dso_local i64 @pNtCreateIoCompletion(i32*, i32, i32*, i32) #1

declare dso_local i64 @pNtOpenIoCompletion(i32*, i32, i32*) #1

declare dso_local i64 @pNtCreateJobObject(i32*, i32, i32*) #1

declare dso_local i64 @pNtOpenJobObject(i32*, i32, i32*) #1

declare dso_local i64 @pNtCreateDirectoryObject(i32*, i32, i32*) #1

declare dso_local i64 @pNtOpenDirectoryObject(i32*, i32, i32*) #1

declare dso_local i64 @pNtCreateSymbolicLinkObject(i32*, i32, i32*, i32*) #1

declare dso_local i64 @pNtOpenSymbolicLinkObject(i32*, i32, i32*) #1

declare dso_local i64 @pNtCreateSection(i32*, i32, i32*, %struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i64 @pNtOpenSection(i32*, i32, i32*) #1

declare dso_local i32 @pRtlFreeUnicodeString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
