; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-radv.c_config_parse_router_preference.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-radv.c_config_parse_router_preference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"high\00", align 1
@SD_NDISC_PREFERENCE_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@SD_NDISC_PREFERENCE_MEDIUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@SD_NDISC_PREFERENCE_LOW = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"Router preference '%s' is invalid, ignoring assignment: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_router_preference(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %21 = alloca %struct.TYPE_2__*, align 8
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
  %22 = load i8*, i8** %20, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %21, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @assert(i8* %24)
  %26 = load i8*, i8** %14, align 8
  %27 = call i32 @assert(i8* %26)
  %28 = load i8*, i8** %16, align 8
  %29 = call i32 @assert(i8* %28)
  %30 = load i8*, i8** %18, align 8
  %31 = call i32 @assert(i8* %30)
  %32 = load i8*, i8** %19, align 8
  %33 = call i32 @assert(i8* %32)
  %34 = load i8*, i8** %18, align 8
  %35 = call i64 @streq(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %10
  %38 = load i32, i32* @SD_NDISC_PREFERENCE_HIGH, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %68

41:                                               ; preds = %10
  %42 = load i8*, i8** %18, align 8
  %43 = call i64 @STR_IN_SET(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @SD_NDISC_PREFERENCE_MEDIUM, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %67

49:                                               ; preds = %41
  %50 = load i8*, i8** %18, align 8
  %51 = call i64 @streq(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @SD_NDISC_PREFERENCE_LOW, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %66

57:                                               ; preds = %49
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* @LOG_ERR, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  %64 = load i8*, i8** %18, align 8
  %65 = call i32 @log_syntax(i8* %58, i32 %59, i8* %60, i32 %61, i32 %63, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %57, %53
  br label %67

67:                                               ; preds = %66, %45
  br label %68

68:                                               ; preds = %67, %37
  ret i32 0
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
