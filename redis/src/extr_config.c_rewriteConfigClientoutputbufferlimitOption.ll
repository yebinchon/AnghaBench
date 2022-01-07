; ModuleID = '/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfigClientoutputbufferlimitOption.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfigClientoutputbufferlimitOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.rewriteConfigState = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"client-output-buffer-limit\00", align 1
@CLIENT_TYPE_OBUF_COUNT = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@clientBufferLimitsDefaults = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"replica\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s %s %s %s %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewriteConfigClientoutputbufferlimitOption(%struct.rewriteConfigState* %0) #0 {
  %2 = alloca %struct.rewriteConfigState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  store %struct.rewriteConfigState* %0, %struct.rewriteConfigState** %2, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %99, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @CLIENT_TYPE_OBUF_COUNT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %102

14:                                               ; preds = %10
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clientBufferLimitsDefaults, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %20, %26
  br i1 %27, label %56, label %28

28:                                               ; preds = %14
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clientBufferLimitsDefaults, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %34, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %28
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clientBufferLimitsDefaults, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %48, %54
  br label %56

56:                                               ; preds = %42, %28, %14
  %57 = phi i1 [ true, %28 ], [ true, %14 ], [ %55, %42 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @rewriteConfigFormatMemory(i8* %59, i32 64, i64 %65)
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @rewriteConfigFormatMemory(i8* %67, i32 64, i64 %73)
  %75 = load i32, i32* %3, align 4
  %76 = call i8* @getClientTypeName(i32 %75)
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %56
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %81

81:                                               ; preds = %80, %56
  %82 = call i32 (...) @sdsempty()
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @sdscatprintf(i32 %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %83, i8* %84, i8* %85, i8* %86, i64 %92)
  store i32 %93, i32* %6, align 4
  %94 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %94, i8* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %81
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %10

102:                                              ; preds = %10
  ret void
}

declare dso_local i32 @rewriteConfigFormatMemory(i8*, i32, i64) #1

declare dso_local i8* @getClientTypeName(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i8*, i8*, i8*, i8*, i64) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
