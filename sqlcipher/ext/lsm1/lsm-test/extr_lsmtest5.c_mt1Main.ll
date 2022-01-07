; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest5.c_mt1Main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest5.c_mt1Main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }

@MT1_THREAD_RDWR = common dso_local global i32 0, align 4
@MT1_THREAD_FAST = common dso_local global i32 0, align 4
@MT1_THREAD_SLOW = common dso_local global i32 0, align 4
@xMt1Work = common dso_local global i32 0, align 4
@xMt1Delay = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d.%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"r/w: %d/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @mt1Main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt1Main(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [50 x i8], align 16
  %17 = alloca [25 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32* %20, i32** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @MT1_THREAD_RDWR, align 4
  store i32 %29, i32* %14, align 4
  br label %50

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = icmp slt i32 %31, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @MT1_THREAD_FAST, align 4
  store i32 %41, i32* %14, align 4
  br label %49

42:                                               ; preds = %30
  %43 = load i32, i32* @MT1_THREAD_SLOW, align 4
  store i32 %43, i32* %14, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 20
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %40
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @testPrngValue(i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @testOpen(i32 %55, i32 0, i32* %11)
  store i32* %56, i32** %13, align 8
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* @xMt1Work, align 4
  %62 = call i32 @tdb_lsm_config_work_hook(i32* %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %59, %50
  br label %64

64:                                               ; preds = %128, %91, %63
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32*, i32** %4, align 8
  %69 = call i64 @testThreadGetHalt(i32* %68)
  %70 = icmp eq i64 %69, 0
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i1 [ false, %64 ], [ %70, %67 ]
  br i1 %72, label %73, label %129

73:                                               ; preds = %71
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  %76 = call i32 @testPrngValue(i32 %74)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = srem i32 %76, %80
  store i32 %81, i32* %15, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* @xMt1Delay, align 4
  %86 = bitcast %struct.TYPE_6__* %8 to i8*
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @dbReadOperation(%struct.TYPE_7__* %83, i32* %84, i32 %85, i8* %86, i32 %87, i32* %11)
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %73
  br label %64

92:                                               ; preds = %73
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @MT1_THREAD_RDWR, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %128

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  %101 = call i32 @testPrngValue(i32 %99)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = srem i32 %101, %105
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %12, align 4
  %108 = getelementptr inbounds [25 x i8], [25 x i8]* %17, i64 0, i64 0
  %109 = call i32 @testPrngString(i32 %107, i8* %108, i32 25)
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, 25
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %12, align 4
  %114 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %115 = load i32, i32* %5, align 4
  %116 = getelementptr inbounds [25 x i8], [25 x i8]* %17, i64 0, i64 0
  %117 = call i32 @snprintf(i8* %114, i32 50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %115, i8* %116)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %15, align 4
  %122 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %123 = call i64 @dbWriteOperation(%struct.TYPE_7__* %119, i32* %120, i32 %121, i8* %122, i32* %11)
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %98, %92
  br label %64

129:                                              ; preds = %71
  %130 = call i32 @testClose(i32** %13)
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 (i32*, i32, i32, i8*, ...) @testThreadSetResult(i32* %134, i32 %135, i32 %136, i8* null)
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @testThreadSetHalt(i32* %138)
  br label %146

140:                                              ; preds = %129
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 (i32*, i32, i32, i8*, ...) @testThreadSetResult(i32* %141, i32 %142, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %140, %133
  ret void
}

declare dso_local i32 @testPrngValue(i32) #1

declare dso_local i32* @testOpen(i32, i32, i32*) #1

declare dso_local i32 @tdb_lsm_config_work_hook(i32*, i32, i32) #1

declare dso_local i64 @testThreadGetHalt(i32*) #1

declare dso_local i32 @dbReadOperation(%struct.TYPE_7__*, i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @testPrngString(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i64 @dbWriteOperation(%struct.TYPE_7__*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @testClose(i32**) #1

declare dso_local i32 @testThreadSetResult(i32*, i32, i32, i8*, ...) #1

declare dso_local i32 @testThreadSetHalt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
