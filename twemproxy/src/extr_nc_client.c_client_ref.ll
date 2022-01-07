; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_client.c_client_ref.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_client.c_client_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { i32*, i32*, i64, i64, i32, i64 }
%struct.server_pool = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@conn_tqe = common dso_local global i32 0, align 4
@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ref conn %p owner %p into pool '%.*s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @client_ref(%struct.conn* %0, i8* %1) #0 {
  %3 = alloca %struct.conn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.server_pool*, align 8
  store %struct.conn* %0, %struct.conn** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.server_pool*
  store %struct.server_pool* %7, %struct.server_pool** %5, align 8
  %8 = load %struct.conn*, %struct.conn** %3, align 8
  %9 = getelementptr inbounds %struct.conn, %struct.conn* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.conn*, %struct.conn** %3, align 8
  %14 = getelementptr inbounds %struct.conn, %struct.conn* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ false, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.conn*, %struct.conn** %3, align 8
  %23 = getelementptr inbounds %struct.conn, %struct.conn* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.conn*, %struct.conn** %3, align 8
  %29 = getelementptr inbounds %struct.conn, %struct.conn* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.conn*, %struct.conn** %3, align 8
  %31 = getelementptr inbounds %struct.conn, %struct.conn* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.conn*, %struct.conn** %3, align 8
  %33 = getelementptr inbounds %struct.conn, %struct.conn* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %35 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %39 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %38, i32 0, i32 1
  %40 = load %struct.conn*, %struct.conn** %3, align 8
  %41 = load i32, i32* @conn_tqe, align 4
  %42 = call i32 @TAILQ_INSERT_TAIL(i32* %39, %struct.conn* %40, i32 %41)
  %43 = load i8*, i8** %4, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.conn*, %struct.conn** %3, align 8
  %46 = getelementptr inbounds %struct.conn, %struct.conn* %45, i32 0, i32 0
  store i32* %44, i32** %46, align 8
  %47 = load i32, i32* @LOG_VVERB, align 4
  %48 = load %struct.conn*, %struct.conn** %3, align 8
  %49 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %50 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %51 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %55 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @log_debug(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.conn* %48, %struct.server_pool* %49, i32 %53, i32 %57)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.conn*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.conn*, %struct.server_pool*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
