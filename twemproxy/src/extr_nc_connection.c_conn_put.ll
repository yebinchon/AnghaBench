; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_connection.c_conn_put.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_connection.c_conn_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { i64, i64, i32* }

@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"put conn %p\00", align 1
@nfree_connq = common dso_local global i32 0, align 4
@free_connq = common dso_local global i32 0, align 4
@conn_tqe = common dso_local global i32 0, align 4
@ncurr_cconn = common dso_local global i32 0, align 4
@ncurr_conn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @conn_put(%struct.conn* %0) #0 {
  %2 = alloca %struct.conn*, align 8
  store %struct.conn* %0, %struct.conn** %2, align 8
  %3 = load %struct.conn*, %struct.conn** %2, align 8
  %4 = getelementptr inbounds %struct.conn, %struct.conn* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load %struct.conn*, %struct.conn** %2, align 8
  %10 = getelementptr inbounds %struct.conn, %struct.conn* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load i32, i32* @LOG_VVERB, align 4
  %16 = load %struct.conn*, %struct.conn** %2, align 8
  %17 = call i32 @log_debug(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.conn* %16)
  %18 = load i32, i32* @nfree_connq, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @nfree_connq, align 4
  %20 = load %struct.conn*, %struct.conn** %2, align 8
  %21 = load i32, i32* @conn_tqe, align 4
  %22 = call i32 @TAILQ_INSERT_HEAD(i32* @free_connq, %struct.conn* %20, i32 %21)
  %23 = load %struct.conn*, %struct.conn** %2, align 8
  %24 = getelementptr inbounds %struct.conn, %struct.conn* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ncurr_cconn, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @ncurr_cconn, align 4
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i32, i32* @ncurr_conn, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* @ncurr_conn, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.conn*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
