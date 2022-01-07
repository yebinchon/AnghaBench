; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_quotaDelete.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_quota.c_quotaDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }
%struct.TYPE_9__ = type { i32, i64 }

@gQuota = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32)* @quotaDelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quotaDelete(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gQuota, i32 0, i32 0), align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %10, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.TYPE_8__*, i8*, i32)**
  %15 = load i32 (%struct.TYPE_8__*, i8*, i32)*, i32 (%struct.TYPE_8__*, i8*, i32)** %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 %15(%struct.TYPE_8__* %16, i8* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SQLITE_OK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %3
  %24 = call i32 (...) @quotaEnter()
  %25 = load i8*, i8** %5, align 8
  %26 = call i32* @quotaGroupFind(i8* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load i32*, i32** %9, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call %struct.TYPE_9__* @quotaFindFile(i32* %30, i8* %31, i32 0)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %48

43:                                               ; preds = %35
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = call i32 @quotaRemoveFile(%struct.TYPE_9__* %44)
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @quotaGroupDeref(i32* %46)
  br label %48

48:                                               ; preds = %43, %40
  br label %49

49:                                               ; preds = %48, %29
  br label %50

50:                                               ; preds = %49, %23
  %51 = call i32 (...) @quotaLeave()
  br label %52

52:                                               ; preds = %50, %3
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @quotaEnter(...) #1

declare dso_local i32* @quotaGroupFind(i8*) #1

declare dso_local %struct.TYPE_9__* @quotaFindFile(i32*, i8*, i32) #1

declare dso_local i32 @quotaRemoveFile(%struct.TYPE_9__*) #1

declare dso_local i32 @quotaGroupDeref(i32*) #1

declare dso_local i32 @quotaLeave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
