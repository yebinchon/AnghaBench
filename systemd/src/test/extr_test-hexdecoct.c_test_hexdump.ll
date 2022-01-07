; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-hexdecoct.c_test_hexdump.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-hexdecoct.c_test_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"f\0Aobar\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"xxxxxxxxxxxxxxxxxxxxyz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hexdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hexdump() #0 {
  %1 = alloca [146 x i8], align 16
  %2 = alloca i32, align 4
  %3 = load i32, i32* @stdout, align 4
  %4 = call i32 @hexdump(i32 %3, i8* null, i32 0)
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 @hexdump(i32 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %7 = load i32, i32* @stdout, align 4
  %8 = call i32 @hexdump(i32 %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @hexdump(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 @hexdump(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 @hexdump(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 @hexdump(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @hexdump(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 23)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %31, %0
  %20 = load i32, i32* %2, align 4
  %21 = getelementptr inbounds [146 x i8], [146 x i8]* %1, i64 0, i64 0
  %22 = call i32 @ELEMENTSOF(i8* %21)
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = mul i32 %25, 2
  %27 = trunc i32 %26 to i8
  %28 = load i32, i32* %2, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [146 x i8], [146 x i8]* %1, i64 0, i64 %29
  store i8 %27, i8* %30, align 1
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %2, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %19

34:                                               ; preds = %19
  %35 = load i32, i32* @stdout, align 4
  %36 = getelementptr inbounds [146 x i8], [146 x i8]* %1, i64 0, i64 0
  %37 = call i32 @hexdump(i32 %35, i8* %36, i32 146)
  ret void
}

declare dso_local i32 @hexdump(i32, i8*, i32) #1

declare dso_local i32 @ELEMENTSOF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
