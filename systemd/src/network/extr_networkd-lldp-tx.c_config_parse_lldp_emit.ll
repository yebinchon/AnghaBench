; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-lldp-tx.c_config_parse_lldp_emit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-lldp-tx.c_config_parse_lldp_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LLDP_EMIT_NO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nearest-bridge\00", align 1
@LLDP_EMIT_NEAREST_BRIDGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"non-tpmr-bridge\00", align 1
@LLDP_EMIT_NON_TPMR_BRIDGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"customer-bridge\00", align 1
@LLDP_EMIT_CUSTOMER_BRIDGE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Failed to parse LLDP emission setting, ignoring: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_lldp_emit(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %22 = alloca i32*, align 8
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
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @assert(i8* %26)
  %28 = load i8*, i8** %17, align 8
  %29 = call i32 @assert(i8* %28)
  %30 = load i8*, i8** %19, align 8
  %31 = call i32 @assert(i8* %30)
  %32 = load i8*, i8** %19, align 8
  %33 = call i64 @isempty(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %10
  %36 = load i32, i32* @LLDP_EMIT_NO, align 4
  %37 = load i32*, i32** %22, align 8
  store i32 %36, i32* %37, align 4
  br label %84

38:                                               ; preds = %10
  %39 = load i8*, i8** %19, align 8
  %40 = call i64 @streq(i8* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @LLDP_EMIT_NEAREST_BRIDGE, align 4
  %44 = load i32*, i32** %22, align 8
  store i32 %43, i32* %44, align 4
  br label %83

45:                                               ; preds = %38
  %46 = load i8*, i8** %19, align 8
  %47 = call i64 @streq(i8* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @LLDP_EMIT_NON_TPMR_BRIDGE, align 4
  %51 = load i32*, i32** %22, align 8
  store i32 %50, i32* %51, align 4
  br label %82

52:                                               ; preds = %45
  %53 = load i8*, i8** %19, align 8
  %54 = call i64 @streq(i8* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @LLDP_EMIT_CUSTOMER_BRIDGE, align 4
  %58 = load i32*, i32** %22, align 8
  store i32 %57, i32* %58, align 4
  br label %81

59:                                               ; preds = %52
  %60 = load i8*, i8** %19, align 8
  %61 = call i32 @parse_boolean(i8* %60)
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %23, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* @LOG_ERR, align 4
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i8*, i8** %19, align 8
  %70 = call i32 @log_syntax(i8* %65, i32 %66, i8* %67, i32 %68, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  store i32 0, i32* %11, align 4
  br label %85

71:                                               ; preds = %59
  %72 = load i32, i32* %23, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @LLDP_EMIT_NEAREST_BRIDGE, align 4
  br label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @LLDP_EMIT_NO, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load i32*, i32** %22, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %56
  br label %82

82:                                               ; preds = %81, %49
  br label %83

83:                                               ; preds = %82, %42
  br label %84

84:                                               ; preds = %83, %35
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %84, %64
  %86 = load i32, i32* %11, align 4
  ret i32 %86
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
