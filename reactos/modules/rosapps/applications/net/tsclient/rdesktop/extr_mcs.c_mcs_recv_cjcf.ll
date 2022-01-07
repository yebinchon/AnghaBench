; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_mcs.c_mcs_recv_cjcf.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_mcs.c_mcs_recv_cjcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@False = common dso_local global i32 0, align 4
@MCS_CJCF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"expected CJcf, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"CJrq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mcs_recv_cjcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_recv_cjcf(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32* @iso_recv(i32* %7, i32* null)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @False, align 4
  store i32 %12, i32* %2, align 4
  br label %47

13:                                               ; preds = %1
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @in_uint8(i32* %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 2
  %19 = load i32, i32* @MCS_CJCF, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @False, align 4
  store i32 %24, i32* %2, align 4
  br label %47

25:                                               ; preds = %13
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @in_uint8(i32* %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @False, align 4
  store i32 %34, i32* %2, align 4
  br label %47

35:                                               ; preds = %25
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @in_uint8s(i32* %36, i32 4)
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @in_uint8s(i32* %42, i32 2)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @s_check_end(i32* %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %31, %21, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32* @iso_recv(i32*, i32*) #1

declare dso_local i32 @in_uint8(i32*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @in_uint8s(i32*, i32) #1

declare dso_local i32 @s_check_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
