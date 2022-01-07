; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-ndisc-ra.c_radv_recv.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-ndisc-ra.c_radv_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_fd = common dso_local global i32* null, align 8
@test_stopped = common dso_local global i32 0, align 4
@advertisement = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"Received Router Advertisement with lifetime %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%3zd: \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*)* @radv_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radv_recv(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [168 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** @test_fd, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = bitcast [168 x i8]* %11 to i8**
  %20 = call i32 @read(i32 %18, i8** %19, i32 168)
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %21, 168
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert_se(i32 %23)
  %25 = load i32, i32* @test_stopped, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32*, i32** @advertisement, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 6
  store i32 0, i32* %29, align 4
  %30 = load i32*, i32** @advertisement, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 7
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %4
  %33 = load i32*, i32** @advertisement, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = load i32*, i32** @advertisement, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 7
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %78, %32
  %43 = load i64, i64* %12, align 8
  %44 = icmp ult i64 %43, 168
  br i1 %44, label %45, label %81

45:                                               ; preds = %42
  %46 = load i64, i64* %12, align 8
  %47 = urem i64 %46, 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %12, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds [168 x i8], [168 x i8]* %11, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds [168 x i8], [168 x i8]* %11, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i32*, i32** @advertisement, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %61, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert_se(i32 %67)
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, 1
  %71 = urem i64 %70, 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %52
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %77

75:                                               ; preds = %52
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %73
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %12, align 8
  br label %42

81:                                               ; preds = %42
  %82 = load i32, i32* @test_stopped, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32*, i32** %10, align 8
  %86 = call i32* @sd_radv_get_event(i32* %85)
  store i32* %86, i32** %13, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @sd_event_exit(i32* %87, i32 0)
  store i32 0, i32* %5, align 4
  br label %95

89:                                               ; preds = %81
  %90 = load i32*, i32** %10, align 8
  %91 = call i64 @sd_radv_stop(i32* %90)
  %92 = icmp sge i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert_se(i32 %93)
  store i32 1, i32* @test_stopped, align 4
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %89, %84
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @read(i32, i8**, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @sd_radv_get_event(i32*) #1

declare dso_local i32 @sd_event_exit(i32*, i32) #1

declare dso_local i64 @sd_radv_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
