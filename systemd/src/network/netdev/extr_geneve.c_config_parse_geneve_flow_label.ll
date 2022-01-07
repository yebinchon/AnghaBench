; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_geneve.c_config_parse_geneve_flow_label.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_geneve.c_config_parse_geneve_flow_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to parse Geneve flow label '%s'.\00", align 1
@GENEVE_FLOW_LABEL_MAX_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Geneve flow label '%s' not valid. Flow label range should be [0-1048575].\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_geneve_flow_label(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %36 = call i32 @safe_atou32(i8* %35, i32* %23)
  store i32 %36, i32* %24, align 4
  %37 = load i32, i32* %24, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %10
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* @LOG_ERR, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %24, align 4
  %45 = load i8*, i8** %19, align 8
  %46 = call i32 @log_syntax(i8* %40, i32 %41, i8* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %45)
  store i32 0, i32* %11, align 4
  br label %65

47:                                               ; preds = %10
  %48 = load i32, i32* %23, align 4
  %49 = load i32, i32* @GENEVE_FLOW_LABEL_MAX_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* @LOG_ERR, align 4
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %24, align 4
  %59 = load i8*, i8** %19, align 8
  %60 = call i32 @log_syntax(i8* %54, i32 %55, i8* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store i32 0, i32* %11, align 4
  br label %65

61:                                               ; preds = %47
  %62 = load i32, i32* %23, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %53, %39
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @safe_atou32(i8*, i32*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
