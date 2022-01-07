; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_patch.c_create_patch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_patch.c_create_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_DIRECT = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to create storage 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to set storage type 0x%08x\0A\00", align 1
@table_patch_data = common dso_local global i32 0, align 4
@NUM_PATCH_TABLES = common dso_local global i32 0, align 4
@p_name7 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to create substorage 0x%08x\0A\00", align 1
@table_transform1_data = common dso_local global i32 0, align 4
@NUM_TRANSFORM1_TABLES = common dso_local global i32 0, align 4
@p_name8 = common dso_local global i32 0, align 4
@table_transform2_data = common dso_local global i32 0, align 4
@NUM_TRANSFORM2_TABLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @create_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_patch(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %12 = load i32, i32* @STGM_CREATE, align 4
  %13 = load i32, i32* @STGM_READWRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @STGM_DIRECT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 44, i1 false)
  %20 = bitcast i8* %19 to %struct.TYPE_5__*
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 790662, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 192, i32* %23, align 4
  %24 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 44, i1 false)
  %25 = bitcast i8* %24 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 790658, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 192, i32* %28, align 4
  %29 = load i32, i32* @CP_ACP, align 4
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @MultiByteToWideChar(i32 %29, i32 0, i8* %30, i32 -1, i32* null, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32* @HeapAlloc(i32 %32, i32 0, i32 %36)
  store i32* %37, i32** %6, align 8
  %38 = load i32, i32* @CP_ACP, align 4
  %39 = load i8*, i8** %2, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @MultiByteToWideChar(i32 %38, i32 0, i8* %39, i32 -1, i32* %40, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @StgCreateDocfile(i32* %43, i32 %44, i32 0, i32** %3)
  store i64 %45, i64* %7, align 8
  %46 = call i32 (...) @GetProcessHeap()
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @HeapFree(i32 %46, i32 0, i32* %47)
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %1
  br label %121

58:                                               ; preds = %1
  %59 = load i32*, i32** %3, align 8
  %60 = call i64 @IStorage_SetClass(i32* %59, %struct.TYPE_5__* %10)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @table_patch_data, align 4
  %69 = load i32, i32* @NUM_PATCH_TABLES, align 4
  %70 = call i32 @write_tables(i32* %67, i32 %68, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* @p_name7, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @IStorage_CreateStorage(i32* %71, i32 %72, i32 %73, i32 0, i32 0, i32** %4)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = call i64 @IStorage_SetClass(i32* %81, %struct.TYPE_5__* %11)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @S_OK, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* @table_transform1_data, align 4
  %91 = load i32, i32* @NUM_TRANSFORM1_TABLES, align 4
  %92 = call i32 @write_tables(i32* %89, i32 %90, i32 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @IStorage_Release(i32* %93)
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* @p_name8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @IStorage_CreateStorage(i32* %95, i32 %96, i32 %97, i32 0, i32 0, i32** %5)
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @S_OK, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %103)
  %105 = load i32*, i32** %5, align 8
  %106 = call i64 @IStorage_SetClass(i32* %105, %struct.TYPE_5__* %11)
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %111)
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* @table_transform2_data, align 4
  %115 = load i32, i32* @NUM_TRANSFORM2_TABLES, align 4
  %116 = call i32 @write_tables(i32* %113, i32 %114, i32 %115)
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @IStorage_Release(i32* %117)
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @IStorage_Release(i32* %119)
  br label %121

121:                                              ; preds = %58, %57
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @StgCreateDocfile(i32*, i32, i32, i32**) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @IStorage_SetClass(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @write_tables(i32*, i32, i32) #2

declare dso_local i64 @IStorage_CreateStorage(i32*, i32, i32, i32, i32, i32**) #2

declare dso_local i32 @IStorage_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
