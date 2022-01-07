; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_load_IMD_metadata.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_load_IMD_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32, i32, i8*, i32 }
%struct.image_descriptor = type { i32, i32, i32, i32, i32 }

@S_OK = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@VT_LPWSTR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@VT_UI2 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"Top\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"LocalColorTableFlag\00", align 1
@VT_BOOL = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"InterlaceFlag\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SortFlag\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"LocalColorTableSize\00", align 1
@VT_UI1 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.TYPE_7__**, i32*)* @load_IMD_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_IMD_metadata(i32* %0, i32* %1, i32 %2, %struct.TYPE_7__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.image_descriptor, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %17, align 8
  %18 = load i32*, i32** %11, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @IStream_Read(i32* %19, %struct.image_descriptor* %12, i32 20, i32* %14)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i64 @FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 20
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %5
  %29 = load i32, i32* @S_OK, align 4
  store i32 %29, i32* %6, align 4
  br label %260

30:                                               ; preds = %24
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %33 = call %struct.TYPE_7__* @HeapAlloc(i32 %31, i32 %32, i32 768)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %16, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %37, i32* %6, align 4
  br label %260

38:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = call i32 @PropVariantInit(%struct.TYPE_8__* %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = call i32 @PropVariantInit(%struct.TYPE_8__* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call i32 @PropVariantInit(%struct.TYPE_8__* %59)
  br label %61

61:                                               ; preds = %42
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %15, align 4
  br label %39

64:                                               ; preds = %39
  %65 = load i8*, i8** @VT_LPWSTR, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i8* %65, i8** %69, align 8
  %70 = call i8* @strdupAtoW(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i8* %70, i8** %75, align 8
  %76 = load i8*, i8** @VT_UI2, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i8* %76, i8** %80, align 8
  %81 = getelementptr inbounds %struct.image_descriptor, %struct.image_descriptor* %12, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  store i32 %82, i32* %87, align 8
  %88 = load i8*, i8** @VT_LPWSTR, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i8* %88, i8** %92, align 8
  %93 = call i8* @strdupAtoW(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  store i8* %93, i8** %98, align 8
  %99 = load i8*, i8** @VT_UI2, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i8* %99, i8** %103, align 8
  %104 = getelementptr inbounds %struct.image_descriptor, %struct.image_descriptor* %12, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  store i32 %105, i32* %110, align 8
  %111 = load i8*, i8** @VT_LPWSTR, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  store i8* %111, i8** %115, align 8
  %116 = call i8* @strdupAtoW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  store i8* %116, i8** %121, align 8
  %122 = load i8*, i8** @VT_UI2, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 2
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  store i8* %122, i8** %126, align 8
  %127 = getelementptr inbounds %struct.image_descriptor, %struct.image_descriptor* %12, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 2
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  store i32 %128, i32* %133, align 8
  %134 = load i8*, i8** @VT_LPWSTR, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 3
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  store i8* %134, i8** %138, align 8
  %139 = call i8* @strdupAtoW(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 3
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  store i8* %139, i8** %144, align 8
  %145 = load i8*, i8** @VT_UI2, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 3
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i8* %145, i8** %149, align 8
  %150 = getelementptr inbounds %struct.image_descriptor, %struct.image_descriptor* %12, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 3
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 3
  store i32 %151, i32* %156, align 8
  %157 = load i8*, i8** @VT_LPWSTR, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 4
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  store i8* %157, i8** %161, align 8
  %162 = call i8* @strdupAtoW(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i64 4
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  store i8* %162, i8** %167, align 8
  %168 = load i8*, i8** @VT_BOOL, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 4
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  store i8* %168, i8** %172, align 8
  %173 = getelementptr inbounds %struct.image_descriptor, %struct.image_descriptor* %12, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = ashr i32 %174, 7
  %176 = and i32 %175, 1
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i64 4
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store i32 %176, i32* %181, align 8
  %182 = load i8*, i8** @VT_LPWSTR, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 5
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  store i8* %182, i8** %186, align 8
  %187 = call i8* @strdupAtoW(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 5
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  store i8* %187, i8** %192, align 8
  %193 = load i8*, i8** @VT_BOOL, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i64 5
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  store i8* %193, i8** %197, align 8
  %198 = getelementptr inbounds %struct.image_descriptor, %struct.image_descriptor* %12, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = ashr i32 %199, 6
  %201 = and i32 %200, 1
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i64 5
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  store i32 %201, i32* %206, align 8
  %207 = load i8*, i8** @VT_LPWSTR, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i64 6
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  store i8* %207, i8** %211, align 8
  %212 = call i8* @strdupAtoW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i64 6
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  store i8* %212, i8** %217, align 8
  %218 = load i8*, i8** @VT_BOOL, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i64 6
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  store i8* %218, i8** %222, align 8
  %223 = getelementptr inbounds %struct.image_descriptor, %struct.image_descriptor* %12, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = ashr i32 %224, 5
  %226 = and i32 %225, 1
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i64 6
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  store i32 %226, i32* %231, align 8
  %232 = load i8*, i8** @VT_LPWSTR, align 8
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i64 7
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  store i8* %232, i8** %236, align 8
  %237 = call i8* @strdupAtoW(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i64 7
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 2
  store i8* %237, i8** %242, align 8
  %243 = load i8*, i8** @VT_UI1, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i64 7
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  store i8* %243, i8** %247, align 8
  %248 = getelementptr inbounds %struct.image_descriptor, %struct.image_descriptor* %12, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 7
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i64 7
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 1
  store i32 %250, i32* %255, align 4
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %257 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* %256, %struct.TYPE_7__** %257, align 8
  %258 = load i32*, i32** %11, align 8
  store i32 8, i32* %258, align 4
  %259 = load i32, i32* @S_OK, align 4
  store i32 %259, i32* %6, align 4
  br label %260

260:                                              ; preds = %64, %36, %28
  %261 = load i32, i32* %6, align 4
  ret i32 %261
}

declare dso_local i32 @IStream_Read(i32*, %struct.image_descriptor*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @PropVariantInit(%struct.TYPE_8__*) #1

declare dso_local i8* @strdupAtoW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
