; ModuleID = '/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_memtest.c_memtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TIOCGWINSZ = common dso_local global i32 0, align 4
@ws = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"\0AYour memory passed this test.\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Please if you are still in doubt use the following two tools:\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"1) memtest86: http://www.memtest86.com/\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"2) memtester: http://pyropus.ca/software/memtester/\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memtest(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @TIOCGWINSZ, align 4
  %6 = call i32 @ioctl(i32 1, i32 %5, %struct.TYPE_3__* @ws)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 80, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ws, i32 0, i32 0), align 4
  store i32 20, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ws, i32 0, i32 1), align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i64, i64* %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @memtest_alloc_and_test(i64 %10, i32 %11)
  %13 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @memtest_alloc_and_test(i64, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
