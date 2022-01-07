; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_core.c_core_send.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_core.c_core_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { {}*, i32, i64, i64 }

@NC_OK = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"send on %c %d failed: status: %d errno: %d %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.context*, %struct.conn*)* @core_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @core_send(%struct.context* %0, %struct.conn* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca %struct.conn*, align 8
  %5 = alloca i64, align 8
  store %struct.context* %0, %struct.context** %3, align 8
  store %struct.conn* %1, %struct.conn** %4, align 8
  %6 = load %struct.conn*, %struct.conn** %4, align 8
  %7 = getelementptr inbounds %struct.conn, %struct.conn* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i64 (%struct.context*, %struct.conn*)**
  %9 = load i64 (%struct.context*, %struct.conn*)*, i64 (%struct.context*, %struct.conn*)** %8, align 8
  %10 = load %struct.context*, %struct.context** %3, align 8
  %11 = load %struct.conn*, %struct.conn** %4, align 8
  %12 = call i64 %9(%struct.context* %10, %struct.conn* %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @NC_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load i32, i32* @LOG_INFO, align 4
  %18 = load %struct.conn*, %struct.conn** %4, align 8
  %19 = getelementptr inbounds %struct.conn, %struct.conn* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %30

23:                                               ; preds = %16
  %24 = load %struct.conn*, %struct.conn** %4, align 8
  %25 = getelementptr inbounds %struct.conn, %struct.conn* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 112, i32 115
  br label %30

30:                                               ; preds = %23, %22
  %31 = phi i32 [ 99, %22 ], [ %29, %23 ]
  %32 = trunc i32 %31 to i8
  %33 = load %struct.conn*, %struct.conn** %4, align 8
  %34 = getelementptr inbounds %struct.conn, %struct.conn* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 @log_debug(i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8 signext %32, i32 %35, i64 %36, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %30, %2
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

declare dso_local i32 @log_debug(i32, i8*, i8 signext, i32, i64, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
