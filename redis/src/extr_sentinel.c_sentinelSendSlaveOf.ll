; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelSendSlaveOf.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelSendSlaveOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ONE\00", align 1
@sentinelDiscardReplyCallback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"MULTI\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"SLAVEOF\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s REWRITE\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"CONFIG\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"%s KILL TYPE normal\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"CLIENT\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sentinelSendSlaveOf(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @ll2string(i8* %10, i32 32, i32 %11)
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %17 = call i32 @memcpy(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @sentinelDiscardReplyCallback, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = call i32 @sentinelInstanceMapCommand(%struct.TYPE_7__* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 (i32, i32, %struct.TYPE_7__*, i8*, i32, ...) @redisAsyncCommand(i32 %23, i32 %24, %struct.TYPE_7__* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @C_ERR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %132

34:                                               ; preds = %18
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @sentinelDiscardReplyCallback, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = call i32 @sentinelInstanceMapCommand(%struct.TYPE_7__* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %52 = call i32 (i32, i32, %struct.TYPE_7__*, i8*, i32, ...) @redisAsyncCommand(i32 %45, i32 %46, %struct.TYPE_7__* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %49, i8* %50, i8* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @C_ERR, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %34
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %132

58:                                               ; preds = %34
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @sentinelDiscardReplyCallback, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = call i32 @sentinelInstanceMapCommand(%struct.TYPE_7__* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %74 = call i32 (i32, i32, %struct.TYPE_7__*, i8*, i32, ...) @redisAsyncCommand(i32 %69, i32 %70, %struct.TYPE_7__* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @C_ERR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %58
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %132

80:                                               ; preds = %58
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @sentinelDiscardReplyCallback, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = call i32 @sentinelInstanceMapCommand(%struct.TYPE_7__* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %96 = call i32 (i32, i32, %struct.TYPE_7__*, i8*, i32, ...) @redisAsyncCommand(i32 %91, i32 %92, %struct.TYPE_7__* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @C_ERR, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %80
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %132

102:                                              ; preds = %80
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @sentinelDiscardReplyCallback, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = call i32 @sentinelInstanceMapCommand(%struct.TYPE_7__* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %118 = call i32 (i32, i32, %struct.TYPE_7__*, i8*, i32, ...) @redisAsyncCommand(i32 %113, i32 %114, %struct.TYPE_7__* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @C_ERR, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %102
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %4, align 4
  br label %132

124:                                              ; preds = %102
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @C_OK, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %124, %122, %100, %78, %56, %32
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @ll2string(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @redisAsyncCommand(i32, i32, %struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local i32 @sentinelInstanceMapCommand(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
