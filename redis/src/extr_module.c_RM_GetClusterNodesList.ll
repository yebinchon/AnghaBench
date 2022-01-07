; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_GetClusterNodesList.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_GetClusterNodesList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@REDISMODULE_NODE_ID_LEN = common dso_local global i64 0, align 8
@CLUSTER_NODE_NOADDR = common dso_local global i32 0, align 4
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @RM_GetClusterNodesList(i32* %0, i64* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @UNUSED(i32* %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i8** null, i8*** %3, align 8
  br label %78

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @dictSize(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, 1
  %24 = load i64, i64* @REDISMODULE_NODE_ID_LEN, align 8
  %25 = mul i64 %23, %24
  %26 = call i8* @zmalloc(i64 %25)
  %27 = bitcast i8* %26 to i8**
  store i8** %27, i8*** %7, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @dictGetIterator(i32 %30)
  store i32* %31, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %48, %47, %17
  %33 = load i32*, i32** %8, align 8
  %34 = call i32* @dictNext(i32* %33)
  store i32* %34, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %67

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = call %struct.TYPE_6__* @dictGetVal(i32* %37)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %11, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %43 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %32

48:                                               ; preds = %36
  %49 = load i64, i64* @REDISMODULE_NODE_ID_LEN, align 8
  %50 = call i8* @zmalloc(i64 %49)
  %51 = load i8**, i8*** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %50, i8** %54, align 8
  %55 = load i8**, i8*** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* @REDISMODULE_NODE_ID_LEN, align 8
  %64 = call i32 @memcpy(i8* %59, i32 %62, i64 %63)
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %32

67:                                               ; preds = %32
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64*, i64** %5, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i8**, i8*** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* null, i8** %74, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @dictReleaseIterator(i32* %75)
  %77 = load i8**, i8*** %7, align 8
  store i8** %77, i8*** %3, align 8
  br label %78

78:                                               ; preds = %67, %16
  %79 = load i8**, i8*** %3, align 8
  ret i8** %79
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i64 @dictSize(i32) #1

declare dso_local i8* @zmalloc(i64) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_6__* @dictGetVal(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
