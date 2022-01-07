; ModuleID = '/home/carl/AnghaBench/timescaledb/src/telemetry/extr_telemetry.c_get_pgversion_string.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/telemetry/extr_telemetry.c_get_pgversion_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [19 x i8] c"server_version_num\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_pgversion_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_pgversion_string() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = call %struct.TYPE_4__* (...) @makeStringInfo()
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %1, align 8
  %8 = call i8* @GetConfigOptionByName(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strtol(i8* %9, i32* null, i32 10)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = sdiv i64 %11, 10000
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %2, align 4
  %14 = load i64, i64* %6, align 8
  %15 = sdiv i64 %14, 100
  %16 = srem i64 %15, 100
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load i64, i64* %6, align 8
  %19 = srem i64 %18, 100
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i64, i64* %6, align 8
  %22 = icmp slt i64 %21, 100000
  br i1 %22, label %23, label %38

23:                                               ; preds = %0
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 6
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (%struct.TYPE_4__*, i8*, i32, i32, ...) @appendStringInfo(%struct.TYPE_4__* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  br label %52

38:                                               ; preds = %0
  %39 = load i32, i32* %2, align 4
  %40 = icmp sge i32 %39, 10
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 0
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ false, %38 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (%struct.TYPE_4__*, i8*, i32, i32, ...) @appendStringInfo(%struct.TYPE_4__* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %29
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  ret i8* %55
}

declare dso_local %struct.TYPE_4__* @makeStringInfo(...) #1

declare dso_local i8* @GetConfigOptionByName(i8*, i32*, i32) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_4__*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
