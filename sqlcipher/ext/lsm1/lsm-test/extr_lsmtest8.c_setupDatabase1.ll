; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest8.c_setupDatabase1.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest8.c_setupDatabase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@TEST_DATASOURCE_RANDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**)* @setupDatabase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setupDatabase1(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca [3 x %struct.TYPE_6__], align 16
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  %8 = bitcast [3 x %struct.TYPE_6__]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 60, i1 false)
  %9 = bitcast i8* %8 to [3 x %struct.TYPE_6__]*
  %10 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32 2000, i32* %12, align 8
  %13 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %9, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %9, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 10001, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32 1000, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %19 = load i32, i32* @TEST_DATASOURCE_RANDOM, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 12, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 16, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i32 100, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i32 500, i32* %23, align 4
  %24 = call i32* @testDatasourceNew(%struct.TYPE_7__* %6)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %28 = getelementptr inbounds [3 x %struct.TYPE_6__], [3 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %29 = call i32 @ArraySize(%struct.TYPE_6__* %28)
  %30 = call i32 @doSetupStepArray(i32* %25, i32* %26, %struct.TYPE_6__* %27, i32 %29)
  %31 = load i32**, i32*** %4, align 8
  %32 = icmp ne i32** %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32*, i32** %7, align 8
  %35 = load i32**, i32*** %4, align 8
  store i32* %34, i32** %35, align 8
  br label %39

36:                                               ; preds = %2
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @testDatasourceFree(i32* %37)
  br label %39

39:                                               ; preds = %36, %33
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @testDatasourceNew(%struct.TYPE_7__*) #2

declare dso_local i32 @doSetupStepArray(i32*, i32*, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @ArraySize(%struct.TYPE_6__*) #2

declare dso_local i32 @testDatasourceFree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
