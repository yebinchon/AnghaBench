; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_test_conf.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_test_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instance = type { i32 }
%struct.conf = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"nutcracker: configuration file '%s' syntax is invalid\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"nutcracker: configuration file '%s' syntax is ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.instance*)* @nc_test_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nc_test_conf(%struct.instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.instance*, align 8
  %4 = alloca %struct.conf*, align 8
  store %struct.instance* %0, %struct.instance** %3, align 8
  %5 = load %struct.instance*, %struct.instance** %3, align 8
  %6 = getelementptr inbounds %struct.instance, %struct.instance* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.conf* @conf_create(i32 %7)
  store %struct.conf* %8, %struct.conf** %4, align 8
  %9 = load %struct.conf*, %struct.conf** %4, align 8
  %10 = icmp eq %struct.conf* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.instance*, %struct.instance** %3, align 8
  %13 = getelementptr inbounds %struct.instance, %struct.instance* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @log_stderr(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 0, i32* %2, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.conf*, %struct.conf** %4, align 8
  %18 = call i32 @conf_destroy(%struct.conf* %17)
  %19 = load %struct.instance*, %struct.instance** %3, align 8
  %20 = getelementptr inbounds %struct.instance, %struct.instance* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @log_stderr(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %16, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.conf* @conf_create(i32) #1

declare dso_local i32 @log_stderr(i8*, i32) #1

declare dso_local i32 @conf_destroy(%struct.conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
