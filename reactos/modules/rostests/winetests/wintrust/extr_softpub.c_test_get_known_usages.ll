; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_softpub.c_test_get_known_usages.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_softpub.c_test_get_known_usages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"WTHelperGetKnownUsages failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"expected a pointer\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"unexpected size %d\0A\00", align 1
@CRYPT_ENHKEY_USAGE_OID_GROUP_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"expected group CRYPT_ENHKEY_USAGE_OID_GROUP_ID, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"expected pointer to be cleared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_known_usages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_known_usages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__**, align 8
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = call i32 @SetLastError(i32 -559038737)
  %5 = call i32 @pWTHelperGetKnownUsages(i32 0, %struct.TYPE_3__*** null)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = call i32 (...) @GetLastError()
  %10 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %11 = icmp eq i32 %9, %10
  br label %12

12:                                               ; preds = %8, %0
  %13 = phi i1 [ false, %0 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 (...) @GetLastError()
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @SetLastError(i32 -559038737)
  %18 = call i32 @pWTHelperGetKnownUsages(i32 1, %struct.TYPE_3__*** null)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = call i32 (...) @GetLastError()
  %23 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %24 = icmp eq i32 %22, %23
  br label %25

25:                                               ; preds = %21, %12
  %26 = phi i1 [ false, %12 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = call i32 @SetLastError(i32 -559038737)
  %31 = call i32 @pWTHelperGetKnownUsages(i32 0, %struct.TYPE_3__*** %2)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = call i32 (...) @GetLastError()
  %36 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %37 = icmp eq i32 %35, %36
  br label %38

38:                                               ; preds = %34, %25
  %39 = phi i1 [ false, %25 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = call i32 @SetLastError(i32 -559038737)
  store %struct.TYPE_3__** null, %struct.TYPE_3__*** %2, align 8
  %44 = call i32 @pWTHelperGetKnownUsages(i32 1, %struct.TYPE_3__*** %2)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = call i32 (...) @GetLastError()
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %49 = icmp ne %struct.TYPE_3__** %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %1, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %101

54:                                               ; preds = %38
  %55 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %56 = icmp ne %struct.TYPE_3__** %55, null
  br i1 %56, label %57, label %101

57:                                               ; preds = %54
  %58 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  store %struct.TYPE_3__** %58, %struct.TYPE_3__*** %3, align 8
  br label %59

59:                                               ; preds = %97, %57
  %60 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = icmp ne %struct.TYPE_3__* %61, null
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  %64 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp eq i64 %75, 12
  br label %77

77:                                               ; preds = %70, %63
  %78 = phi i1 [ true, %63 ], [ %76, %70 ]
  %79 = zext i1 %78 to i32
  %80 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CRYPT_ENHKEY_USAGE_OID_GROUP_ID, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %77
  %98 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %98, i32 1
  store %struct.TYPE_3__** %99, %struct.TYPE_3__*** %3, align 8
  br label %59

100:                                              ; preds = %59
  br label %101

101:                                              ; preds = %100, %54, %38
  %102 = call i32 @SetLastError(i32 -559038737)
  %103 = call i32 @pWTHelperGetKnownUsages(i32 2, %struct.TYPE_3__*** %2)
  store i32 %103, i32* %1, align 4
  %104 = load i32, i32* %1, align 4
  %105 = call i32 (...) @GetLastError()
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %2, align 8
  %108 = icmp eq %struct.TYPE_3__** %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %111 = call i32 @SetLastError(i32 -559038737)
  store %struct.TYPE_3__** null, %struct.TYPE_3__*** %2, align 8
  %112 = call i32 @pWTHelperGetKnownUsages(i32 2, %struct.TYPE_3__*** %2)
  store i32 %112, i32* %1, align 4
  %113 = load i32, i32* %1, align 4
  %114 = call i32 (...) @GetLastError()
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = call i32 @SetLastError(i32 -559038737)
  %117 = call i32 @pWTHelperGetKnownUsages(i32 2, %struct.TYPE_3__*** null)
  store i32 %117, i32* %1, align 4
  %118 = load i32, i32* %1, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %101
  %121 = call i32 (...) @GetLastError()
  %122 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %123 = icmp eq i32 %121, %122
  br label %124

124:                                              ; preds = %120, %101
  %125 = phi i1 [ false, %101 ], [ %123, %120 ]
  %126 = zext i1 %125 to i32
  %127 = call i32 (...) @GetLastError()
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %127)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pWTHelperGetKnownUsages(i32, %struct.TYPE_3__***) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
