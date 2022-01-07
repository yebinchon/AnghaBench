; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_aux.c_fts3auxGrowStatArray.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_aux.c_fts3auxGrowStatArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.Fts3auxColstats* }
%struct.Fts3auxColstats = type { i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @fts3auxGrowStatArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3auxGrowStatArray(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Fts3auxColstats*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %7, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.Fts3auxColstats*, %struct.Fts3auxColstats** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = call i64 @sqlite3_realloc64(%struct.Fts3auxColstats* %15, i32 %19)
  %21 = inttoptr i64 %20 to %struct.Fts3auxColstats*
  store %struct.Fts3auxColstats* %21, %struct.Fts3auxColstats** %6, align 8
  %22 = load %struct.Fts3auxColstats*, %struct.Fts3auxColstats** %6, align 8
  %23 = icmp eq %struct.Fts3auxColstats* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %25, i32* %3, align 4
  br label %50

26:                                               ; preds = %12
  %27 = load %struct.Fts3auxColstats*, %struct.Fts3auxColstats** %6, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.Fts3auxColstats, %struct.Fts3auxColstats* %27, i64 %31
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memset(%struct.Fts3auxColstats* %32, i32 0, i32 %40)
  %42 = load %struct.Fts3auxColstats*, %struct.Fts3auxColstats** %6, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store %struct.Fts3auxColstats* %42, %struct.Fts3auxColstats** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %26, %2
  %49 = load i32, i32* @SQLITE_OK, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %24
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @sqlite3_realloc64(%struct.Fts3auxColstats*, i32) #1

declare dso_local i32 @memset(%struct.Fts3auxColstats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
