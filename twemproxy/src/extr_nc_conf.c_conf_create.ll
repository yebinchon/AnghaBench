; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_create.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32* }

@NC_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"nutcracker: configuration file '%s' syntax is invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conf* @conf_create(i8* %0) #0 {
  %2 = alloca %struct.conf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.conf*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.conf* @conf_open(i8* %6)
  store %struct.conf* %7, %struct.conf** %5, align 8
  %8 = load %struct.conf*, %struct.conf** %5, align 8
  %9 = icmp eq %struct.conf* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.conf* null, %struct.conf** %2, align 8
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.conf*, %struct.conf** %5, align 8
  %13 = call i64 @conf_pre_validate(%struct.conf* %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @NC_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %42

18:                                               ; preds = %11
  %19 = load %struct.conf*, %struct.conf** %5, align 8
  %20 = call i64 @conf_parse(%struct.conf* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @NC_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %42

25:                                               ; preds = %18
  %26 = load %struct.conf*, %struct.conf** %5, align 8
  %27 = call i64 @conf_post_validate(%struct.conf* %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @NC_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %42

32:                                               ; preds = %25
  %33 = load %struct.conf*, %struct.conf** %5, align 8
  %34 = call i32 @conf_dump(%struct.conf* %33)
  %35 = load %struct.conf*, %struct.conf** %5, align 8
  %36 = getelementptr inbounds %struct.conf, %struct.conf* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = load %struct.conf*, %struct.conf** %5, align 8
  %40 = getelementptr inbounds %struct.conf, %struct.conf* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.conf*, %struct.conf** %5, align 8
  store %struct.conf* %41, %struct.conf** %2, align 8
  br label %53

42:                                               ; preds = %31, %24, %17
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @log_stderr(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load %struct.conf*, %struct.conf** %5, align 8
  %46 = getelementptr inbounds %struct.conf, %struct.conf* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load %struct.conf*, %struct.conf** %5, align 8
  %50 = getelementptr inbounds %struct.conf, %struct.conf* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  %51 = load %struct.conf*, %struct.conf** %5, align 8
  %52 = call i32 @conf_destroy(%struct.conf* %51)
  store %struct.conf* null, %struct.conf** %2, align 8
  br label %53

53:                                               ; preds = %42, %32, %10
  %54 = load %struct.conf*, %struct.conf** %2, align 8
  ret %struct.conf* %54
}

declare dso_local %struct.conf* @conf_open(i8*) #1

declare dso_local i64 @conf_pre_validate(%struct.conf*) #1

declare dso_local i64 @conf_parse(%struct.conf*) #1

declare dso_local i64 @conf_post_validate(%struct.conf*) #1

declare dso_local i32 @conf_dump(%struct.conf*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @log_stderr(i8*, i8*) #1

declare dso_local i32 @conf_destroy(%struct.conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
