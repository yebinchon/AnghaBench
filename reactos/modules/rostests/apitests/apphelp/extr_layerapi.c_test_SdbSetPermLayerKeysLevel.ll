; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_layerapi.c_test_SdbSetPermLayerKeysLevel.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_layerapi.c_test_SdbSetPermLayerKeysLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Expected SdbSetPermLayerKeys to fail\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Expected SdbSetPermLayerKeys to succeed\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"TEST1\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"TEST1 TEST2\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"!#$% TEST1 TEST2\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"!#$% TEST1     TEST2\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_SdbSetPermLayerKeysLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SdbSetPermLayerKeysLevel(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [1 x i32], align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = add nsw i32 %8, 20
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = bitcast [1 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load i32, i32* @CP_ACP, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = add nsw i32 %16, 20
  %18 = call i32 @MultiByteToWideChar(i32 %14, i32 0, i8* %15, i32 -1, i32* %12, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @pSdbSetPermLayerKeys(i32* null, i32* null, i32 %19)
  %21 = load i64, i64* @FALSE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @pSdbSetPermLayerKeys(i32* null, i32* %25, i32 %26)
  %28 = load i64, i64* @FALSE, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %32 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %33 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @pSdbSetPermLayerKeys(i32* %32, i32* %33, i32 %34)
  %36 = load i64, i64* @FALSE, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @pSdbSetPermLayerKeys(i32* %12, i32* null, i32 %40)
  %42 = load i64, i64* @TRUE, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %46 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %47 = load i32, i32* %3, align 4
  %48 = call i64 @pSdbSetPermLayerKeys(i32* %12, i32* %46, i32 %47)
  %49 = load i64, i64* @TRUE, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @wrapSdbSetPermLayerKeys(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %3, align 4
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @expect_LayerValue(i32 %56, i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @wrapSdbSetPermLayerKeys(i32* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %3, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @expect_LayerValue(i32 %62, i8* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @wrapSdbSetPermLayerKeys(i32* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %3, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @expect_LayerValue(i32 %68, i8* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @wrapSdbSetPermLayerKeys(i32* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %3, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @expect_LayerValue(i32 %74, i8* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* %3, align 4
  %78 = call i64 @pSdbSetPermLayerKeys(i32* %12, i32* null, i32 %77)
  %79 = load i64, i64* @TRUE, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* %3, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 @expect_LayerValue(i32 %83, i8* %84, i8* null)
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @wrapSdbSetPermLayerKeys(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* %3, align 4
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @expect_LayerValue(i32 %89, i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %92 = load i32, i32* %3, align 4
  %93 = call i64 @pSdbSetPermLayerKeys(i32* %12, i32* null, i32 %92)
  %94 = load i64, i64* @TRUE, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* %3, align 4
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @expect_LayerValue(i32 %98, i8* %99, i8* null)
  %101 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %101)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #3

declare dso_local i32 @ok(i32, i8*) #3

declare dso_local i64 @pSdbSetPermLayerKeys(i32*, i32*, i32) #3

declare dso_local i32 @wrapSdbSetPermLayerKeys(i32*, i8*, i32) #3

declare dso_local i32 @expect_LayerValue(i32, i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
