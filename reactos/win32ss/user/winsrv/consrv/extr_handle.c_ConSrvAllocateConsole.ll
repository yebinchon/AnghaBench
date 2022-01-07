; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_handle.c_ConSrvAllocateConsole.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_handle.c_ConSrvAllocateConsole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__*, i32, i32*, i32 }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_21__ = type { i8*, i8*, i8*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32*, i32*, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_17__, i32* }
%struct.TYPE_17__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Initialization of console '%S' for process '%S' on desktop '%S'\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i32] [i32 110, i32 47, i32 97, i32 0], align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Console initialization failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to initialize the handles table\0A\00", align 1
@INIT_SUCCESS = common dso_local global i64 0, align 8
@EVENT_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"NtDuplicateObject(InitEvents[INIT_SUCCESS]) failed: %lu\0A\00", align 1
@INIT_FAILURE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"NtDuplicateObject(InitEvents[INIT_FAILURE]) failed: %lu\0A\00", align 1
@DUPLICATE_CLOSE_SOURCE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"NtDuplicateObject(InputWaitHandle) failed: %lu\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CsrProcessIsConsoleApp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConSrvAllocateConsole(%struct.TYPE_20__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_21__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %11, align 8
  %15 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %17 = call i32 @ConSrvFreeHandlesTable(%struct.TYPE_20__* %16)
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  br label %27

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i8* [ %25, %22 ], [ bitcast ([4 x i32]* @.str.1 to i8*), %26 ]
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i8* [ %36, %33 ], [ bitcast ([4 x i32]* @.str.1 to i8*), %37 ]
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  br label %49

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i8* [ %47, %44 ], [ bitcast ([4 x i32]* @.str.1 to i8*), %48 ]
  %51 = call i32 @DPRINT(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %39, i8* %50)
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  %56 = call i32 @ConSrvInitConsole(i32** %13, %struct.TYPE_19__** %14, %struct.TYPE_21__* %52, %struct.TYPE_22__* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @NT_SUCCESS(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  br label %264

63:                                               ; preds = %49
  %64 = load i32*, i32** %13, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @ConSrvInitHandlesTable(%struct.TYPE_20__* %67, %struct.TYPE_19__* %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @NT_SUCCESS(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %63
  %77 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %79 = call i32 @ConSrvDeleteConsole(%struct.TYPE_19__* %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %6, align 4
  br label %264

83:                                               ; preds = %63
  %84 = call i32* (...) @NtCurrentProcess()
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @INIT_SUCCESS, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @INIT_SUCCESS, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* @EVENT_ALL_ACCESS, align 4
  %104 = call i32 @NtDuplicateObject(i32* %84, i32 %90, i32* %95, i32* %102, i32 %103, i32 0, i32 0)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @NT_SUCCESS(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %83
  %109 = load i32, i32* %12, align 4
  %110 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %112 = call i32 @ConSrvFreeHandlesTable(%struct.TYPE_20__* %111)
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %114 = call i32 @ConSrvDeleteConsole(%struct.TYPE_19__* %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 2
  store i32* null, i32** %116, align 8
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %6, align 4
  br label %264

118:                                              ; preds = %83
  %119 = call i32* (...) @NtCurrentProcess()
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @INIT_FAILURE, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* @INIT_FAILURE, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* @EVENT_ALL_ACCESS, align 4
  %139 = call i32 @NtDuplicateObject(i32* %119, i32 %125, i32* %130, i32* %137, i32 %138, i32 0, i32 0)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @NT_SUCCESS(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %168, label %143

143:                                              ; preds = %118
  %144 = load i32, i32* %12, align 4
  %145 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @INIT_SUCCESS, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @DUPLICATE_CLOSE_SOURCE, align 4
  %160 = call i32 @NtDuplicateObject(i32* %150, i32 %158, i32* null, i32* null, i32 0, i32 0, i32 %159)
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %162 = call i32 @ConSrvFreeHandlesTable(%struct.TYPE_20__* %161)
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %164 = call i32 @ConSrvDeleteConsole(%struct.TYPE_19__* %163)
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 2
  store i32* null, i32** %166, align 8
  %167 = load i32, i32* %12, align 4
  store i32 %167, i32* %6, align 4
  br label %264

168:                                              ; preds = %118
  %169 = call i32* (...) @NtCurrentProcess()
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 2
  %183 = load i32, i32* @EVENT_ALL_ACCESS, align 4
  %184 = call i32 @NtDuplicateObject(i32* %169, i32 %173, i32* %178, i32* %182, i32 %183, i32 0, i32 0)
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @NT_SUCCESS(i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %228, label %188

188:                                              ; preds = %168
  %189 = load i32, i32* %12, align 4
  %190 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %189)
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @INIT_FAILURE, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @DUPLICATE_CLOSE_SOURCE, align 4
  %205 = call i32 @NtDuplicateObject(i32* %195, i32 %203, i32* null, i32* null, i32 0, i32 0, i32 %204)
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 3
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = load i64, i64* @INIT_SUCCESS, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @DUPLICATE_CLOSE_SOURCE, align 4
  %220 = call i32 @NtDuplicateObject(i32* %210, i32 %218, i32* null, i32* null, i32 0, i32 0, i32 %219)
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %222 = call i32 @ConSrvFreeHandlesTable(%struct.TYPE_20__* %221)
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %224 = call i32 @ConSrvDeleteConsole(%struct.TYPE_19__* %223)
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 2
  store i32* null, i32** %226, align 8
  %227 = load i32, i32* %12, align 4
  store i32 %227, i32* %6, align 4
  br label %264

228:                                              ; preds = %168
  %229 = load i32, i32* @TRUE, align 4
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* @CsrProcessIsConsoleApp, align 4
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %232
  store i32 %238, i32* %236, align 8
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 0
  store i32* %241, i32** %245, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 1
  %250 = call i32 @InsertHeadList(i32* %247, i32* %249)
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %252, align 8
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @ConSrvSetProcessFocus(%struct.TYPE_22__* %253, i32 %256)
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = call i32 @_InterlockedIncrement(i32* %259)
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %262 = call i32 @TermRefreshInternalInfo(%struct.TYPE_19__* %261)
  %263 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %263, i32* %6, align 4
  br label %264

264:                                              ; preds = %228, %188, %143, %108, %76, %60
  %265 = load i32, i32* %6, align 4
  ret i32 %265
}

declare dso_local i32 @ConSrvFreeHandlesTable(%struct.TYPE_20__*) #1

declare dso_local i32 @DPRINT(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ConSrvInitConsole(i32**, %struct.TYPE_19__**, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @ConSrvInitHandlesTable(%struct.TYPE_20__*, %struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @ConSrvDeleteConsole(%struct.TYPE_19__*) #1

declare dso_local i32 @NtDuplicateObject(i32*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @NtCurrentProcess(...) #1

declare dso_local i32 @InsertHeadList(i32*, i32*) #1

declare dso_local i32 @ConSrvSetProcessFocus(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @_InterlockedIncrement(i32*) #1

declare dso_local i32 @TermRefreshInternalInfo(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
