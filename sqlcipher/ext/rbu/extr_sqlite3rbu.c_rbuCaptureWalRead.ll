; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuCaptureWalRead.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuCaptureWalRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i64, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@WAL_LOCK_WRITE = common dso_local global i32 0, align 4
@WAL_LOCK_CKPT = common dso_local global i32 0, align 4
@WAL_LOCK_READ0 = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@SQLITE_INTERNAL = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @rbuCaptureWalRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbuCaptureWalRead(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @WAL_LOCK_WRITE, align 4
  %13 = shl i32 1, %12
  %14 = load i32, i32* @WAL_LOCK_CKPT, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  %17 = load i32, i32* @WAL_LOCK_READ0, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @SQLITE_BUSY, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @SQLITE_INTERNAL, align 4
  store i32 %30, i32* %4, align 4
  br label %117

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %31
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  br label %52

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i64 [ %50, %47 ], [ 64, %51 ]
  %54 = mul i64 %53, 2
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 16
  %62 = trunc i64 %61 to i32
  %63 = call i64 @sqlite3_realloc64(%struct.TYPE_6__* %58, i32 %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %11, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %66 = icmp eq %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %68, i32* %4, align 4
  br label %117

69:                                               ; preds = %52
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 5
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %69, %31
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 %78, 32
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 24
  %82 = sdiv i32 %79, %81
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %9, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %77
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %77
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 5
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i64 %95, i64* %103, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = load i32, i32* @SQLITE_OK, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %94, %67, %26
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i64 @sqlite3_realloc64(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
