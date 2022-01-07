; ModuleID = '/home/carl/AnghaBench/redis/src/extr_ae.c_aeWait.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_ae.c_aeWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }

@AE_READABLE = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@AE_WRITABLE = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aeWait(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pollfd, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %11 = call i32 @memset(%struct.pollfd* %8, i32 0, i32 12)
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @AE_READABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @POLLIN, align 4
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %18, %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @AE_WRITABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @POLLOUT, align 4
  %30 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @poll(%struct.pollfd* %8, i32 1, i64 %34)
  store i32 %35, i32* %10, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %79

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @POLLIN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @AE_READABLE, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %37
  %48 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @POLLOUT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @AE_WRITABLE, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %53, %47
  %58 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @POLLERR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @AE_WRITABLE, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @POLLHUP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @AE_WRITABLE, align 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %81

79:                                               ; preds = %33
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @memset(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
