; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_log.c_log_level_down.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_log.c_log_level_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logger = type { i64 }

@logger = common dso_local global %struct.logger zeroinitializer, align 8
@LOG_EMERG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"down log level to %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_level_down() #0 {
  %1 = alloca %struct.logger*, align 8
  store %struct.logger* @logger, %struct.logger** %1, align 8
  %2 = load %struct.logger*, %struct.logger** %1, align 8
  %3 = getelementptr inbounds %struct.logger, %struct.logger* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @LOG_EMERG, align 8
  %6 = icmp sgt i64 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load %struct.logger*, %struct.logger** %1, align 8
  %9 = getelementptr inbounds %struct.logger, %struct.logger* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.logger*, %struct.logger** %1, align 8
  %13 = getelementptr inbounds %struct.logger, %struct.logger* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @log_safe(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %14)
  br label %16

16:                                               ; preds = %7, %0
  ret void
}

declare dso_local i32 @log_safe(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
