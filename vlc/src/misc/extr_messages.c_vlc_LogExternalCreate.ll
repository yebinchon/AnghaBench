; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_messages.c_vlc_LogExternalCreate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_messages.c_vlc_LogExternalCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_logger = type { i32* }
%struct.vlc_logger_operations = type { i32 }
%struct.vlc_logger_external = type { %struct.vlc_logger, i8*, %struct.vlc_logger_operations* }

@external_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_logger* (%struct.vlc_logger_operations*, i8*)* @vlc_LogExternalCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_logger* @vlc_LogExternalCreate(%struct.vlc_logger_operations* %0, i8* %1) #0 {
  %3 = alloca %struct.vlc_logger*, align 8
  %4 = alloca %struct.vlc_logger_operations*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vlc_logger_external*, align 8
  store %struct.vlc_logger_operations* %0, %struct.vlc_logger_operations** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call %struct.vlc_logger_external* @malloc(i32 24)
  store %struct.vlc_logger_external* %7, %struct.vlc_logger_external** %6, align 8
  %8 = load %struct.vlc_logger_external*, %struct.vlc_logger_external** %6, align 8
  %9 = icmp eq %struct.vlc_logger_external* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.vlc_logger* null, %struct.vlc_logger** %3, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.vlc_logger_external*, %struct.vlc_logger_external** %6, align 8
  %16 = getelementptr inbounds %struct.vlc_logger_external, %struct.vlc_logger_external* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.vlc_logger, %struct.vlc_logger* %16, i32 0, i32 0
  store i32* @external_ops, i32** %17, align 8
  %18 = load %struct.vlc_logger_operations*, %struct.vlc_logger_operations** %4, align 8
  %19 = load %struct.vlc_logger_external*, %struct.vlc_logger_external** %6, align 8
  %20 = getelementptr inbounds %struct.vlc_logger_external, %struct.vlc_logger_external* %19, i32 0, i32 2
  store %struct.vlc_logger_operations* %18, %struct.vlc_logger_operations** %20, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.vlc_logger_external*, %struct.vlc_logger_external** %6, align 8
  %23 = getelementptr inbounds %struct.vlc_logger_external, %struct.vlc_logger_external* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.vlc_logger_external*, %struct.vlc_logger_external** %6, align 8
  %25 = getelementptr inbounds %struct.vlc_logger_external, %struct.vlc_logger_external* %24, i32 0, i32 0
  store %struct.vlc_logger* %25, %struct.vlc_logger** %3, align 8
  br label %26

26:                                               ; preds = %14, %13
  %27 = load %struct.vlc_logger*, %struct.vlc_logger** %3, align 8
  ret %struct.vlc_logger* %27
}

declare dso_local %struct.vlc_logger_external* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
