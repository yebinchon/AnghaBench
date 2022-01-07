; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_mallocWithAlarm.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_mallocWithAlarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32)*, i8* (i32)* }

@mem0 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SQLITE_STATUS_MALLOC_SIZE = common dso_local global i32 0, align 4
@SQLITE_STATUS_MEMORY_USED = common dso_local global i32 0, align 4
@SQLITE_STATUS_MALLOC_COUNT = common dso_local global i32 0, align 4
@SQLITE_MAX_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @mallocWithAlarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mallocWithAlarm(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 2), align 4
  %9 = call i32 @sqlite3_mutex_held(i32 %8)
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 %15(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @SQLITE_STATUS_MALLOC_SIZE, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @sqlite3StatusHighwater(i32 %18, i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 0), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load i32, i32* @SQLITE_STATUS_MEMORY_USED, align 4
  %25 = call i64 @sqlite3StatusValue(i32 %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 0), align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 1), align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @sqlite3MallocAlarm(i32 %33)
  br label %36

35:                                               ; preds = %23
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mem0, i32 0, i32 1), align 4
  br label %36

36:                                               ; preds = %35, %32
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sqlite3GlobalConfig, i32 0, i32 0, i32 1), align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i8* %38(i32 %39)
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @sqlite3MallocSize(i8* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @SQLITE_STATUS_MEMORY_USED, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @sqlite3StatusUp(i32 %46, i32 %47)
  %49 = load i32, i32* @SQLITE_STATUS_MALLOC_COUNT, align 4
  %50 = call i32 @sqlite3StatusUp(i32 %49, i32 1)
  br label %51

51:                                               ; preds = %43, %37
  %52 = load i8*, i8** %5, align 8
  %53 = load i8**, i8*** %4, align 8
  store i8* %52, i8** %53, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3StatusHighwater(i32, i32) #1

declare dso_local i64 @sqlite3StatusValue(i32) #1

declare dso_local i32 @sqlite3MallocAlarm(i32) #1

declare dso_local i32 @sqlite3MallocSize(i8*) #1

declare dso_local i32 @sqlite3StatusUp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
