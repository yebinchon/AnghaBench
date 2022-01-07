; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_event_next.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_event_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"conf: failed (err %d) to get next event\00", align 1
@NC_ERROR = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.conf*)* @conf_event_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_event_next(%struct.conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.conf*, align 8
  %4 = alloca i32, align 4
  store %struct.conf* %0, %struct.conf** %3, align 8
  %5 = load %struct.conf*, %struct.conf** %3, align 8
  %6 = getelementptr inbounds %struct.conf, %struct.conf* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.conf*, %struct.conf** %3, align 8
  %11 = getelementptr inbounds %struct.conf, %struct.conf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ false, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.conf*, %struct.conf** %3, align 8
  %20 = getelementptr inbounds %struct.conf, %struct.conf* %19, i32 0, i32 1
  %21 = load %struct.conf*, %struct.conf** %3, align 8
  %22 = getelementptr inbounds %struct.conf, %struct.conf* %21, i32 0, i32 2
  %23 = call i32 @yaml_parser_parse(%struct.TYPE_2__* %20, i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %15
  %27 = load %struct.conf*, %struct.conf** %3, align 8
  %28 = getelementptr inbounds %struct.conf, %struct.conf* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @log_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @NC_ERROR, align 4
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %15
  %34 = load %struct.conf*, %struct.conf** %3, align 8
  %35 = getelementptr inbounds %struct.conf, %struct.conf* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @NC_OK, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @yaml_parser_parse(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @log_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
