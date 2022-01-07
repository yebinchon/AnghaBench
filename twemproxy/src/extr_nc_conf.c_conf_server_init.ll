; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_server_init.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_server_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_server = type { i64, i32, i64, i64, i32, i32, i32 }

@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"init conf server %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conf_server*)* @conf_server_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conf_server_init(%struct.conf_server* %0) #0 {
  %2 = alloca %struct.conf_server*, align 8
  store %struct.conf_server* %0, %struct.conf_server** %2, align 8
  %3 = load %struct.conf_server*, %struct.conf_server** %2, align 8
  %4 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %3, i32 0, i32 6
  %5 = call i32 @string_init(i32* %4)
  %6 = load %struct.conf_server*, %struct.conf_server** %2, align 8
  %7 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %6, i32 0, i32 5
  %8 = call i32 @string_init(i32* %7)
  %9 = load %struct.conf_server*, %struct.conf_server** %2, align 8
  %10 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %9, i32 0, i32 4
  %11 = call i32 @string_init(i32* %10)
  %12 = load %struct.conf_server*, %struct.conf_server** %2, align 8
  %13 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.conf_server*, %struct.conf_server** %2, align 8
  %15 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.conf_server*, %struct.conf_server** %2, align 8
  %17 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %16, i32 0, i32 1
  %18 = call i32 @memset(i32* %17, i32 0, i32 4)
  %19 = load %struct.conf_server*, %struct.conf_server** %2, align 8
  %20 = getelementptr inbounds %struct.conf_server, %struct.conf_server* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @LOG_VVERB, align 4
  %22 = load %struct.conf_server*, %struct.conf_server** %2, align 8
  %23 = call i32 @log_debug(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.conf_server* %22)
  ret void
}

declare dso_local i32 @string_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.conf_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
