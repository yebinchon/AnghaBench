; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_http.c__slave.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_http.c__slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmHttpSlave = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.chmFile* }
%struct.chmFile = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_slave(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.chmHttpSlave*, align 8
  %4 = alloca %struct.chmFile*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.chmHttpSlave*
  store %struct.chmHttpSlave* %6, %struct.chmHttpSlave** %3, align 8
  %7 = load %struct.chmHttpSlave*, %struct.chmHttpSlave** %3, align 8
  %8 = getelementptr inbounds %struct.chmHttpSlave, %struct.chmHttpSlave* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.chmFile*, %struct.chmFile** %10, align 8
  store %struct.chmFile* %11, %struct.chmFile** %4, align 8
  %12 = load %struct.chmHttpSlave*, %struct.chmHttpSlave** %3, align 8
  %13 = getelementptr inbounds %struct.chmHttpSlave, %struct.chmHttpSlave* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.chmFile*, %struct.chmFile** %4, align 8
  %16 = call i32 @service_request(i32 %14, %struct.chmFile* %15)
  %17 = load %struct.chmHttpSlave*, %struct.chmHttpSlave** %3, align 8
  %18 = getelementptr inbounds %struct.chmHttpSlave, %struct.chmHttpSlave* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @close(i32 %19)
  %21 = load %struct.chmHttpSlave*, %struct.chmHttpSlave** %3, align 8
  %22 = call i32 @free(%struct.chmHttpSlave* %21)
  ret i8* null
}

declare dso_local i32 @service_request(i32, %struct.chmFile*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.chmHttpSlave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
