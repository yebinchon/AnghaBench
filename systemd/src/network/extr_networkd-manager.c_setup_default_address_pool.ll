; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_setup_default_address_pool.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_setup_default_address_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"fd00::\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"10.0.0.0\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"172.16.0.0\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"192.168.0.0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @setup_default_address_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_default_address_pool(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @assert(i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @AF_INET6, align 4
  %10 = call i32 @address_pool_new_from_string(i32* %8, i32** %4, i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 8)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @AF_INET, align 4
  %18 = call i32 @address_pool_new_from_string(i32* %16, i32** %4, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %40

23:                                               ; preds = %15
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @AF_INET, align 4
  %26 = call i32 @address_pool_new_from_string(i32* %24, i32** %4, i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 12)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %40

31:                                               ; preds = %23
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @AF_INET, align 4
  %34 = call i32 @address_pool_new_from_string(i32* %32, i32** %4, i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 16)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %29, %21, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @address_pool_new_from_string(i32*, i32**, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
