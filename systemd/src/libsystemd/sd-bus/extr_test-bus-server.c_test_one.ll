; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-server.c_test_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-server.c_test_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i32, i32, i32, i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@server = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @test_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_one(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.context, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = call i32 @zero(%struct.context* byval(%struct.context) align 8 %10)
  %16 = load i32, i32* @AF_UNIX, align 4
  %17 = load i32, i32* @SOCK_STREAM, align 4
  %18 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @socketpair(i32 %16, i32 %17, i32 0, i32 %19)
  %21 = icmp sge i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @server, align 4
  %33 = call i32 @pthread_create(i32* %11, i32* null, i32 %32, %struct.context* %10)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32, i32* %13, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %61

39:                                               ; preds = %4
  %40 = call i32 @client(%struct.context* %10)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @pthread_join(i32 %41, i8** %12)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %14, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %61

48:                                               ; preds = %39
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %5, align 4
  br label %61

53:                                               ; preds = %48
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @PTR_TO_INT(i8* %54)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @PTR_TO_INT(i8* %58)
  store i32 %59, i32* %5, align 4
  br label %61

60:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %57, %51, %45, %36
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @zero(%struct.context* byval(%struct.context) align 8) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.context*) #1

declare dso_local i32 @client(%struct.context*) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i32 @PTR_TO_INT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
