; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_netdev.c_config_parse_netdev_kind.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_netdev.c_config_parse_netdev_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed to parse netdev kind, ignoring assignment: %s\00", align 1
@_NETDEV_KIND_INVALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [89 x i8] c"Specified netdev kind is different from the previous value '%s', ignoring assignment: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_netdev_kind(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
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
  store i64* %25, i64** %23, align 8
  %26 = load i8*, i8** %19, align 8
  %27 = call i32 @assert(i8* %26)
  %28 = load i8*, i8** %20, align 8
  %29 = call i32 @assert(i8* %28)
  %30 = load i8*, i8** %19, align 8
  %31 = call i64 @netdev_kind_from_string(i8* %30)
  store i64 %31, i64* %22, align 8
  %32 = load i64, i64* %22, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %10
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* @LOG_ERR, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i8*, i8** %19, align 8
  %40 = call i32 (i8*, i32, i8*, i32, i32, i8*, i8*, ...) @log_syntax(i8* %35, i32 %36, i8* %37, i32 %38, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 0, i32* %11, align 4
  br label %66

41:                                               ; preds = %10
  %42 = load i64*, i64** %23, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @_NETDEV_KIND_INVALID, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load i64*, i64** %23, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %22, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i64*, i64** %23, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @netdev_kind_to_string(i64 %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load i8*, i8** %19, align 8
  %62 = call i32 (i8*, i32, i8*, i32, i32, i8*, i8*, ...) @log_syntax(i8* %52, i32 %53, i8* %54, i32 %55, i32 0, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* %61)
  store i32 0, i32* %11, align 4
  br label %66

63:                                               ; preds = %46, %41
  %64 = load i64, i64* %22, align 8
  %65 = load i64*, i64** %23, align 8
  store i64 %64, i64* %65, align 8
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %63, %51, %34
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @netdev_kind_from_string(i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @netdev_kind_to_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
