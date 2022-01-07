; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_begin_parse.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_begin_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@NC_OK = common dso_local global i64 0, align 8
@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"next begin event %d\00", align 1
@CONF_MAX_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.conf*)* @conf_begin_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @conf_begin_parse(%struct.conf* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.conf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.conf* %0, %struct.conf** %3, align 8
  %6 = load %struct.conf*, %struct.conf** %3, align 8
  %7 = getelementptr inbounds %struct.conf, %struct.conf* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.conf*, %struct.conf** %3, align 8
  %12 = getelementptr inbounds %struct.conf, %struct.conf* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ false, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.conf*, %struct.conf** %3, align 8
  %21 = getelementptr inbounds %struct.conf, %struct.conf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.conf*, %struct.conf** %3, align 8
  %27 = call i64 @conf_yaml_init(%struct.conf* %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @NC_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* %2, align 8
  br label %77

33:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %71, %33
  %35 = load %struct.conf*, %struct.conf** %3, align 8
  %36 = call i64 @conf_event_next(%struct.conf* %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @NC_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %2, align 8
  br label %77

42:                                               ; preds = %34
  %43 = load i32, i32* @LOG_VVERB, align 4
  %44 = load %struct.conf*, %struct.conf** %3, align 8
  %45 = getelementptr inbounds %struct.conf, %struct.conf* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @log_debug(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.conf*, %struct.conf** %3, align 8
  %50 = getelementptr inbounds %struct.conf, %struct.conf* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %66 [
    i32 128, label %53
    i32 130, label %53
    i32 129, label %54
  ]

53:                                               ; preds = %42, %42
  br label %68

54:                                               ; preds = %42
  %55 = load %struct.conf*, %struct.conf** %3, align 8
  %56 = getelementptr inbounds %struct.conf, %struct.conf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CONF_MAX_DEPTH, align 8
  %59 = icmp slt i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  %62 = load %struct.conf*, %struct.conf** %3, align 8
  %63 = getelementptr inbounds %struct.conf, %struct.conf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  store i32 1, i32* %5, align 4
  br label %68

66:                                               ; preds = %42
  %67 = call i32 (...) @NOT_REACHED()
  br label %68

68:                                               ; preds = %66, %54, %53
  %69 = load %struct.conf*, %struct.conf** %3, align 8
  %70 = call i32 @conf_event_done(%struct.conf* %69)
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %34, label %75

75:                                               ; preds = %71
  %76 = load i64, i64* @NC_OK, align 8
  store i64 %76, i64* %2, align 8
  br label %77

77:                                               ; preds = %75, %40, %31
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @conf_yaml_init(%struct.conf*) #1

declare dso_local i64 @conf_event_next(%struct.conf*) #1

declare dso_local i32 @log_debug(i32, i8*, i32) #1

declare dso_local i32 @NOT_REACHED(...) #1

declare dso_local i32 @conf_event_done(%struct.conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
