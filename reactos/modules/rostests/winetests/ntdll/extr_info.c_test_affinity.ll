; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_affinity.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ProcessBasicInformation = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Expected STATUS_SUCCESS, got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unexpected process affinity\0A\00", align 1
@ProcessAffinityMask = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Expected STATUS_INVALID_PARAMETER, got %08x\0A\00", align 1
@ThreadBasicInformation = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Unexpected thread affinity\0A\00", align 1
@ThreadAffinityMask = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"only one processor, skipping affinity testing\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Cannot test thread affinity mask for 'all processors' flag\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_affinity() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = call i32 @GetSystemInfo(%struct.TYPE_8__* %6)
  %8 = call i32 (...) @GetCurrentProcess()
  %9 = load i32, i32* @ProcessBasicInformation, align 4
  %10 = call i64 @pNtQueryInformationProcess(i32 %8, i32 %9, %struct.TYPE_9__* %2, i32 4, i32* null)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @STATUS_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %1, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = icmp eq i32 %19, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* %3, align 4
  %30 = call i32 (...) @GetCurrentProcess()
  %31 = load i32, i32* @ProcessAffinityMask, align 4
  %32 = call i64 @pNtSetInformationProcess(i32 %30, i32 %31, i32* %3, i32 4)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %1, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  store i32 0, i32* %3, align 4
  %39 = call i32 (...) @GetCurrentProcess()
  %40 = load i32, i32* @ProcessAffinityMask, align 4
  %41 = call i64 @pNtSetInformationProcess(i32 %39, i32 %40, i32* %3, i32 4)
  store i64 %41, i64* %1, align 8
  %42 = load i64, i64* %1, align 8
  %43 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %1, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = call i32 (...) @GetCurrentThread()
  %49 = load i32, i32* @ThreadBasicInformation, align 4
  %50 = call i64 @pNtQueryInformationThread(i32 %48, i32 %49, %struct.TYPE_7__* %5, i32 4, i32* null)
  store i64 %50, i64* %1, align 8
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* @STATUS_SUCCESS, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %1, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 1, %60
  %62 = sub nsw i32 %61, 1
  %63 = icmp eq i32 %58, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 1, %67
  store i32 %68, i32* %4, align 4
  %69 = call i32 (...) @GetCurrentThread()
  %70 = load i32, i32* @ThreadAffinityMask, align 4
  %71 = call i64 @pNtSetInformationThread(i32 %69, i32 %70, i32* %4, i32 4)
  store i64 %71, i64* %1, align 8
  %72 = load i64, i64* %1, align 8
  %73 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %1, align 8
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  store i32 0, i32* %4, align 4
  %78 = call i32 (...) @GetCurrentThread()
  %79 = load i32, i32* @ThreadAffinityMask, align 4
  %80 = call i64 @pNtSetInformationThread(i32 %78, i32 %79, i32* %4, i32 4)
  store i64 %80, i64* %1, align 8
  %81 = load i64, i64* %1, align 8
  %82 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %1, align 8
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  store i32 1, i32* %4, align 4
  %87 = call i32 (...) @GetCurrentThread()
  %88 = load i32, i32* @ThreadAffinityMask, align 4
  %89 = call i64 @pNtSetInformationThread(i32 %87, i32 %88, i32* %4, i32 4)
  store i64 %89, i64* %1, align 8
  %90 = load i64, i64* %1, align 8
  %91 = load i64, i64* @STATUS_SUCCESS, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i64, i64* %1, align 8
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %94)
  %96 = call i32 (...) @GetCurrentThread()
  %97 = load i32, i32* @ThreadBasicInformation, align 4
  %98 = call i64 @pNtQueryInformationThread(i32 %96, i32 %97, %struct.TYPE_7__* %5, i32 4, i32* null)
  store i64 %98, i64* %1, align 8
  %99 = load i64, i64* %1, align 8
  %100 = load i64, i64* @STATUS_SUCCESS, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %1, align 8
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %103)
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1
  %108 = zext i1 %107 to i32
  %109 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  %110 = call i32 (...) @GetCurrentThread()
  %111 = load i32, i32* @ThreadAffinityMask, align 4
  %112 = call i64 @pNtSetInformationThread(i32 %110, i32 %111, i32* %4, i32 4)
  store i64 %112, i64* %1, align 8
  %113 = load i64, i64* %1, align 8
  %114 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i64 @broken(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %0
  %120 = load i64, i64* %1, align 8
  %121 = load i64, i64* @STATUS_SUCCESS, align 8
  %122 = icmp eq i64 %120, %121
  br label %123

123:                                              ; preds = %119, %0
  %124 = phi i1 [ true, %0 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %1, align 8
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %126)
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sle i32 %129, 1
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = call i32 @skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %246

133:                                              ; preds = %123
  %134 = load i64, i64* %1, align 8
  %135 = load i64, i64* @STATUS_SUCCESS, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %165

137:                                              ; preds = %133
  %138 = call i32 (...) @GetCurrentThread()
  %139 = load i32, i32* @ThreadBasicInformation, align 4
  %140 = call i64 @pNtQueryInformationThread(i32 %138, i32 %139, %struct.TYPE_7__* %5, i32 4, i32* null)
  store i64 %140, i64* %1, align 8
  %141 = load i64, i64* %1, align 8
  %142 = load i64, i64* @STATUS_SUCCESS, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %1, align 8
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %145)
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 1
  %150 = zext i1 %149 to i32
  %151 = call i64 @broken(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %137
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 1, %157
  %159 = sub nsw i32 %158, 1
  %160 = icmp eq i32 %155, %159
  br label %161

161:                                              ; preds = %153, %137
  %162 = phi i1 [ true, %137 ], [ %160, %153 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %167

165:                                              ; preds = %133
  %166 = call i32 @skip(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %161
  store i32 2, i32* %3, align 4
  %168 = call i32 (...) @GetCurrentProcess()
  %169 = load i32, i32* @ProcessAffinityMask, align 4
  %170 = call i64 @pNtSetInformationProcess(i32 %168, i32 %169, i32* %3, i32 4)
  store i64 %170, i64* %1, align 8
  %171 = load i64, i64* %1, align 8
  %172 = load i64, i64* @STATUS_SUCCESS, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = load i64, i64* %1, align 8
  %176 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %175)
  %177 = call i32 (...) @GetCurrentProcess()
  %178 = load i32, i32* @ProcessBasicInformation, align 4
  %179 = call i64 @pNtQueryInformationProcess(i32 %177, i32 %178, %struct.TYPE_9__* %2, i32 4, i32* null)
  store i64 %179, i64* %1, align 8
  %180 = load i64, i64* %1, align 8
  %181 = load i64, i64* @STATUS_SUCCESS, align 8
  %182 = icmp eq i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load i64, i64* %1, align 8
  %185 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %184)
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %3, align 4
  %188 = load i32, i32* %3, align 4
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i32
  %191 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %192 = call i32 (...) @GetCurrentThread()
  %193 = load i32, i32* @ThreadBasicInformation, align 4
  %194 = call i64 @pNtQueryInformationThread(i32 %192, i32 %193, %struct.TYPE_7__* %5, i32 4, i32* null)
  store i64 %194, i64* %1, align 8
  %195 = load i64, i64* %1, align 8
  %196 = load i64, i64* @STATUS_SUCCESS, align 8
  %197 = icmp eq i64 %195, %196
  %198 = zext i1 %197 to i32
  %199 = load i64, i64* %1, align 8
  %200 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %199)
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i32
  %205 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  %206 = call i32 (...) @GetCurrentThread()
  %207 = load i32, i32* @ThreadAffinityMask, align 4
  %208 = call i64 @pNtSetInformationThread(i32 %206, i32 %207, i32* %4, i32 4)
  store i64 %208, i64* %1, align 8
  %209 = load i64, i64* %1, align 8
  %210 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  %211 = icmp eq i64 %209, %210
  %212 = zext i1 %211 to i32
  %213 = load i64, i64* %1, align 8
  %214 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %213)
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = shl i32 1, %216
  %218 = sub nsw i32 %217, 1
  store i32 %218, i32* %3, align 4
  %219 = call i32 (...) @GetCurrentProcess()
  %220 = load i32, i32* @ProcessAffinityMask, align 4
  %221 = call i64 @pNtSetInformationProcess(i32 %219, i32 %220, i32* %3, i32 4)
  store i64 %221, i64* %1, align 8
  %222 = load i64, i64* %1, align 8
  %223 = load i64, i64* @STATUS_SUCCESS, align 8
  %224 = icmp eq i64 %222, %223
  %225 = zext i1 %224 to i32
  %226 = load i64, i64* %1, align 8
  %227 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %226)
  %228 = call i32 (...) @GetCurrentThread()
  %229 = load i32, i32* @ThreadBasicInformation, align 4
  %230 = call i64 @pNtQueryInformationThread(i32 %228, i32 %229, %struct.TYPE_7__* %5, i32 4, i32* null)
  store i64 %230, i64* %1, align 8
  %231 = load i64, i64* %1, align 8
  %232 = load i64, i64* @STATUS_SUCCESS, align 8
  %233 = icmp eq i64 %231, %232
  %234 = zext i1 %233 to i32
  %235 = load i64, i64* %1, align 8
  %236 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %235)
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = shl i32 1, %240
  %242 = sub nsw i32 %241, 1
  %243 = icmp eq i32 %238, %242
  %244 = zext i1 %243 to i32
  %245 = call i32 (i32, i8*, ...) @ok(i32 %244, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %246

246:                                              ; preds = %167, %131
  ret void
}

declare dso_local i32 @GetSystemInfo(%struct.TYPE_8__*) #1

declare dso_local i64 @pNtQueryInformationProcess(i32, i32, %struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @pNtSetInformationProcess(i32, i32, i32*, i32) #1

declare dso_local i64 @pNtQueryInformationThread(i32, i32, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @GetCurrentThread(...) #1

declare dso_local i64 @pNtSetInformationThread(i32, i32, i32*, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
