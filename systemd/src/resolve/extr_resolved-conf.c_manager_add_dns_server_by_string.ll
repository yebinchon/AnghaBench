; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-conf.c_manager_add_dns_server_by_string.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-conf.c_manager_add_dns_server_by_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @manager_add_dns_server_by_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_add_dns_server_by_string(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %union.in_addr_union, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @assert(i8* %13)
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @assert(i8* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @in_addr_ifindex_from_string_auto(i8* %17, i32* %9, %union.in_addr_union* %8, i32* %11)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %46

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dns_server_address_valid(i32 %24, %union.in_addr_union* %8)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %46

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @manager_get_first_dns_server(i8* %29, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32* @dns_server_find(i32 %31, i32 %32, %union.in_addr_union* %8, i32 %33)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @dns_server_move_back_and_unmark(i32* %38)
  store i32 0, i32* %4, align 4
  br label %46

40:                                               ; preds = %28
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @dns_server_new(i8* %41, i32* null, i32 %42, i32* null, i32 %43, %union.in_addr_union* %8, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %37, %27, %21
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @in_addr_ifindex_from_string_auto(i8*, i32*, %union.in_addr_union*, i32*) #1

declare dso_local i32 @dns_server_address_valid(i32, %union.in_addr_union*) #1

declare dso_local i32* @dns_server_find(i32, i32, %union.in_addr_union*, i32) #1

declare dso_local i32 @manager_get_first_dns_server(i8*, i32) #1

declare dso_local i32 @dns_server_move_back_and_unmark(i32*) #1

declare dso_local i32 @dns_server_new(i8*, i32*, i32, i32*, i32, %union.in_addr_union*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
