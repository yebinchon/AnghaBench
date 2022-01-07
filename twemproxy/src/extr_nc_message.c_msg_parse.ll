; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_parse.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i64, i32 (%struct.context*, %struct.conn*, %struct.msg*, i32*)* }
%struct.msg = type { i32, i32 (%struct.msg*)* }

@NC_OK = common dso_local global i32 0, align 4
@NC_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.context*, %struct.conn*, %struct.msg*)* @msg_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_parse(%struct.context* %0, %struct.conn* %1, %struct.msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.conn*, align 8
  %7 = alloca %struct.msg*, align 8
  %8 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %5, align 8
  store %struct.conn* %1, %struct.conn** %6, align 8
  store %struct.msg* %2, %struct.msg** %7, align 8
  %9 = load %struct.msg*, %struct.msg** %7, align 8
  %10 = call i64 @msg_empty(%struct.msg* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.conn*, %struct.conn** %6, align 8
  %14 = getelementptr inbounds %struct.conn, %struct.conn* %13, i32 0, i32 1
  %15 = load i32 (%struct.context*, %struct.conn*, %struct.msg*, i32*)*, i32 (%struct.context*, %struct.conn*, %struct.msg*, i32*)** %14, align 8
  %16 = load %struct.context*, %struct.context** %5, align 8
  %17 = load %struct.conn*, %struct.conn** %6, align 8
  %18 = load %struct.msg*, %struct.msg** %7, align 8
  %19 = call i32 %15(%struct.context* %16, %struct.conn* %17, %struct.msg* %18, i32* null)
  %20 = load i32, i32* @NC_OK, align 4
  store i32 %20, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load %struct.msg*, %struct.msg** %7, align 8
  %23 = getelementptr inbounds %struct.msg, %struct.msg* %22, i32 0, i32 1
  %24 = load i32 (%struct.msg*)*, i32 (%struct.msg*)** %23, align 8
  %25 = load %struct.msg*, %struct.msg** %7, align 8
  %26 = call i32 %24(%struct.msg* %25)
  %27 = load %struct.msg*, %struct.msg** %7, align 8
  %28 = getelementptr inbounds %struct.msg, %struct.msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %42 [
    i32 129, label %30
    i32 128, label %35
    i32 130, label %40
  ]

30:                                               ; preds = %21
  %31 = load %struct.context*, %struct.context** %5, align 8
  %32 = load %struct.conn*, %struct.conn** %6, align 8
  %33 = load %struct.msg*, %struct.msg** %7, align 8
  %34 = call i32 @msg_parsed(%struct.context* %31, %struct.conn* %32, %struct.msg* %33)
  store i32 %34, i32* %8, align 4
  br label %47

35:                                               ; preds = %21
  %36 = load %struct.context*, %struct.context** %5, align 8
  %37 = load %struct.conn*, %struct.conn** %6, align 8
  %38 = load %struct.msg*, %struct.msg** %7, align 8
  %39 = call i32 @msg_repair(%struct.context* %36, %struct.conn* %37, %struct.msg* %38)
  store i32 %39, i32* %8, align 4
  br label %47

40:                                               ; preds = %21
  %41 = load i32, i32* @NC_OK, align 4
  store i32 %41, i32* %8, align 4
  br label %47

42:                                               ; preds = %21
  %43 = load i32, i32* @NC_ERROR, align 4
  store i32 %43, i32* %8, align 4
  %44 = load i64, i64* @errno, align 8
  %45 = load %struct.conn*, %struct.conn** %6, align 8
  %46 = getelementptr inbounds %struct.conn, %struct.conn* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %40, %35, %30
  %48 = load %struct.conn*, %struct.conn** %6, align 8
  %49 = getelementptr inbounds %struct.conn, %struct.conn* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @NC_ERROR, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %12
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @msg_empty(%struct.msg*) #1

declare dso_local i32 @msg_parsed(%struct.context*, %struct.conn*, %struct.msg*) #1

declare dso_local i32 @msg_repair(%struct.context*, %struct.conn*, %struct.msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
