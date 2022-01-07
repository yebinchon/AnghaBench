; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_Validate_ShimData_Win7.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_Validate_ShimData_Win7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i64*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Expected pShimData->Module to be %s, was %s\0A\00", align 1
@SHIMDATA_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Expected pShimData->dwMagic to be 0x%x, was 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Expected pShimData->dwSize to be %u, was %u\0A\00", align 1
@SDB_MAX_LAYERS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"__COMPAT_LAYER\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"At test: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Expected LayerCount to be %u, was %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Expected to find a valid layer in index %u / %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Expected to find an empty layer in index %u / %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Expected pShimData->unknown to be 0x14c, was 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i64, i8**)* @Validate_ShimData_Win7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Validate_ShimData_Win7(i64 %0, i32* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca [250 x i8], align 16
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8** %3, i8*** %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @lstrcmpW(i32* %16, i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @wine_dbgstr_w(i32* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @wine_dbgstr_w(i32* %26)
  %28 = call i32 (i32, i8*, i32, ...) @ok(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SHIMDATA_MAGIC, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* @SHIMDATA_MAGIC, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i32, i8*, i32, ...) @ok(i32 %34, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %36, i64 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %44, 40
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, i32, ...) @ok(i32 %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 40, i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @SDB_MAX_LAYERS, align 8
  %57 = call i32 @min(i64 %55, i64 %56)
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %4
  %60 = bitcast [250 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %60, i8 0, i64 250, i1 false)
  %61 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %62 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %63 = call i32 @_countof(i8* %62)
  %64 = call i32 @GetEnvironmentVariableA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %61, i32 %63)
  %65 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %66 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %59, %4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @SDB_MAX_LAYERS, align 8
  %74 = call i32 @min(i64 %72, i64 %73)
  %75 = icmp eq i32 %71, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @SDB_MAX_LAYERS, align 8
  %79 = call i32 @min(i64 %77, i64 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32, i8*, i32, ...) @ok(i32 %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %79, i32 %83)
  store i64 0, i64* %9, align 8
  br label %85

85:                                               ; preds = %134, %67
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @SDB_MAX_LAYERS, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %137

89:                                               ; preds = %85
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %7, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %89
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %9, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i64, i64* %7, align 8
  %106 = call i32 (i32, i8*, i32, ...) @ok(i32 %102, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %104, i64 %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i8**, i8*** %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @ValidateShim(i64 %113, i8* %117)
  br label %133

119:                                              ; preds = %89
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* %9, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %9, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i64, i64* %7, align 8
  %132 = call i32 (i32, i8*, i32, ...) @ok(i32 %128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %130, i64 %131)
  br label %133

133:                                              ; preds = %119, %93
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %9, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %9, align 8
  br label %85

137:                                              ; preds = %85
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 332
  %142 = zext i1 %141 to i32
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, i32, ...) @ok(i32 %142, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %145)
  ret void
}

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @lstrcmpW(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @min(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @GetEnvironmentVariableA(i8*, i8*, i32) #1

declare dso_local i32 @_countof(i8*) #1

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i32 @ValidateShim(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
