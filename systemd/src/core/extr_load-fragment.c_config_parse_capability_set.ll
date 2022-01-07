; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_capability_set.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_capability_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"CapabilityBoundingSet\00", align 1
@CAP_ALL = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to parse %s= specifier '%s', ignoring: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_capability_set(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
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
  %27 = load i8*, i8** %20, align 8
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i32 0, i32* %25, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %17, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %19, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %20, align 8
  %36 = call i32 @assert(i8* %35)
  %37 = load i8*, i8** %19, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 126
  br i1 %41, label %42, label %45

42:                                               ; preds = %10
  store i32 1, i32* %25, align 4
  %43 = load i8*, i8** %19, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %19, align 8
  br label %45

45:                                               ; preds = %42, %10
  %46 = load i8*, i8** %17, align 8
  %47 = call i64 @streq(i8* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @CAP_ALL, align 8
  store i64 %50, i64* %24, align 8
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i8*, i8** %19, align 8
  %53 = call i32 @capability_set_from_string(i8* %52, i64* %23)
  store i32 %53, i32* %26, align 4
  %54 = load i32, i32* %26, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* @LOG_ERR, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %26, align 4
  %62 = load i8*, i8** %17, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = call i32 @log_syntax(i8* %57, i32 %58, i8* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %63)
  store i32 0, i32* %11, align 4
  br label %100

65:                                               ; preds = %51
  %66 = load i64, i64* %23, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load i64*, i64** %22, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %24, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %68, %65
  %74 = load i32, i32* %25, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i64, i64* %23, align 8
  %78 = xor i64 %77, -1
  br label %81

79:                                               ; preds = %73
  %80 = load i64, i64* %23, align 8
  br label %81

81:                                               ; preds = %79, %76
  %82 = phi i64 [ %78, %76 ], [ %80, %79 ]
  %83 = load i64*, i64** %22, align 8
  store i64 %82, i64* %83, align 8
  br label %99

84:                                               ; preds = %68
  %85 = load i32, i32* %25, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i64, i64* %23, align 8
  %89 = xor i64 %88, -1
  %90 = load i64*, i64** %22, align 8
  %91 = load i64, i64* %90, align 8
  %92 = and i64 %91, %89
  store i64 %92, i64* %90, align 8
  br label %98

93:                                               ; preds = %84
  %94 = load i64, i64* %23, align 8
  %95 = load i64*, i64** %22, align 8
  %96 = load i64, i64* %95, align 8
  %97 = or i64 %96, %94
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %93, %87
  br label %99

99:                                               ; preds = %98, %81
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %99, %56
  %101 = load i32, i32* %11, align 4
  ret i32 %101
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @capability_set_from_string(i8*, i64*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
