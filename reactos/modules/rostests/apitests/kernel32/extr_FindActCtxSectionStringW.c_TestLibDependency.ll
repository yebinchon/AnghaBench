; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_FindActCtxSectionStringW.c_TestLibDependency.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_FindActCtxSectionStringW.c_TestLibDependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i32, i32, i32*, i32*, i32 }
%struct.strsection_header = type { i32, i32, i32 }
%struct.dllredirect_data = type { i32 }
%struct.assemply_data = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX = common dso_local global i32 0, align 4
@ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i32] [i32 100, i32 101, i32 112, i32 49, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"FindActCtxSectionString failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Wrong last error. Expected %lu, got %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Wrong format version: %lu\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Wrong handle\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Expected non null lpSectionBase\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Expected non null lpData\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"Can't read data for dep1.dll. Skipping\0A\00", align 1
@STRSECTION_MAGIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Got %lu instead of %d\0A\00", align 1
@ACTIVATION_CONTEXT_SECTION_ASSEMBLY_INFORMATION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i32] [i32 100, i32 101, i32 112, i32 49, i32 0], align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"Can't read data for dep1. Skipping\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Got lenght %lu instead of %d\0A\00", align 1
@AssemblyDetailedInformationInActivationContext = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"QueryActCtxW failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Expected path %S, got %S\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Got wrong AssemblyIdentity\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestLibDependency(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.strsection_header*, align 8
  %7 = alloca %struct.dllredirect_data*, align 8
  %8 = alloca %struct.assemply_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [256 x i32], align 16
  %14 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %3, align 8
  %15 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 48, i1 false)
  %16 = call i32 @SetLastError(i32 -559030611)
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32 48, i32* %17, align 8
  %18 = load i32, i32* @FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX, align 4
  %19 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION, align 4
  %20 = call i64 @FindActCtxSectionStringW(i32 %18, i32* null, i32 %19, i8* bitcast ([9 x i32]* @.str to i8*), %struct.TYPE_9__* %4)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @TRUE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 (...) @GetLastError()
  %27 = icmp eq i32 %26, -559030611
  %28 = zext i1 %27 to i32
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 -559030611, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to %struct.strsection_header*
  store %struct.strsection_header* %56, %struct.strsection_header** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = bitcast i32* %58 to %struct.dllredirect_data*
  store %struct.dllredirect_data* %59, %struct.dllredirect_data** %7, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @FALSE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %73, label %63

63:                                               ; preds = %1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 1
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %69 = icmp eq %struct.strsection_header* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load %struct.dllredirect_data*, %struct.dllredirect_data** %7, align 8
  %72 = icmp eq %struct.dllredirect_data* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70, %67, %63, %1
  %74 = call i32 @skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %115

75:                                               ; preds = %70
  %76 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %77 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @STRSECTION_MAGIC, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %83 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %84)
  %86 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %87 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp eq i64 %89, 12
  %91 = zext i1 %90 to i32
  %92 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %93 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %94, i64 12)
  %96 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %97 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 2
  %100 = zext i1 %99 to i32
  %101 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %102 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %103)
  %105 = load %struct.dllredirect_data*, %struct.dllredirect_data** %7, align 8
  %106 = getelementptr inbounds %struct.dllredirect_data, %struct.dllredirect_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp eq i64 %108, 4
  %110 = zext i1 %109 to i32
  %111 = load %struct.dllredirect_data*, %struct.dllredirect_data** %7, align 8
  %112 = getelementptr inbounds %struct.dllredirect_data, %struct.dllredirect_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %113, i64 4)
  br label %115

115:                                              ; preds = %75, %73
  %116 = call i32 @SetLastError(i32 -559030611)
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32 48, i32* %117, align 8
  %118 = load i32, i32* @FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX, align 4
  %119 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_ASSEMBLY_INFORMATION, align 4
  %120 = call i64 @FindActCtxSectionStringW(i32 %118, i32* null, i32 %119, i8* bitcast ([5 x i32]* @.str.10 to i8*), %struct.TYPE_9__* %4)
  store i64 %120, i64* %5, align 8
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* @TRUE, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %126 = call i32 (...) @GetLastError()
  %127 = icmp eq i32 %126, -559030611
  %128 = zext i1 %127 to i32
  %129 = call i32 (...) @GetLastError()
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 -559030611, i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 1
  %134 = zext i1 %133 to i32
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %3, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 6
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  %147 = zext i1 %146 to i32
  %148 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  %152 = zext i1 %151 to i32
  %153 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = bitcast i32* %155 to %struct.strsection_header*
  store %struct.strsection_header* %156, %struct.strsection_header** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 5
  %158 = load i32*, i32** %157, align 8
  %159 = bitcast i32* %158 to %struct.assemply_data*
  store %struct.assemply_data* %159, %struct.assemply_data** %8, align 8
  %160 = load i64, i64* %5, align 8
  %161 = load i64, i64* @FALSE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %173, label %163

163:                                              ; preds = %115
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 1
  br i1 %166, label %173, label %167

167:                                              ; preds = %163
  %168 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %169 = icmp eq %struct.strsection_header* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %172 = icmp eq %struct.assemply_data* %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %170, %167, %163, %115
  %174 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %366

