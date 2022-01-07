; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_end_parse.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_end_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@NC_OK = common dso_local global i32 0, align 4
@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"next end event %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.conf*)* @conf_end_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_end_parse(%struct.conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.conf*, align 8
  %4 = alloca i32, align 4
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
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %52, %16
  %27 = load %struct.conf*, %struct.conf** %3, align 8
  %28 = call i32 @conf_event_next(%struct.conf* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @NC_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %60

34:                                               ; preds = %26
  %35 = load i32, i32* @LOG_VVERB, align 4
  %36 = load %struct.conf*, %struct.conf** %3, align 8
  %37 = getelementptr inbounds %struct.conf, %struct.conf* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @log_debug(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.conf*, %struct.conf** %3, align 8
  %42 = getelementptr inbounds %struct.conf, %struct.conf* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %47 [
    i32 128, label %45
    i32 129, label %46
  ]

45:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %49

46:                                               ; preds = %34
  br label %49

47:                                               ; preds = %34
  %48 = call i32 (...) @NOT_REACHED()
  br label %49

49:                                               ; preds = %47, %46, %45
  %50 = load %struct.conf*, %struct.conf** %3, align 8
  %51 = call i32 @conf_event_done(%struct.conf* %50)
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %26, label %56

56:                                               ; preds = %52
  %57 = load %struct.conf*, %struct.conf** %3, align 8
  %58 = call i32 @conf_yaml_deinit(%struct.conf* %57)
  %59 = load i32, i32* @NC_OK, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %32
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @conf_event_next(%struct.conf*) #1

declare dso_local i32 @log_debug(i32, i8*, i32) #1

declare dso_local i32 @NOT_REACHED(...) #1

declare dso_local i32 @conf_event_done(%struct.conf*) #1

declare dso_local i32 @conf_yaml_deinit(%struct.conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
