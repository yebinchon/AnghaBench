; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_vxlan.c_config_parse_vxlan_ttl.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_vxlan.c_config_parse_vxlan_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Failed to parse VXLAN TTL '%s', ignoring assignment: %m\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Invalid VXLAN TTL '%s'. TTL must be <= 255. Ignoring assignment.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_vxlan_ttl(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %22 = alloca %struct.TYPE_2__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
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
  %25 = load i8*, i8** %21, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %22, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %17, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %19, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %20, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %19, align 8
  %36 = call i64 @streq(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %10
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %68

41:                                               ; preds = %10
  %42 = load i8*, i8** %19, align 8
  %43 = call i32 @safe_atou(i8* %42, i32* %23)
  store i32 %43, i32* %24, align 4
  %44 = load i32, i32* %24, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* @LOG_ERR, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %24, align 4
  %52 = load i8*, i8** %19, align 8
  %53 = call i32 @log_syntax(i8* %47, i32 %48, i8* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  store i32 0, i32* %11, align 4
  br label %69

54:                                               ; preds = %41
  %55 = load i32, i32* %23, align 4
  %56 = icmp ugt i32 %55, 255
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* @LOG_ERR, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i8*, i8** %19, align 8
  %63 = call i32 @log_syntax(i8* %58, i32 %59, i8* %60, i32 %61, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  store i32 0, i32* %11, align 4
  br label %69

64:                                               ; preds = %54
  %65 = load i32, i32* %23, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %38
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %57, %46
  %70 = load i32, i32* %11, align 4
  ret i32 %70
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @safe_atou(i8*, i32*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
