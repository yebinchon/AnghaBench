; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_open.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"conf: failed to open configuration '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@CONF_DEFAULT_ARGS = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i64 0, align 8
@CONF_DEFAULT_POOL = common dso_local global i32 0, align 4
@LOG_VVERB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"opened conf '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.conf* (i8*)* @conf_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.conf* @conf_open(i8* %0) #0 {
  %2 = alloca %struct.conf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.conf*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 @log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %12, i32 %14)
  store %struct.conf* null, %struct.conf** %2, align 8
  br label %79

16:                                               ; preds = %1
  %17 = call %struct.conf* @nc_alloc(i32 88)
  store %struct.conf* %17, %struct.conf** %5, align 8
  %18 = load %struct.conf*, %struct.conf** %5, align 8
  %19 = icmp eq %struct.conf* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @fclose(i32* %21)
  store %struct.conf* null, %struct.conf** %2, align 8
  br label %79

23:                                               ; preds = %16
  %24 = load %struct.conf*, %struct.conf** %5, align 8
  %25 = getelementptr inbounds %struct.conf, %struct.conf* %24, i32 0, i32 10
  %26 = load i32, i32* @CONF_DEFAULT_ARGS, align 4
  %27 = call i64 @array_init(i32* %25, i32 %26, i32 4)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @NC_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.conf*, %struct.conf** %5, align 8
  %33 = call i32 @nc_free(%struct.conf* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @fclose(i32* %34)
  store %struct.conf* null, %struct.conf** %2, align 8
  br label %79

36:                                               ; preds = %23
  %37 = load %struct.conf*, %struct.conf** %5, align 8
  %38 = getelementptr inbounds %struct.conf, %struct.conf* %37, i32 0, i32 11
  %39 = load i32, i32* @CONF_DEFAULT_POOL, align 4
  %40 = call i64 @array_init(i32* %38, i32 %39, i32 4)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @NC_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.conf*, %struct.conf** %5, align 8
  %46 = getelementptr inbounds %struct.conf, %struct.conf* %45, i32 0, i32 10
  %47 = call i32 @array_deinit(i32* %46)
  %48 = load %struct.conf*, %struct.conf** %5, align 8
  %49 = call i32 @nc_free(%struct.conf* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @fclose(i32* %50)
  store %struct.conf* null, %struct.conf** %2, align 8
  br label %79

52:                                               ; preds = %36
  %53 = load i8*, i8** %3, align 8
  %54 = load %struct.conf*, %struct.conf** %5, align 8
  %55 = getelementptr inbounds %struct.conf, %struct.conf* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.conf*, %struct.conf** %5, align 8
  %58 = getelementptr inbounds %struct.conf, %struct.conf* %57, i32 0, i32 9
  store i32* %56, i32** %58, align 8
  %59 = load %struct.conf*, %struct.conf** %5, align 8
  %60 = getelementptr inbounds %struct.conf, %struct.conf* %59, i32 0, i32 8
  store i64 0, i64* %60, align 8
  %61 = load %struct.conf*, %struct.conf** %5, align 8
  %62 = getelementptr inbounds %struct.conf, %struct.conf* %61, i32 0, i32 7
  store i64 0, i64* %62, align 8
  %63 = load %struct.conf*, %struct.conf** %5, align 8
  %64 = getelementptr inbounds %struct.conf, %struct.conf* %63, i32 0, i32 6
  store i64 0, i64* %64, align 8
  %65 = load %struct.conf*, %struct.conf** %5, align 8
  %66 = getelementptr inbounds %struct.conf, %struct.conf* %65, i32 0, i32 5
  store i64 0, i64* %66, align 8
  %67 = load %struct.conf*, %struct.conf** %5, align 8
  %68 = getelementptr inbounds %struct.conf, %struct.conf* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load %struct.conf*, %struct.conf** %5, align 8
  %70 = getelementptr inbounds %struct.conf, %struct.conf* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.conf*, %struct.conf** %5, align 8
  %72 = getelementptr inbounds %struct.conf, %struct.conf* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.conf*, %struct.conf** %5, align 8
  %74 = getelementptr inbounds %struct.conf, %struct.conf* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @LOG_VVERB, align 4
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @log_debug(i32 %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  %78 = load %struct.conf*, %struct.conf** %5, align 8
  store %struct.conf* %78, %struct.conf** %2, align 8
  br label %79

79:                                               ; preds = %52, %44, %31, %20, %11
  %80 = load %struct.conf*, %struct.conf** %2, align 8
  ret %struct.conf* %80
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @log_error(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.conf* @nc_alloc(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @array_init(i32*, i32, i32) #1

declare dso_local i32 @nc_free(%struct.conf*) #1

declare dso_local i32 @array_deinit(i32*) #1

declare dso_local i32 @log_debug(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