175:                                              ; preds = %170
  %176 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %177 = bitcast i32* %176 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %177, %struct.TYPE_8__** %14, align 8
  %178 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %179 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @STRSECTION_MAGIC, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %185 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %186)
  %188 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %189 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = icmp eq i64 %191, 12
  %193 = zext i1 %192 to i32
  %194 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %195 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %196, i64 12)
  %198 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %199 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 2
  %202 = zext i1 %201 to i32
  %203 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %204 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %205)
  %207 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %208 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %211 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %209, %212
  %214 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %215 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %213, %216
  %218 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %219 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %217, %220
  %222 = sext i32 %221 to i64
  %223 = add i64 %222, 8
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %12, align 4
  %225 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %226 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = icmp eq i64 %228, 56
  %230 = zext i1 %229 to i32
  %231 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %232 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %233, i64 56)
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %12, align 4
  %238 = icmp eq i32 %236, %237
  %239 = zext i1 %238 to i32
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %12, align 4
  %243 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %241, i32 %242)
  %244 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %245 = bitcast %struct.strsection_header* %244 to i32*
  %246 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %247 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %245, i64 %249
  store i32* %250, i32** %9, align 8
  %251 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %252 = bitcast %struct.strsection_header* %251 to i32*
  %253 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %254 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %252, i64 %256
  store i32* %257, i32** %10, align 8
  %258 = load %struct.strsection_header*, %struct.strsection_header** %6, align 8
  %259 = bitcast %struct.strsection_header* %258 to i32*
  %260 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %261 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %259, i64 %263
  store i32* %264, i32** %11, align 8
  %265 = load i64, i64* %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %267 = load i32, i32* @AssemblyDetailedInformationInActivationContext, align 4
  %268 = bitcast [256 x i32]* %13 to i32**
  %269 = call i64 @QueryActCtxW(i32 0, i64 %265, i32* %266, i32 %267, i32** %268, i32 1024, i32* null)
  store i64 %269, i64* %5, align 8
  %270 = load i64, i64* %5, align 8
  %271 = load i64, i64* @TRUE, align 8
  %272 = icmp eq i64 %270, %271
  %273 = zext i1 %272 to i32
  %274 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %275 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %276 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %275, i32 0, i32 7
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp eq i64 %277, %280
  %282 = zext i1 %281 to i32
  %283 = call i32 (i32, i8*, ...) @ok(i32 %282, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %284 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %285 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = icmp eq i32 %286, %289
  %291 = zext i1 %290 to i32
  %292 = call i32 (i32, i8*, ...) @ok(i32 %291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %293 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %294 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %293, i32 0, i32 8
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = icmp eq i64 %295, %298
  %300 = zext i1 %299 to i32
  %301 = call i32 (i32, i8*, ...) @ok(i32 %300, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %302 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %303 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = icmp eq i32 %304, %307
  %309 = zext i1 %308 to i32
  %310 = call i32 (i32, i8*, ...) @ok(i32 %309, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %311 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %312 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %313, %316
  %318 = zext i1 %317 to i32
  %319 = call i32 (i32, i8*, ...) @ok(i32 %318, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %320 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %321 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %320, i32 0, i32 9
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = icmp eq i64 %323, %327
  %329 = zext i1 %328 to i32
  %330 = call i32 (i32, i8*, ...) @ok(i32 %329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %331 = load i32*, i32** %10, align 8
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 4
  %335 = call i64 @wcscmp(i32* %331, i32 %334)
  %336 = icmp eq i64 %335, 0
  %337 = zext i1 %336 to i32
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 6
  %340 = load i32, i32* %339, align 4
  %341 = load i32*, i32** %10, align 8
  %342 = call i32 (i32, i8*, ...) @ok(i32 %337, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %340, i32* %341)
  %343 = load i32*, i32** %11, align 8
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 7
  %346 = load i32, i32* %345, align 8
  %347 = call i64 @wcscmp(i32* %343, i32 %346)
  %348 = icmp eq i64 %347, 0
  %349 = zext i1 %348 to i32
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 4
  %353 = load i32*, i32** %10, align 8
  %354 = call i32 (i32, i8*, ...) @ok(i32 %349, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %352, i32* %353)
  %355 = load i32*, i32** %9, align 8
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 5
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.assemply_data*, %struct.assemply_data** %8, align 8
  %360 = getelementptr inbounds %struct.assemply_data, %struct.assemply_data* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = call i64 @memcmp(i32* %355, i32 %358, i32 %361)
  %363 = icmp eq i64 %362, 0
  %364 = zext i1 %363 to i32
  %365 = call i32 (i32, i8*, ...) @ok(i32 %364, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  br label %366

366:                                              ; preds = %175, %173
  %367 = load i32, i32* %2, align 4
  ret i32 %367
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @FindActCtxSectionStringW(i32, i32*, i32, i8*, %struct.TYPE_9__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i64 @QueryActCtxW(i32, i64, i32*, i32, i32**, i32, i32*) #2

declare dso_local i64 @wcscmp(i32*, i32) #2

declare dso_local i64 @memcmp(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
