; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_set_default_options.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_set_default_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instance = type { i8*, i64, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32* }

@NC_LOG_DEFAULT = common dso_local global i32 0, align 4
@NC_LOG_PATH = common dso_local global i32 0, align 4
@NC_CONF_PATH = common dso_local global i32 0, align 4
@NC_STATS_PORT = common dso_local global i32 0, align 4
@NC_STATS_ADDR = common dso_local global i32 0, align 4
@NC_STATS_INTERVAL = common dso_local global i32 0, align 4
@NC_MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"gethostname failed, ignored: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@NC_MBUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.instance*)* @nc_set_default_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nc_set_default_options(%struct.instance* %0) #0 {
  %2 = alloca %struct.instance*, align 8
  %3 = alloca i32, align 4
  store %struct.instance* %0, %struct.instance** %2, align 8
  %4 = load %struct.instance*, %struct.instance** %2, align 8
  %5 = getelementptr inbounds %struct.instance, %struct.instance* %4, i32 0, i32 11
  store i32* null, i32** %5, align 8
  %6 = load i32, i32* @NC_LOG_DEFAULT, align 4
  %7 = load %struct.instance*, %struct.instance** %2, align 8
  %8 = getelementptr inbounds %struct.instance, %struct.instance* %7, i32 0, i32 10
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @NC_LOG_PATH, align 4
  %10 = load %struct.instance*, %struct.instance** %2, align 8
  %11 = getelementptr inbounds %struct.instance, %struct.instance* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @NC_CONF_PATH, align 4
  %13 = load %struct.instance*, %struct.instance** %2, align 8
  %14 = getelementptr inbounds %struct.instance, %struct.instance* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @NC_STATS_PORT, align 4
  %16 = load %struct.instance*, %struct.instance** %2, align 8
  %17 = getelementptr inbounds %struct.instance, %struct.instance* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @NC_STATS_ADDR, align 4
  %19 = load %struct.instance*, %struct.instance** %2, align 8
  %20 = getelementptr inbounds %struct.instance, %struct.instance* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @NC_STATS_INTERVAL, align 4
  %22 = load %struct.instance*, %struct.instance** %2, align 8
  %23 = getelementptr inbounds %struct.instance, %struct.instance* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.instance*, %struct.instance** %2, align 8
  %25 = getelementptr inbounds %struct.instance, %struct.instance* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* @NC_MAXHOSTNAMELEN, align 4
  %28 = call i32 @nc_gethostname(i8* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = call i32 @log_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.instance*, %struct.instance** %2, align 8
  %36 = getelementptr inbounds %struct.instance, %struct.instance* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* @NC_MAXHOSTNAMELEN, align 4
  %39 = call i32 @nc_snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %31, %1
  %41 = load %struct.instance*, %struct.instance** %2, align 8
  %42 = getelementptr inbounds %struct.instance, %struct.instance* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @NC_MAXHOSTNAMELEN, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i32, i32* @NC_MBUF_SIZE, align 4
  %49 = load %struct.instance*, %struct.instance** %2, align 8
  %50 = getelementptr inbounds %struct.instance, %struct.instance* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.instance*, %struct.instance** %2, align 8
  %52 = getelementptr inbounds %struct.instance, %struct.instance* %51, i32 0, i32 3
  store i64 -1, i64* %52, align 8
  %53 = load %struct.instance*, %struct.instance** %2, align 8
  %54 = getelementptr inbounds %struct.instance, %struct.instance* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = load %struct.instance*, %struct.instance** %2, align 8
  %56 = getelementptr inbounds %struct.instance, %struct.instance* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  ret void
}

declare dso_local i32 @nc_gethostname(i8*, i32) #1

declare dso_local i32 @log_warn(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @nc_snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
