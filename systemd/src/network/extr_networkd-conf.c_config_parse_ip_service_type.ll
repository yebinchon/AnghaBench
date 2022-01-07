; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-conf.c_config_parse_ip_service_type.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-conf.c_config_parse_ip_service_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"CS4\00", align 1
@IPTOS_CLASS_CS4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"CS6\00", align 1
@IPTOS_CLASS_CS6 = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Failed to parse IPServiceType type '%s', ignoring.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_ip_service_type(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @assert(i8* %21)
  %23 = load i8*, i8** %16, align 8
  %24 = call i32 @assert(i8* %23)
  %25 = load i8*, i8** %18, align 8
  %26 = call i32 @assert(i8* %25)
  %27 = load i8*, i8** %18, align 8
  %28 = call i64 @streq(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %10
  %31 = load i32, i32* @IPTOS_CLASS_CS4, align 4
  %32 = load i8*, i8** %19, align 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 4
  br label %50

34:                                               ; preds = %10
  %35 = load i8*, i8** %18, align 8
  %36 = call i64 @streq(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @IPTOS_CLASS_CS6, align 4
  %40 = load i8*, i8** %19, align 8
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 4
  br label %49

42:                                               ; preds = %34
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* @LOG_WARNING, align 4
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i8*, i8** %18, align 8
  %48 = call i32 @log_syntax(i8* %43, i32 %44, i8* %45, i32 %46, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %42, %38
  br label %50

50:                                               ; preds = %49, %30
  ret i32 0
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
