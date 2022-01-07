; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp-common.c_config_parse_dhcp.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp-common.c_config_parse_dhcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@ADDRESS_FAMILY_NO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"v4\00", align 1
@ADDRESS_FAMILY_IPV4 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"v6\00", align 1
@ADDRESS_FAMILY_IPV6 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@ADDRESS_FAMILY_YES = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to parse DHCP option, ignoring: %s\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"DHCP=%s is deprecated, please use DHCP=%s instead.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_dhcp(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %23 = alloca i64, align 8
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
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @assert(i8* %26)
  %28 = load i8*, i8** %17, align 8
  %29 = call i32 @assert(i8* %28)
  %30 = load i8*, i8** %19, align 8
  %31 = call i32 @assert(i8* %30)
  %32 = load i8*, i8** %20, align 8
  %33 = call i32 @assert(i8* %32)
  %34 = load i8*, i8** %19, align 8
  %35 = call i64 @address_family_from_string(i8* %34)
  store i64 %35, i64* %23, align 8
  %36 = load i64, i64* %23, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %10
  %39 = load i8*, i8** %19, align 8
  %40 = call i64 @streq(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @ADDRESS_FAMILY_NO, align 8
  store i64 %43, i64* %23, align 8
  br label %72

44:                                               ; preds = %38
  %45 = load i8*, i8** %19, align 8
  %46 = call i64 @streq(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* @ADDRESS_FAMILY_IPV4, align 8
  store i64 %49, i64* %23, align 8
  br label %71

50:                                               ; preds = %44
  %51 = load i8*, i8** %19, align 8
  %52 = call i64 @streq(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* @ADDRESS_FAMILY_IPV6, align 8
  store i64 %55, i64* %23, align 8
  br label %70

56:                                               ; preds = %50
  %57 = load i8*, i8** %19, align 8
  %58 = call i64 @streq(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* @ADDRESS_FAMILY_YES, align 8
  store i64 %61, i64* %23, align 8
  br label %69

62:                                               ; preds = %56
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* @LOG_ERR, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i8*, i8** %19, align 8
  %68 = call i32 (i8*, i32, i8*, i32, i32, i8*, i8*, ...) @log_syntax(i8* %63, i32 %64, i8* %65, i32 %66, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  store i32 0, i32* %11, align 4
  br label %84

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %48
  br label %72

72:                                               ; preds = %71, %42
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* @LOG_WARNING, align 4
  %75 = load i8*, i8** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i8*, i8** %19, align 8
  %78 = load i64, i64* %23, align 8
  %79 = call i32 @address_family_to_string(i64 %78)
  %80 = call i32 (i8*, i32, i8*, i32, i32, i8*, i8*, ...) @log_syntax(i8* %73, i32 %74, i8* %75, i32 %76, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* %77, i32 %79)
  br label %81

81:                                               ; preds = %72, %10
  %82 = load i64, i64* %23, align 8
  %83 = load i64*, i64** %22, align 8
  store i64 %82, i64* %83, align 8
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %81, %62
  %85 = load i32, i32* %11, align 4
  ret i32 %85
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @address_family_from_string(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @address_family_to_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
