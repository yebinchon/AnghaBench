; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_clientsCronResizeQueryBuffer.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_clientsCronResizeQueryBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i8* }

@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@PROTO_MBULK_BIG_ARG = common dso_local global i64 0, align 8
@CLIENT_MASTER = common dso_local global i32 0, align 4
@LIMIT_PENDING_QUERYBUF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clientsCronResizeQueryBuffer(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  %8 = load i8*, i8** %7, align 8
  %9 = call i64 @sdsAllocSize(i8* %8)
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @PROTO_MBULK_BIG_ARG, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %19, %24
  %26 = icmp ugt i64 %25, 2
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 2
  br i1 %29, label %30, label %44

30:                                               ; preds = %27, %18
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @sdsavail(i8* %33)
  %35 = icmp sgt i32 %34, 4096
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @sdsRemoveFreeSpace(i8* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %36, %30
  br label %44

44:                                               ; preds = %43, %27, %1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CLIENT_MASTER, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %44
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @sdsAllocSize(i8* %56)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @LIMIT_PENDING_QUERYBUF, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %53
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @sdslen(i8* %64)
  %66 = load i64, i64* %5, align 8
  %67 = udiv i64 %66, 2
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @sdsRemoveFreeSpace(i8* %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %69, %61, %53
  br label %77

77:                                               ; preds = %76, %44
  ret i32 0
}

declare dso_local i64 @sdsAllocSize(i8*) #1

declare dso_local i32 @sdsavail(i8*) #1

declare dso_local i8* @sdsRemoveFreeSpace(i8*) #1

declare dso_local i64 @sdslen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
