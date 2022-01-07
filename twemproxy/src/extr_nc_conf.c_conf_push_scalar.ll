; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_push_scalar.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_push_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }
%struct.string = type { i32 }

@NC_ERROR = common dso_local global i64 0, align 8
@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"push '%.*s'\00", align 1
@NC_ENOMEM = common dso_local global i64 0, align 8
@NC_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.conf*)* @conf_push_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @conf_push_scalar(%struct.conf* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.conf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.string*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.conf* %0, %struct.conf** %3, align 8
  %8 = load %struct.conf*, %struct.conf** %3, align 8
  %9 = getelementptr inbounds %struct.conf, %struct.conf* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load %struct.conf*, %struct.conf** %3, align 8
  %15 = getelementptr inbounds %struct.conf, %struct.conf* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* @NC_ERROR, align 8
  store i64 %23, i64* %2, align 8
  br label %53

24:                                               ; preds = %1
  %25 = load i32, i32* @LOG_VVERB, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @log_debug(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %26, i32* %27)
  %29 = load %struct.conf*, %struct.conf** %3, align 8
  %30 = getelementptr inbounds %struct.conf, %struct.conf* %29, i32 0, i32 0
  %31 = call %struct.string* @array_push(i32* %30)
  store %struct.string* %31, %struct.string** %5, align 8
  %32 = load %struct.string*, %struct.string** %5, align 8
  %33 = icmp eq %struct.string* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i64, i64* @NC_ENOMEM, align 8
  store i64 %35, i64* %2, align 8
  br label %53

36:                                               ; preds = %24
  %37 = load %struct.string*, %struct.string** %5, align 8
  %38 = call i32 @string_init(%struct.string* %37)
  %39 = load %struct.string*, %struct.string** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @string_copy(%struct.string* %39, i32* %40, i64 %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @NC_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load %struct.conf*, %struct.conf** %3, align 8
  %48 = getelementptr inbounds %struct.conf, %struct.conf* %47, i32 0, i32 0
  %49 = call i32 @array_pop(i32* %48)
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %53

51:                                               ; preds = %36
  %52 = load i64, i64* @NC_OK, align 8
  store i64 %52, i64* %2, align 8
  br label %53

53:                                               ; preds = %51, %46, %34, %22
  %54 = load i64, i64* %2, align 8
  ret i64 %54
}

declare dso_local i32 @log_debug(i32, i8*, i64, i32*) #1

declare dso_local %struct.string* @array_push(i32*) #1

declare dso_local i32 @string_init(%struct.string*) #1

declare dso_local i64 @string_copy(%struct.string*, i32*, i64) #1

declare dso_local i32 @array_pop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
