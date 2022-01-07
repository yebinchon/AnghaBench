; ModuleID = '/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_network_set_dns.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/generator/extr_network-generator.c_network_set_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @network_set_dns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_set_dns(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %union.in_addr_union, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @in_addr_from_string_auto(i8* %12, i32* %10, %union.in_addr_union* %8)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call %struct.TYPE_4__* @network_get(i32* %19, i8* %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %9, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @network_new(i32* %25, i8* %26, %struct.TYPE_4__** %9)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %38

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %18
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strv_extend(i32* %35, i8* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %30, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @in_addr_from_string_auto(i8*, i32*, %union.in_addr_union*) #1

declare dso_local %struct.TYPE_4__* @network_get(i32*, i8*) #1

declare dso_local i32 @network_new(i32*, i8*, %struct.TYPE_4__**) #1

declare dso_local i32 @strv_extend(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
