; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-brvlan.c_config_parse_brvlan_untagged.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-brvlan.c_config_parse_brvlan_untagged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Could not parse VLAN: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_brvlan_untagged(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
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
  %26 = load i8*, i8** %21, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %22, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @assert(i8* %28)
  %30 = load i8*, i8** %15, align 8
  %31 = call i32 @assert(i8* %30)
  %32 = load i8*, i8** %17, align 8
  %33 = call i32 @assert(i8* %32)
  %34 = load i8*, i8** %19, align 8
  %35 = call i32 @assert(i8* %34)
  %36 = load i8*, i8** %20, align 8
  %37 = call i32 @assert(i8* %36)
  %38 = load i8*, i8** %19, align 8
  %39 = call i32 @parse_vid_range(i8* %38, i64* %24, i64* %25)
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* %23, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %10
  %43 = load i8*, i8** %12, align 8
  %44 = load i32, i32* @LOG_ERR, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %23, align 4
  %48 = load i8*, i8** %19, align 8
  %49 = call i32 @log_syntax(i8* %43, i32 %44, i8* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %48)
  store i32 0, i32* %11, align 4
  br label %72

50:                                               ; preds = %10
  br label %51

51:                                               ; preds = %66, %50
  %52 = load i64, i64* %24, align 8
  %53 = load i64, i64* %25, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i64, i64* %24, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @set_bit(i64 %56, i32 %59)
  %61 = load i64, i64* %24, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @set_bit(i64 %61, i32 %64)
  br label %66

66:                                               ; preds = %55
  %67 = load i64, i64* %24, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %24, align 8
  br label %51

69:                                               ; preds = %51
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %69, %42
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @parse_vid_range(i8*, i64*, i64*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
