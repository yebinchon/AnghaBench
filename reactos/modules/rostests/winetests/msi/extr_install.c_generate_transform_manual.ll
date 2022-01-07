; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_install.c_generate_transform_manual.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_install.c_generate_transform_manual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@STGM_CREATE = common dso_local global i64 0, align 8
@STGM_READWRITE = common dso_local global i64 0, align 8
@STGM_DIRECT = common dso_local global i64 0, align 8
@STGM_SHARE_EXCLUSIVE = common dso_local global i64 0, align 8
@CP_ACP = common dso_local global i32 0, align 4
@mstfile = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"failed to create storage\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set storage type\0A\00", align 1
@NUM_TRANSFORM_TABLES = common dso_local global i64 0, align 8
@table_transform_data = common dso_local global %struct.TYPE_7__* null, align 8
@STGM_WRITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to create stream %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to write stream\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @generate_transform_manual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_transform_manual() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [32 x i32], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  store i32* null, i32** %1, align 8
  %9 = load i64, i64* @STGM_CREATE, align 8
  %10 = load i64, i64* @STGM_READWRITE, align 8
  %11 = or i64 %9, %10
  %12 = load i64, i64* @STGM_DIRECT, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @STGM_SHARE_EXCLUSIVE, align 8
  %15 = or i64 %13, %14
  store i64 %15, i64* %7, align 8
  %16 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 44, i1 false)
  %17 = bitcast i8* %16 to %struct.TYPE_6__*
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 790658, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i32 192, i32* %20, align 4
  %21 = load i32, i32* @CP_ACP, align 4
  %22 = load i32, i32* @mstfile, align 4
  %23 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %24 = call i32 @MultiByteToWideChar(i32 %21, i32 0, i32 %22, i32 -1, i32* %23, i32 32)
  %25 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @StgCreateDocfile(i32* %25, i64 %26, i32 0, i32** %1)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %1, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %0
  br label %101

36:                                               ; preds = %0
  %37 = load i32*, i32** %1, align 8
  %38 = call i64 @IStorage_SetClass(i32* %37, %struct.TYPE_6__* %8)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %94, %36
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @NUM_TRANSFORM_TABLES, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %97

48:                                               ; preds = %44
  %49 = load i32*, i32** %1, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @table_transform_data, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* @STGM_WRITE, align 8
  %56 = load i64, i64* @STGM_SHARE_EXCLUSIVE, align 8
  %57 = or i64 %55, %56
  %58 = call i64 @IStorage_CreateStream(i32* %49, i32 %54, i64 %57, i32 0, i32 0, i32** %2)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @FAILED(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i64, i64* %4, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  br label %94

65:                                               ; preds = %48
  %66 = load i32*, i32** %2, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @table_transform_data, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @table_transform_data, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @IStream_Write(i32* %66, i32 %71, i64 %76, i64* %6)
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call i64 @FAILED(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %65
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @table_transform_data, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %82, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %81, %65
  %90 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %81
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @IStream_Release(i32* %92)
  br label %94

94:                                               ; preds = %91, %62
  %95 = load i64, i64* %5, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %5, align 8
  br label %44

97:                                               ; preds = %44
  %98 = load i32*, i32** %1, align 8
  %99 = call i32 @IStorage_Release(i32* %98)
  %100 = call i32 (...) @set_transform_summary_info()
  br label %101

101:                                              ; preds = %97, %35
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i64 @StgCreateDocfile(i32*, i64, i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @IStorage_SetClass(i32*, %struct.TYPE_6__*) #2

declare dso_local i64 @IStorage_CreateStream(i32*, i32, i64, i32, i32, i32**) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i64 @IStream_Write(i32*, i32, i64, i64*) #2

declare dso_local i32 @IStream_Release(i32*) #2

declare dso_local i32 @IStorage_Release(i32*) #2

declare dso_local i32 @set_transform_summary_info(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
