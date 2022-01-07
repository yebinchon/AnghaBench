; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_ref.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { i32*, i32, i32 }
%struct.server = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@conn_tqe = common dso_local global i32 0, align 4
@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ref conn %p owner %p into '%.*s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_ref(%struct.conn* %0, i8* %1) #0 {
  %3 = alloca %struct.conn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.server*, align 8
  store %struct.conn* %0, %struct.conn** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.server*
  store %struct.server* %7, %struct.server** %5, align 8
  %8 = load %struct.conn*, %struct.conn** %3, align 8
  %9 = getelementptr inbounds %struct.conn, %struct.conn* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.conn*, %struct.conn** %3, align 8
  %14 = getelementptr inbounds %struct.conn, %struct.conn* %13, i32 0, i32 1
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
  %28 = load %struct.server*, %struct.server** %5, align 8
  %29 = load %struct.conn*, %struct.conn** %3, align 8
  %30 = call i32 @server_resolve(%struct.server* %28, %struct.conn* %29)
  %31 = load %struct.server*, %struct.server** %5, align 8
  %32 = getelementptr inbounds %struct.server, %struct.server* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.server*, %struct.server** %5, align 8
  %36 = getelementptr inbounds %struct.server, %struct.server* %35, i32 0, i32 1
  %37 = load %struct.conn*, %struct.conn** %3, align 8
  %38 = load i32, i32* @conn_tqe, align 4
  %39 = call i32 @TAILQ_INSERT_TAIL(i32* %36, %struct.conn* %37, i32 %38)
  %40 = load i8*, i8** %4, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.conn*, %struct.conn** %3, align 8
  %43 = getelementptr inbounds %struct.conn, %struct.conn* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  %44 = load i32, i32* @LOG_VVERB, align 4
  %45 = load %struct.conn*, %struct.conn** %3, align 8
  %46 = load %struct.server*, %struct.server** %5, align 8
  %47 = load %struct.server*, %struct.server** %5, align 8
  %48 = getelementptr inbounds %struct.server, %struct.server* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.server*, %struct.server** %5, align 8
  %52 = getelementptr inbounds %struct.server, %struct.server* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @log_debug(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.conn* %45, %struct.server* %46, i32 %50, i32 %54)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @server_resolve(%struct.server*, %struct.conn*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.conn*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.conn*, %struct.server*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
