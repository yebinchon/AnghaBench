; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_parse.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_conf.c_conf_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32, i32, i64 }

@NC_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.conf*)* @conf_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @conf_parse(%struct.conf* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.conf*, align 8
  %4 = alloca i64, align 8
  store %struct.conf* %0, %struct.conf** %3, align 8
  %5 = load %struct.conf*, %struct.conf** %3, align 8
  %6 = getelementptr inbounds %struct.conf, %struct.conf* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.conf*, %struct.conf** %3, align 8
  %11 = getelementptr inbounds %struct.conf, %struct.conf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ false, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.conf*, %struct.conf** %3, align 8
  %20 = getelementptr inbounds %struct.conf, %struct.conf* %19, i32 0, i32 1
  %21 = call i64 @array_n(i32* %20)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.conf*, %struct.conf** %3, align 8
  %26 = call i64 @conf_begin_parse(%struct.conf* %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @NC_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* %2, align 8
  br label %52

32:                                               ; preds = %15
  %33 = load %struct.conf*, %struct.conf** %3, align 8
  %34 = call i64 @conf_parse_core(%struct.conf* %33, i32* null)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @NC_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* %4, align 8
  store i64 %39, i64* %2, align 8
  br label %52

40:                                               ; preds = %32
  %41 = load %struct.conf*, %struct.conf** %3, align 8
  %42 = call i64 @conf_end_parse(%struct.conf* %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @NC_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %52

48:                                               ; preds = %40
  %49 = load %struct.conf*, %struct.conf** %3, align 8
  %50 = getelementptr inbounds %struct.conf, %struct.conf* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i64, i64* @NC_OK, align 8
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %48, %46, %38, %30
  %53 = load i64, i64* %2, align 8
  ret i64 %53
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @array_n(i32*) #1

declare dso_local i64 @conf_begin_parse(%struct.conf*) #1

declare dso_local i64 @conf_parse_core(%struct.conf*, i32*) #1

declare dso_local i64 @conf_end_parse(%struct.conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
