; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_ls.c_LsCacheAdd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_ls.c_LsCacheAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@gOldestLsCacheItem = common dso_local global i32 0, align 4
@gLsCache = common dso_local global %struct.TYPE_6__* null, align 8
@gLsCacheItemLifetime = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"ls cache add: %s\0A\00", align 1
@kLsCacheSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*)* @LsCacheAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LsCacheAdd(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %70

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @LsCacheLookup(i8* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @FlushLsCacheItem(i32 %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* @StrDup(i8* %21)
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %70

26:                                               ; preds = %20
  %27 = load i32, i32* @gOldestLsCacheItem, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gLsCache, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = call i32 @memcpy(i32* %32, %struct.TYPE_5__* %33, i32 4)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gLsCache, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = call i32 @time(i32* %39)
  %41 = load i64, i64* @gLsCacheItemLifetime, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gLsCache, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %41
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gLsCache, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gLsCache, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i8* %56, i8** %61, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @Trace(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @gOldestLsCacheItem, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @gOldestLsCacheItem, align 4
  %66 = load i32, i32* @gOldestLsCacheItem, align 4
  %67 = load i32, i32* @kLsCacheSize, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %26
  store i32 0, i32* @gOldestLsCacheItem, align 4
  br label %70

70:                                               ; preds = %11, %25, %69, %26
  ret void
}

declare dso_local i32 @LsCacheLookup(i8*) #1

declare dso_local i32 @FlushLsCacheItem(i32) #1

declare dso_local i8* @StrDup(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @Trace(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
