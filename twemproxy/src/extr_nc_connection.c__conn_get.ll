; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_connection.c__conn_get.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_connection.c__conn_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i32, i32, i32* }

@free_connq = common dso_local global i32 0, align 4
@nfree_connq = common dso_local global i64 0, align 8
@conn_tqe = common dso_local global i32 0, align 4
@ntotal_conn = common dso_local global i32 0, align 4
@ncurr_conn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.conn* ()* @_conn_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.conn* @_conn_get() #0 {
  %1 = alloca %struct.conn*, align 8
  %2 = alloca %struct.conn*, align 8
  %3 = call i32 @TAILQ_EMPTY(i32* @free_connq)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @nfree_connq, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = call %struct.conn* @TAILQ_FIRST(i32* @free_connq)
  store %struct.conn* %10, %struct.conn** %2, align 8
  %11 = load i64, i64* @nfree_connq, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* @nfree_connq, align 8
  %13 = load %struct.conn*, %struct.conn** %2, align 8
  %14 = load i32, i32* @conn_tqe, align 4
  %15 = call i32 @TAILQ_REMOVE(i32* @free_connq, %struct.conn* %13, i32 %14)
  br label %22

16:                                               ; preds = %0
  %17 = call %struct.conn* @nc_alloc(i32 168)
  store %struct.conn* %17, %struct.conn** %2, align 8
  %18 = load %struct.conn*, %struct.conn** %2, align 8
  %19 = icmp eq %struct.conn* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store %struct.conn* null, %struct.conn** %1, align 8
  br label %74

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %5
  %23 = load %struct.conn*, %struct.conn** %2, align 8
  %24 = getelementptr inbounds %struct.conn, %struct.conn* %23, i32 0, i32 21
  store i32* null, i32** %24, align 8
  %25 = load %struct.conn*, %struct.conn** %2, align 8
  %26 = getelementptr inbounds %struct.conn, %struct.conn* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load %struct.conn*, %struct.conn** %2, align 8
  %28 = getelementptr inbounds %struct.conn, %struct.conn* %27, i32 0, i32 20
  %29 = call i32 @TAILQ_INIT(i32* %28)
  %30 = load %struct.conn*, %struct.conn** %2, align 8
  %31 = getelementptr inbounds %struct.conn, %struct.conn* %30, i32 0, i32 19
  %32 = call i32 @TAILQ_INIT(i32* %31)
  %33 = load %struct.conn*, %struct.conn** %2, align 8
  %34 = getelementptr inbounds %struct.conn, %struct.conn* %33, i32 0, i32 18
  store i32* null, i32** %34, align 8
  %35 = load %struct.conn*, %struct.conn** %2, align 8
  %36 = getelementptr inbounds %struct.conn, %struct.conn* %35, i32 0, i32 17
  store i32* null, i32** %36, align 8
  %37 = load %struct.conn*, %struct.conn** %2, align 8
  %38 = getelementptr inbounds %struct.conn, %struct.conn* %37, i32 0, i32 16
  store i64 0, i64* %38, align 8
  %39 = load %struct.conn*, %struct.conn** %2, align 8
  %40 = getelementptr inbounds %struct.conn, %struct.conn* %39, i32 0, i32 15
  store i64 0, i64* %40, align 8
  %41 = load %struct.conn*, %struct.conn** %2, align 8
  %42 = getelementptr inbounds %struct.conn, %struct.conn* %41, i32 0, i32 14
  store i64 0, i64* %42, align 8
  %43 = load %struct.conn*, %struct.conn** %2, align 8
  %44 = getelementptr inbounds %struct.conn, %struct.conn* %43, i32 0, i32 13
  store i64 0, i64* %44, align 8
  %45 = load %struct.conn*, %struct.conn** %2, align 8
  %46 = getelementptr inbounds %struct.conn, %struct.conn* %45, i32 0, i32 12
  store i64 0, i64* %46, align 8
  %47 = load %struct.conn*, %struct.conn** %2, align 8
  %48 = getelementptr inbounds %struct.conn, %struct.conn* %47, i32 0, i32 11
  store i64 0, i64* %48, align 8
  %49 = load %struct.conn*, %struct.conn** %2, align 8
  %50 = getelementptr inbounds %struct.conn, %struct.conn* %49, i32 0, i32 10
  store i64 0, i64* %50, align 8
  %51 = load %struct.conn*, %struct.conn** %2, align 8
  %52 = getelementptr inbounds %struct.conn, %struct.conn* %51, i32 0, i32 9
  store i64 0, i64* %52, align 8
  %53 = load %struct.conn*, %struct.conn** %2, align 8
  %54 = getelementptr inbounds %struct.conn, %struct.conn* %53, i32 0, i32 8
  store i64 0, i64* %54, align 8
  %55 = load %struct.conn*, %struct.conn** %2, align 8
  %56 = getelementptr inbounds %struct.conn, %struct.conn* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load %struct.conn*, %struct.conn** %2, align 8
  %58 = getelementptr inbounds %struct.conn, %struct.conn* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load %struct.conn*, %struct.conn** %2, align 8
  %60 = getelementptr inbounds %struct.conn, %struct.conn* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load %struct.conn*, %struct.conn** %2, align 8
  %62 = getelementptr inbounds %struct.conn, %struct.conn* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.conn*, %struct.conn** %2, align 8
  %64 = getelementptr inbounds %struct.conn, %struct.conn* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.conn*, %struct.conn** %2, align 8
  %66 = getelementptr inbounds %struct.conn, %struct.conn* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.conn*, %struct.conn** %2, align 8
  %68 = getelementptr inbounds %struct.conn, %struct.conn* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* @ntotal_conn, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @ntotal_conn, align 4
  %71 = load i32, i32* @ncurr_conn, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @ncurr_conn, align 4
  %73 = load %struct.conn*, %struct.conn** %2, align 8
  store %struct.conn* %73, %struct.conn** %1, align 8
  br label %74

74:                                               ; preds = %22, %20
  %75 = load %struct.conn*, %struct.conn** %1, align 8
  ret %struct.conn* %75
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.conn* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.conn*, i32) #1

declare dso_local %struct.conn* @nc_alloc(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
