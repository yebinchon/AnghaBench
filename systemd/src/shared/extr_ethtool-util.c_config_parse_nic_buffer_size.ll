; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_config_parse_nic_buffer_size.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_ethtool-util.c_config_parse_nic_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed to parse interface buffer value, ignoring: %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid %s value, ignoring: %s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"RxBufferSize\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"TxBufferSize\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_nic_buffer_size(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %25 = load i8*, i8** %20, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %22, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %15, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %17, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %19, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %20, align 8
  %36 = call i32 @assert(i8* %35)
  %37 = load i8*, i8** %19, align 8
  %38 = call i32 @safe_atou32(i8* %37, i32* %23)
  store i32 %38, i32* %24, align 4
  %39 = load i32, i32* %24, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %10
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %24, align 4
  %47 = load i8*, i8** %19, align 8
  %48 = call i32 (i8*, i32, i8*, i32, i32, i8*, i8*, ...) @log_syntax(i8* %42, i32 %43, i8* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %47)
  store i32 0, i32* %11, align 4
  br label %82

49:                                               ; preds = %10
  %50 = load i32, i32* %23, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* @LOG_ERR, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i8*, i8** %17, align 8
  %58 = load i8*, i8** %19, align 8
  %59 = call i32 (i8*, i32, i8*, i32, i32, i8*, i8*, ...) @log_syntax(i8* %53, i32 %54, i8* %55, i32 %56, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %58)
  store i32 0, i32* %11, align 4
  br label %82

60:                                               ; preds = %49
  %61 = load i8*, i8** %17, align 8
  %62 = call i64 @streq(i8* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %23, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %81

70:                                               ; preds = %60
  %71 = load i8*, i8** %17, align 8
  %72 = call i64 @streq(i8* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %23, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %74, %70
  br label %81

81:                                               ; preds = %80, %64
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %81, %52, %41
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @safe_atou32(i8*, i32*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, ...) #1

declare dso_local i64 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
