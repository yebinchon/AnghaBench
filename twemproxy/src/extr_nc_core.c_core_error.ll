; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_core.c_core_error.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_core.c_core_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"get soerr on %c %d failed, ignored: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.conn*)* @core_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @core_error(%struct.context* %0, %struct.conn* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca %struct.conn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.context* %0, %struct.context** %3, align 8
  store %struct.conn* %1, %struct.conn** %4, align 8
  %7 = load %struct.conn*, %struct.conn** %4, align 8
  %8 = getelementptr inbounds %struct.conn, %struct.conn* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.conn*, %struct.conn** %4, align 8
  %14 = getelementptr inbounds %struct.conn, %struct.conn* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 112, i32 115
  br label %19

19:                                               ; preds = %12, %11
  %20 = phi i32 [ 99, %11 ], [ %18, %12 ]
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %6, align 1
  %22 = load %struct.conn*, %struct.conn** %4, align 8
  %23 = getelementptr inbounds %struct.conn, %struct.conn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @nc_get_soerror(i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load i8, i8* %6, align 1
  %30 = load %struct.conn*, %struct.conn** %4, align 8
  %31 = getelementptr inbounds %struct.conn, %struct.conn* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 @log_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8 signext %29, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %28, %19
  %37 = load i32, i32* @errno, align 4
  %38 = load %struct.conn*, %struct.conn** %4, align 8
  %39 = getelementptr inbounds %struct.conn, %struct.conn* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.context*, %struct.context** %3, align 8
  %41 = load %struct.conn*, %struct.conn** %4, align 8
  %42 = call i32 @core_close(%struct.context* %40, %struct.conn* %41)
  ret void
}

declare dso_local i64 @nc_get_soerror(i32) #1

declare dso_local i32 @log_warn(i8*, i8 signext, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @core_close(%struct.context*, %struct.conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
