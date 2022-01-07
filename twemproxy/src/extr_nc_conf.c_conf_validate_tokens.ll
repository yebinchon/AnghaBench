; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_validate_tokens.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_validate_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NC_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"conf: no token (%d) is disallowed\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"conf: version directive token (%d) is disallowed\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"conf: tag directive token (%d) is disallowed\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"conf: document start token (%d) is disallowed\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"conf: document end token (%d) is disallowed\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"conf: flow sequence start token (%d) is disallowed\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"conf: flow sequence end token (%d) is disallowed\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"conf: flow mapping start token (%d) is disallowed\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"conf: flow mapping end token (%d) is disallowed\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"conf: flow entry token (%d) is disallowed\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"conf: alias token (%d) is disallowed\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"conf: anchor token (%d) is disallowed\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"conf: tag token (%d) is disallowed\00", align 1
@LOG_VVERB = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"conf '%s' has valid tokens\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"conf: unknown token (%d) is disallowed\00", align 1
@NC_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.conf*)* @conf_validate_tokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @conf_validate_tokens(%struct.conf* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.conf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.conf* %0, %struct.conf** %3, align 8
  %8 = load %struct.conf*, %struct.conf** %3, align 8
  %9 = call i64 @conf_yaml_init(%struct.conf* %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @NC_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %2, align 8
  br label %104

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %91, %15
  %17 = load %struct.conf*, %struct.conf** %3, align 8
  %18 = call i64 @conf_token_next(%struct.conf* %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @NC_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %2, align 8
  br label %104

24:                                               ; preds = %16
  %25 = load %struct.conf*, %struct.conf** %3, align 8
  %26 = getelementptr inbounds %struct.conf, %struct.conf* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %78 [
    i32 135, label %30
    i32 128, label %33
    i32 131, label %36
    i32 142, label %39
    i32 143, label %42
    i32 137, label %45
    i32 138, label %48
    i32 139, label %51
    i32 140, label %54
    i32 141, label %57
    i32 149, label %60
    i32 148, label %63
    i32 130, label %66
    i32 144, label %69
    i32 145, label %69
    i32 147, label %69
    i32 146, label %69
    i32 136, label %70
    i32 129, label %70
    i32 134, label %70
    i32 132, label %71
    i32 133, label %72
  ]

30:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %81

33:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %81

36:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @log_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %81

39:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @log_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %81

42:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  br label %81

45:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @log_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  br label %81

48:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @log_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  br label %81

51:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  br label %81

54:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  br label %81

57:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %58)
  br label %81

60:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %61)
  br label %81

63:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @log_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %64)
  br label %81

66:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %67)
  br label %81

69:                                               ; preds = %24, %24, %24, %24
  br label %81

70:                                               ; preds = %24, %24, %24
  br label %81

71:                                               ; preds = %24
  br label %81

72:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  %73 = load i32, i32* @LOG_VVERB, align 4
  %74 = load %struct.conf*, %struct.conf** %3, align 8
  %75 = getelementptr inbounds %struct.conf, %struct.conf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @log_debug(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %76)
  br label %81

78:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @log_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %72, %71, %70, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30
  %82 = load %struct.conf*, %struct.conf** %3, align 8
  %83 = call i32 @conf_token_done(%struct.conf* %82)
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %87, %84
  %92 = phi i1 [ false, %84 ], [ %90, %87 ]
  br i1 %92, label %16, label %93

93:                                               ; preds = %91
  %94 = load %struct.conf*, %struct.conf** %3, align 8
  %95 = call i32 @conf_yaml_deinit(%struct.conf* %94)
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %93
  %99 = load i64, i64* @NC_OK, align 8
  br label %102

100:                                              ; preds = %93
  %101 = load i64, i64* @NC_ERROR, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i64 [ %99, %98 ], [ %101, %100 ]
  store i64 %103, i64* %2, align 8
  br label %104

104:                                              ; preds = %102, %22, %13
  %105 = load i64, i64* %2, align 8
  ret i64 %105
}

declare dso_local i64 @conf_yaml_init(%struct.conf*) #1

declare dso_local i64 @conf_token_next(%struct.conf*) #1

declare dso_local i32 @log_error(i8*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, i32) #1

declare dso_local i32 @conf_token_done(%struct.conf*) #1

declare dso_local i32 @conf_yaml_deinit(%struct.conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
