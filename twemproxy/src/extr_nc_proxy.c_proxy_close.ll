; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_proxy.c_proxy_close.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_proxy.c_proxy_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i32, i32 (%struct.conn*)*, i32, i32, i32*, i32*, i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"close p %d failed, ignored: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proxy_close(%struct.context* %0, %struct.conn* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca %struct.conn*, align 8
  %5 = alloca i64, align 8
  store %struct.context* %0, %struct.context** %3, align 8
  store %struct.conn* %1, %struct.conn** %4, align 8
  %6 = load %struct.conn*, %struct.conn** %4, align 8
  %7 = getelementptr inbounds %struct.conn, %struct.conn* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.conn*, %struct.conn** %4, align 8
  %12 = getelementptr inbounds %struct.conn, %struct.conn* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.conn*, %struct.conn** %4, align 8
  %20 = getelementptr inbounds %struct.conn, %struct.conn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.conn*, %struct.conn** %4, align 8
  %25 = getelementptr inbounds %struct.conn, %struct.conn* %24, i32 0, i32 1
  %26 = load i32 (%struct.conn*)*, i32 (%struct.conn*)** %25, align 8
  %27 = load %struct.conn*, %struct.conn** %4, align 8
  %28 = call i32 %26(%struct.conn* %27)
  %29 = load %struct.conn*, %struct.conn** %4, align 8
  %30 = call i32 @conn_put(%struct.conn* %29)
  br label %75

31:                                               ; preds = %15
  %32 = load %struct.conn*, %struct.conn** %4, align 8
  %33 = getelementptr inbounds %struct.conn, %struct.conn* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.conn*, %struct.conn** %4, align 8
  %39 = getelementptr inbounds %struct.conn, %struct.conn* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.conn*, %struct.conn** %4, align 8
  %45 = getelementptr inbounds %struct.conn, %struct.conn* %44, i32 0, i32 3
  %46 = call i32 @TAILQ_EMPTY(i32* %45)
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.conn*, %struct.conn** %4, align 8
  %49 = getelementptr inbounds %struct.conn, %struct.conn* %48, i32 0, i32 2
  %50 = call i32 @TAILQ_EMPTY(i32* %49)
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load %struct.conn*, %struct.conn** %4, align 8
  %53 = getelementptr inbounds %struct.conn, %struct.conn* %52, i32 0, i32 1
  %54 = load i32 (%struct.conn*)*, i32 (%struct.conn*)** %53, align 8
  %55 = load %struct.conn*, %struct.conn** %4, align 8
  %56 = call i32 %54(%struct.conn* %55)
  %57 = load %struct.conn*, %struct.conn** %4, align 8
  %58 = getelementptr inbounds %struct.conn, %struct.conn* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @close(i32 %59)
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %31
  %64 = load %struct.conn*, %struct.conn** %4, align 8
  %65 = getelementptr inbounds %struct.conn, %struct.conn* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @strerror(i32 %67)
  %69 = call i32 @log_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %63, %31
  %71 = load %struct.conn*, %struct.conn** %4, align 8
  %72 = getelementptr inbounds %struct.conn, %struct.conn* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  %73 = load %struct.conn*, %struct.conn** %4, align 8
  %74 = call i32 @conn_put(%struct.conn* %73)
  br label %75

75:                                               ; preds = %70, %23
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @conn_put(%struct.conn*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @log_error(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
