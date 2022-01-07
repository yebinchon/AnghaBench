; ModuleID = '/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfigSyslogfacilityOption.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfigSyslogfacilityOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rewriteConfigState = type { i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LOG_LOCAL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"syslog-facility\00", align 1
@syslog_facility_enum = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewriteConfigSyslogfacilityOption(%struct.rewriteConfigState* %0) #0 {
  %2 = alloca %struct.rewriteConfigState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.rewriteConfigState* %0, %struct.rewriteConfigState** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @LOG_LOCAL0, align 4
  %11 = icmp ne i32 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %13 = load i32, i32* @syslog_facility_enum, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @configEnumGetNameOrUnknown(i32 %13, i32 %14)
  store i8* %15, i8** %5, align 8
  %16 = call i32 (...) @sdsempty()
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @sdscatprintf(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %20, i8* %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i8* @configEnumGetNameOrUnknown(i32, i32) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
