; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-process-util.c_test_getpid_cached.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-process-util.c_test_getpid_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@CLD_EXITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getpid_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getpid_cached() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = call i64 (...) @raw_getpid()
  store i64 %9, i64* %2, align 8
  %10 = call i64 (...) @getpid_cached()
  store i64 %10, i64* %3, align 8
  %11 = call i64 (...) @getpid()
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %0
  %20 = phi i1 [ false, %0 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert_se(i32 %21)
  %23 = call i64 (...) @fork()
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp sge i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %19
  %31 = call i64 (...) @raw_getpid()
  store i64 %31, i64* %2, align 8
  %32 = call i64 (...) @getpid_cached()
  store i64 %32, i64* %3, align 8
  %33 = call i64 (...) @getpid()
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i64, i64* %2, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %30
  %42 = phi i1 [ false, %30 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert_se(i32 %43)
  %45 = load i32, i32* @EXIT_SUCCESS, align 4
  %46 = call i32 @_exit(i32 %45) #3
  unreachable

47:                                               ; preds = %19
  %48 = call i64 (...) @raw_getpid()
  store i64 %48, i64* %5, align 8
  %49 = call i64 (...) @getpid_cached()
  store i64 %49, i64* %6, align 8
  %50 = call i64 (...) @getpid()
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, i64* %2, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp eq i64 %59, %60
  br label %62

62:                                               ; preds = %58, %54, %47
  %63 = phi i1 [ false, %54 ], [ false, %47 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert_se(i32 %64)
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @wait_for_terminate(i64 %66, %struct.TYPE_3__* %1)
  %68 = icmp sge i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert_se(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert_se(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CLD_EXITED, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert_se(i32 %80)
  ret void
}

declare dso_local i64 @raw_getpid(...) #1

declare dso_local i64 @getpid_cached(...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @fork(...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @wait_for_terminate(i64, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
