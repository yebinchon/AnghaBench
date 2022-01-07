; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_backup.c_sqlite3BtreeCopyFile.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_backup.c_sqlite3BtreeCopyFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32 }

@SQLITE_FCNTL_OVERWRITE = common dso_local global i32 0, align 4
@SQLITE_NOTFOUND = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@BTS_PAGESIZE_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BtreeCopyFile(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %10 = call i32 @sqlite3BtreeEnter(%struct.TYPE_21__* %9)
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = call i32 @sqlite3BtreeEnter(%struct.TYPE_21__* %11)
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = call i64 @sqlite3BtreeIsInTrans(%struct.TYPE_21__* %13)
  %15 = trunc i64 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %18 = call i32 @sqlite3BtreePager(%struct.TYPE_21__* %17)
  %19 = call %struct.TYPE_19__* @sqlite3PagerFile(i32 %18)
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %6, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %2
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %26 = call i32 @sqlite3BtreeGetPageSize(%struct.TYPE_21__* %25)
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = call i64 @sqlite3BtreeLastPage(%struct.TYPE_21__* %27)
  %29 = trunc i64 %28 to i32
  %30 = mul nsw i32 %26, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %32 = load i32, i32* @SQLITE_FCNTL_OVERWRITE, align 4
  %33 = call i32 @sqlite3OsFileControl(%struct.TYPE_19__* %31, i32 %32, i32* %8)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SQLITE_NOTFOUND, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @SQLITE_OK, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %24
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %86

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %2
  %45 = call i32 @memset(%struct.TYPE_20__* %7, i32 0, i32 32)
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %51, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = call i32 @sqlite3_backup_step(%struct.TYPE_20__* %7, i32 2147483647)
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SQLITE_OK, align 4
  %59 = icmp ne i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = call i32 @sqlite3_backup_finish(%struct.TYPE_20__* %7)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @SQLITE_OK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %44
  %67 = load i32, i32* @BTS_PAGESIZE_FIXED, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %68
  store i32 %74, i32* %72, align 4
  br label %80

75:                                               ; preds = %44
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = call i32 @sqlite3BtreePager(%struct.TYPE_21__* %77)
  %79 = call i32 @sqlite3PagerClearCache(i32 %78)
  br label %80

80:                                               ; preds = %75, %66
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %82 = call i64 @sqlite3BtreeIsInTrans(%struct.TYPE_21__* %81)
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %86

86:                                               ; preds = %80, %42
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = call i32 @sqlite3BtreeLeave(%struct.TYPE_21__* %87)
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %90 = call i32 @sqlite3BtreeLeave(%struct.TYPE_21__* %89)
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @sqlite3BtreeEnter(%struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3BtreeIsInTrans(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_19__* @sqlite3PagerFile(i32) #1

declare dso_local i32 @sqlite3BtreePager(%struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3BtreeGetPageSize(%struct.TYPE_21__*) #1

declare dso_local i64 @sqlite3BtreeLastPage(%struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3OsFileControl(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @sqlite3_backup_step(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @sqlite3_backup_finish(%struct.TYPE_20__*) #1

declare dso_local i32 @sqlite3PagerClearCache(i32) #1

declare dso_local i32 @sqlite3BtreeLeave(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
