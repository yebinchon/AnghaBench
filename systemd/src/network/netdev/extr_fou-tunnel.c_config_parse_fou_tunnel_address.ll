; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_fou-tunnel.c_config_parse_fou_tunnel_address.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_fou-tunnel.c_config_parse_fou_tunnel_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.in_addr_union = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Foo over UDP tunnel '%s' address is invalid, ignoring assignment: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_fou_tunnel_address(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %union.in_addr_union*, align 8
  %22 = alloca %struct.TYPE_2__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %25 = load i8*, i8** %19, align 8
  %26 = bitcast i8* %25 to %union.in_addr_union*
  store %union.in_addr_union* %26, %union.in_addr_union** %21, align 8
  %27 = load i8*, i8** %20, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %22, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %16, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %18, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %19, align 8
  %36 = call i32 @assert(i8* %35)
  %37 = load i8*, i8** %16, align 8
  %38 = call i64 @streq(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %10
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32* %42, i32** %24, align 8
  br label %46

43:                                               ; preds = %10
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32* %45, i32** %24, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i8*, i8** %18, align 8
  %48 = load i32*, i32** %24, align 8
  %49 = load %union.in_addr_union*, %union.in_addr_union** %21, align 8
  %50 = call i32 @in_addr_from_string_auto(i8* %47, i32* %48, %union.in_addr_union* %49)
  store i32 %50, i32* %23, align 4
  %51 = load i32, i32* %23, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* @LOG_ERR, align 4
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %23, align 4
  %59 = load i8*, i8** %16, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = call i32 @log_syntax(i8* %54, i32 %55, i8* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %53, %46
  ret i32 0
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @in_addr_from_string_auto(i8*, i32*, %union.in_addr_union*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
