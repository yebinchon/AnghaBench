; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_test-networkd-conf.c_test_config_parse_hwaddr_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_test-networkd-conf.c_test_config_parse_hwaddr_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_addr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"lvalue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.ether_addr*)* @test_config_parse_hwaddr_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_config_parse_hwaddr_one(i8* %0, i32 %1, %struct.ether_addr* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ether_addr*, align 8
  %7 = alloca %struct.ether_addr*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ether_addr* %2, %struct.ether_addr** %6, align 8
  store %struct.ether_addr* null, %struct.ether_addr** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @config_parse_hwaddr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* %9, %struct.ether_addr** %7, i32* null)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert_se(i32 %14)
  %16 = load %struct.ether_addr*, %struct.ether_addr** %6, align 8
  %17 = icmp ne %struct.ether_addr* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.ether_addr*, %struct.ether_addr** %7, align 8
  %20 = ptrtoint %struct.ether_addr* %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = load %struct.ether_addr*, %struct.ether_addr** %6, align 8
  %23 = load %struct.ether_addr*, %struct.ether_addr** %7, align 8
  %24 = call %struct.ether_addr* @ether_addr_equal(%struct.ether_addr* %22, %struct.ether_addr* %23)
  %25 = ptrtoint %struct.ether_addr* %24 to i32
  %26 = call i32 @assert_se(i32 %25)
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.ether_addr*, %struct.ether_addr** %7, align 8
  %29 = icmp eq %struct.ether_addr* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  br label %32

32:                                               ; preds = %27, %18
  %33 = load %struct.ether_addr*, %struct.ether_addr** %7, align 8
  %34 = call i32 @free(%struct.ether_addr* %33)
  ret void
}

declare dso_local i32 @config_parse_hwaddr(i8*, i8*, i32, i8*, i32, i8*, i32, i8*, %struct.ether_addr**, i32*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local %struct.ether_addr* @ether_addr_equal(%struct.ether_addr*, %struct.ether_addr*) #1

declare dso_local i32 @free(%struct.ether_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
