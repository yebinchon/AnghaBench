; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_Validate_ShimData_Win10.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_Validate_ShimData_Win10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i64, i64* }

@SHIMDATA_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Expected pShimData->Module to be %s, was %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Expected pShimData->dwSize to be %u, was %u\0A\00", align 1
@SDB_MAX_LAYERS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"__COMPAT_LAYER\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"At test: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Expected LayerCount to be %u, was %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Expected to find a valid layer in index %u / %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Expected to find an empty layer in index %u / %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i64, i8**)* @Validate_ShimData_Win10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Validate_ShimData_Win10(i64 %0, i32* %1, i64 %2, i8** %3) #0 {
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
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SHIMDATA_MAGIC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i64, i64* %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i8**, i8*** %8, align 8
  %24 = call i32 @Validate_ShimData_Win10_v2(i64 %20, i32* %21, i64 %22, i8** %23)
  br label %136

25:                                               ; preds = %4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @lstrcmpiW(i32* %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @wine_dbgstr_w(i32* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @wine_dbgstr_w(i32* %38)
  %40 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %44, 40
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 40, i64 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @SDB_MAX_LAYERS, align 8
  %58 = call i64 @min(i64 %56, i64 %57)
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %25
  %61 = bitcast [250 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %61, i8 0, i64 250, i1 false)
  %62 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %63 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %64 = call i32 @_countof(i8* %63)
  %65 = call i32 @GetEnvironmentVariableA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %62, i32 %64)
  %66 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %67 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %60, %25
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @SDB_MAX_LAYERS, align 8
  %75 = call i64 @min(i64 %73, i64 %74)
  %76 = icmp eq i64 %72, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @SDB_MAX_LAYERS, align 8
  %80 = call i64 @min(i64 %78, i64 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %80, i64 %84)
  store i64 0, i64* %9, align 8
  br label %86

86:                                               ; preds = %133, %68
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* @SDB_MAX_LAYERS, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %136

90:                                               ; preds = %86
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %90
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %104, i64 %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i8**, i8*** %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @ValidateShim(i64 %113, i8* %117)
  br label %132

119:                                              ; preds = %90
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* %9, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i64 %129, i64 %130)
  br label %132

132:                                              ; preds = %119, %94
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %9, align 8
  br label %86

136:                                              ; preds = %19, %86
  ret void
}

declare dso_local i32 @Validate_ShimData_Win10_v2(i64, i32*, i64, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

declare dso_local i32 @lstrcmpiW(i32*, i32*) #1

declare dso_local i64 @wine_dbgstr_w(i32*) #1

declare dso_local i64 @min(i64, i64) #1

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
