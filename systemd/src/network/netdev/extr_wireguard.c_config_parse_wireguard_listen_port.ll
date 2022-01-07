; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_wireguard.c_config_parse_wireguard_listen_port.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_wireguard.c_config_parse_wireguard_listen_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Invalid port specification, ignoring assignment: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_wireguard_listen_port(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %24 = load i8*, i8** %20, align 8
  %25 = bitcast i8* %24 to i64*
  store i64* %25, i64** %22, align 8
  %26 = load i8*, i8** %19, align 8
  %27 = call i32 @assert(i8* %26)
  %28 = load i8*, i8** %20, align 8
  %29 = call i32 @assert(i8* %28)
  %30 = load i8*, i8** %19, align 8
  %31 = call i64 @isempty(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %10
  %34 = load i8*, i8** %19, align 8
  %35 = call i64 @streq(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %10
  %38 = load i64*, i64** %22, align 8
  store i64 0, i64* %38, align 8
  store i32 0, i32* %11, align 4
  br label %54

39:                                               ; preds = %33
  %40 = load i8*, i8** %19, align 8
  %41 = load i64*, i64** %22, align 8
  %42 = call i32 @parse_ip_port(i8* %40, i64* %41)
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %23, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* @LOG_ERR, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %23, align 4
  %51 = load i8*, i8** %19, align 8
  %52 = call i32 @log_syntax(i8* %46, i32 %47, i8* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  store i32 0, i32* %11, align 4
  br label %54

53:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %53, %45, %37
  %55 = load i32, i32* %11, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @parse_ip_port(i8*, i64*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
