; ModuleID = '/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_network_set_route.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_network_set_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8, %union.in_addr_union*, %union.in_addr_union*)* @network_set_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_set_route(i32* %0, i8* %1, i32 %2, i8 zeroext %3, %union.in_addr_union* %4, %union.in_addr_union* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca %union.in_addr_union*, align 8
  %13 = alloca %union.in_addr_union*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8 %3, i8* %11, align 1
  store %union.in_addr_union* %4, %union.in_addr_union** %12, align 8
  store %union.in_addr_union* %5, %union.in_addr_union** %13, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %union.in_addr_union*, %union.in_addr_union** %13, align 8
  %18 = call i64 @in_addr_is_null(i32 %16, %union.in_addr_union* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %43

21:                                               ; preds = %6
  %22 = load i32*, i32** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32* @network_get(i32* %22, i8* %23)
  store i32* %24, i32** %14, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %21
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @network_new(i32* %28, i8* %29, i32** %14)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %7, align 4
  br label %43

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i8, i8* %11, align 1
  %40 = load %union.in_addr_union*, %union.in_addr_union** %12, align 8
  %41 = load %union.in_addr_union*, %union.in_addr_union** %13, align 8
  %42 = call i32 @route_new(i32* %37, i32 %38, i8 zeroext %39, %union.in_addr_union* %40, %union.in_addr_union* %41, i32* null)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %36, %33, %20
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i64 @in_addr_is_null(i32, %union.in_addr_union*) #1

declare dso_local i32* @network_get(i32*, i8*) #1

declare dso_local i32 @network_new(i32*, i8*, i32**) #1

declare dso_local i32 @route_new(i32*, i32, i8 zeroext, %union.in_addr_union*, %union.in_addr_union*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
