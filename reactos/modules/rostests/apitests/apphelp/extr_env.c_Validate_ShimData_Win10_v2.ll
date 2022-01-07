; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_Validate_ShimData_Win10_v2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_Validate_ShimData_Win10_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64* }

@SHIMDATA_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Yet another unknown shimdata variant...\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Expected pShimData->dwSize to be %u, was %u\0A\00", align 1
@SDB_MAX_LAYERS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"__COMPAT_LAYER\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"At test: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Expected LayerCount to be %u, was %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Expected to find a valid layer in index %u / %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Expected to find an empty layer in index %u / %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i64, i8**)* @Validate_ShimData_Win10_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Validate_ShimData_Win10_v2(i64 %0, i32* %1, i64 %2, i8** %3) #0 {
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
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = call i32 @skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %117

21:                                               ; preds = %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp eq i64 %25, 32
  %27 = zext i1 %26 to i32
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 32, i64 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @SDB_MAX_LAYERS, align 8
  %39 = call i64 @min(i64 %37, i64 %38)
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %21
  %42 = bitcast [250 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 250, i1 false)
  %43 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %44 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %45 = call i32 @_countof(i8* %44)
  %46 = call i32 @GetEnvironmentVariableA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %43, i32 %45)
  %47 = getelementptr inbounds [250 x i8], [250 x i8]* %11, i64 0, i64 0
  %48 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %41, %21
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @SDB_MAX_LAYERS, align 8
  %56 = call i64 @min(i64 %54, i64 %55)
  %57 = icmp eq i64 %53, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @SDB_MAX_LAYERS, align 8
  %61 = call i64 @min(i64 %59, i64 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %61, i64 %65)
  store i64 0, i64* %9, align 8
  br label %67

67:                                               ; preds = %114, %49
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @SDB_MAX_LAYERS, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %117

71:                                               ; preds = %67
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %71
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %85, i64 %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i8**, i8*** %8, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds i8*, i8** %95, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @ValidateShim(i64 %94, i8* %98)
  br label %113

100:                                              ; preds = %71
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i64 %110, i64 %111)
  br label %113

113:                                              ; preds = %100, %75
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %9, align 8
  br label %67

117:                                              ; preds = %19, %67
  ret void
}

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

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
