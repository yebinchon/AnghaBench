; ModuleID = '/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-gatewayd.c_request_parse_arguments.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-gatewayd.c_request_parse_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MHD_Connection = type { i32 }

@MHD_GET_ARGUMENT_KIND = common dso_local global i32 0, align 4
@request_parse_arguments_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MHD_Connection*, %struct.MHD_Connection*)* @request_parse_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_parse_arguments(%struct.MHD_Connection* %0, %struct.MHD_Connection* %1) #0 {
  %3 = alloca %struct.MHD_Connection*, align 8
  %4 = alloca %struct.MHD_Connection*, align 8
  store %struct.MHD_Connection* %0, %struct.MHD_Connection** %3, align 8
  store %struct.MHD_Connection* %1, %struct.MHD_Connection** %4, align 8
  %5 = load %struct.MHD_Connection*, %struct.MHD_Connection** %3, align 8
  %6 = call i32 @assert(%struct.MHD_Connection* %5)
  %7 = load %struct.MHD_Connection*, %struct.MHD_Connection** %4, align 8
  %8 = call i32 @assert(%struct.MHD_Connection* %7)
  %9 = load %struct.MHD_Connection*, %struct.MHD_Connection** %3, align 8
  %10 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.MHD_Connection*, %struct.MHD_Connection** %4, align 8
  %12 = load i32, i32* @MHD_GET_ARGUMENT_KIND, align 4
  %13 = load i32, i32* @request_parse_arguments_iterator, align 4
  %14 = load %struct.MHD_Connection*, %struct.MHD_Connection** %3, align 8
  %15 = call i32 @MHD_get_connection_values(%struct.MHD_Connection* %11, i32 %12, i32 %13, %struct.MHD_Connection* %14)
  %16 = load %struct.MHD_Connection*, %struct.MHD_Connection** %3, align 8
  %17 = getelementptr inbounds %struct.MHD_Connection, %struct.MHD_Connection* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  ret i32 %18
}

declare dso_local i32 @assert(%struct.MHD_Connection*) #1

declare dso_local i32 @MHD_get_connection_values(%struct.MHD_Connection*, i32, i32, %struct.MHD_Connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
