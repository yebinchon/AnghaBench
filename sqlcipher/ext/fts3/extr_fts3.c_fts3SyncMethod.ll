; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3SyncMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3SyncMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fts3SyncMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3SyncMethod(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 64, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sqlite3_last_insert_rowid(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = call i32 @sqlite3Fts3PendingTermsFlush(%struct.TYPE_6__* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SQLITE_OK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %67

20:                                               ; preds = %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 4
  br i1 %24, label %25, label %67

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 255
  br i1 %34, label %35, label %67

35:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = call i32 @sqlite3Fts3MaxLevel(%struct.TYPE_6__* %36, i32* %7)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SQLITE_OK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi i1 [ true, %35 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sdiv i32 %53, 2
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %57, 64
  br i1 %58, label %59, label %66

59:                                               ; preds = %44
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sqlite3Fts3Incrmerge(%struct.TYPE_6__* %60, i32 %61, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %59, %44
  br label %67

67:                                               ; preds = %66, %30, %25, %20, %1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = call i32 @sqlite3Fts3SegmentsClose(%struct.TYPE_6__* %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @sqlite3_set_last_insert_rowid(i32 %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @sqlite3_last_insert_rowid(i32) #1

declare dso_local i32 @sqlite3Fts3PendingTermsFlush(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3Fts3MaxLevel(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts3Incrmerge(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @sqlite3Fts3SegmentsClose(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3_set_last_insert_rowid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
