; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_malloc.c_sqlite3DbRealloc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_malloc.c_sqlite3DbRealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3DbRealloc(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i8* @sqlite3DbMallocRawNN(%struct.TYPE_8__* %15, i64 %16)
  store i8* %17, i8** %4, align 8
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sqlite3_mutex_held(i32 %21)
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @isLookaside(%struct.TYPE_8__* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %4, align 8
  br label %42

37:                                               ; preds = %28, %18
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i8* @dbReallocFinish(%struct.TYPE_8__* %38, i8* %39, i64 %40)
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %37, %35, %14
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3DbMallocRawNN(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i64 @isLookaside(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @dbReallocFinish(%struct.TYPE_8__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
