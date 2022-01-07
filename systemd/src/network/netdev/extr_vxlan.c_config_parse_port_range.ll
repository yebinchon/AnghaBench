; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_vxlan.c_config_parse_port_range.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_vxlan.c_config_parse_port_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"Failed to parse VXLAN port range '%s'. Port should be greater than 0 and less than 65535.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_port_range(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %22 = alloca %struct.TYPE_4__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
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
  %26 = load i8*, i8** %21, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %22, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @assert(i8* %28)
  %30 = load i8*, i8** %17, align 8
  %31 = call i32 @assert(i8* %30)
  %32 = load i8*, i8** %19, align 8
  %33 = call i32 @assert(i8* %32)
  %34 = load i8*, i8** %20, align 8
  %35 = call i32 @assert(i8* %34)
  %36 = load i8*, i8** %19, align 8
  %37 = call i32 @parse_ip_port_range(i8* %36, i8** %23, i8** %24)
  store i32 %37, i32* %25, align 4
  %38 = load i32, i32* %25, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %10
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* @LOG_ERR, align 4
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %25, align 4
  %46 = load i8*, i8** %19, align 8
  %47 = call i32 @log_syntax(i8* %41, i32 %42, i8* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i8* %46)
  store i32 0, i32* %11, align 4
  br label %57

48:                                               ; preds = %10
  %49 = load i8*, i8** %23, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load i8*, i8** %24, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %48, %40
  %58 = load i32, i32* %11, align 4
  ret i32 %58
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @parse_ip_port_range(i8*, i8**, i8**) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
