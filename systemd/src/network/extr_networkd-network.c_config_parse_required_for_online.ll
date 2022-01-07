; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-network.c_config_parse_required_for_online.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-network.c_config_parse_required_for_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@LINK_OPERSTATE_DEGRADED = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed to parse %s= setting, ignoring assignment: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_required_for_online(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
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
  %26 = load i8*, i8** %20, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %22, align 8
  store i32 1, i32* %24, align 4
  %28 = load i8*, i8** %19, align 8
  %29 = call i64 @isempty(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %10
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i64, i64* @LINK_OPERSTATE_DEGRADED, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  store i32 0, i32* %11, align 4
  br label %66

37:                                               ; preds = %10
  %38 = load i8*, i8** %19, align 8
  %39 = call i64 @link_operstate_from_string(i8* %38)
  store i64 %39, i64* %23, align 8
  %40 = load i64, i64* %23, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load i8*, i8** %19, align 8
  %44 = call i32 @parse_boolean(i8* %43)
  store i32 %44, i32* %25, align 4
  %45 = load i32, i32* %25, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* @LOG_ERR, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %25, align 4
  %53 = load i8*, i8** %17, align 8
  %54 = load i8*, i8** %19, align 8
  %55 = call i32 @log_syntax(i8* %48, i32 %49, i8* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %53, i8* %54)
  store i32 0, i32* %11, align 4
  br label %66

56:                                               ; preds = %42
  %57 = load i32, i32* %25, align 4
  store i32 %57, i32* %24, align 4
  %58 = load i64, i64* @LINK_OPERSTATE_DEGRADED, align 8
  store i64 %58, i64* %23, align 8
  br label %59

59:                                               ; preds = %56, %37
  %60 = load i32, i32* %24, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i64, i64* %23, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %59, %47, %31
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local i64 @isempty(i8*) #1

declare dso_local i64 @link_operstate_from_string(i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
