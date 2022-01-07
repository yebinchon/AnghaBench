; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_CoInternetQueryInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_CoInternetQueryInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@query_info_tests = common dso_local global %struct.TYPE_3__* null, align 8
@QUERY_USES_NETWORK = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"[%d] CoInternetQueryInfo failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"[%d] cb = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"[%d] ret %x, expected %x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"[%d] CoInternetQueryInfo failed: %08x, expected E_FAIL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CoInternetQueryInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CoInternetQueryInfo() #0 {
  %1 = alloca [100 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %117, %0
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @query_info_tests, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %120

10:                                               ; preds = %5
  store i32 -559038737, i32* %2, align 4
  %11 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 0
  %12 = call i32 @memset(i32* %11, i8 signext 63, i32 400)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @query_info_tests, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @QUERY_USES_NETWORK, align 4
  %18 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 0
  %19 = call i32 @pCoInternetQueryInfo(i32 %16, i32 %17, i32 0, i32* %18, i32 400, i32* %2, i32 0)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @S_OK, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp eq i64 %28, 4
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  %34 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @query_info_tests, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %35, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %3, align 4
  %45 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @query_info_tests, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %46, i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @query_info_tests, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @QUERY_USES_NETWORK, align 4
  %59 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 0
  %60 = call i32 @pCoInternetQueryInfo(i32 %57, i32 %58, i32 0, i32* %59, i32 3, i32* %2, i32 0)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @E_FAIL, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %64, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @query_info_tests, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @QUERY_USES_NETWORK, align 4
  %73 = call i32 @pCoInternetQueryInfo(i32 %71, i32 %72, i32 0, i32* null, i32 400, i32* %2, i32 0)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @E_FAIL, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %77, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %79)
  %81 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 0
  %82 = call i32 @memset(i32* %81, i8 signext 63, i32 400)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @query_info_tests, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @QUERY_USES_NETWORK, align 4
  %88 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 0
  %89 = call i32 @pCoInternetQueryInfo(i32 %86, i32 %87, i32 0, i32* %88, i32 400, i32* null, i32 0)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @S_OK, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95)
  %97 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @query_info_tests, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %98, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %3, align 4
  %108 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** @query_info_tests, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %109, i32 %115)
  br label %117

117:                                              ; preds = %10
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  br label %5

120:                                              ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i32 @pCoInternetQueryInfo(i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
