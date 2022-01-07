; ModuleID = '/home/carl/AnghaBench/streem/src/extr_kvs.c_kvs_new.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_kvs.c_kvs_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_kvs = type { i32, i32, i32, i32, i32 }

@STRM_NG = common dso_local global i32 0, align 4
@ns_kvs = common dso_local global i32 0, align 4
@STRM_PTR_AUX = common dso_local global i32 0, align 4
@kvs = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @kvs_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvs_new(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.strm_kvs*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = call %struct.strm_kvs* @malloc(i32 20)
  store %struct.strm_kvs* %11, %struct.strm_kvs** %10, align 8
  %12 = load %struct.strm_kvs*, %struct.strm_kvs** %10, align 8
  %13 = icmp ne %struct.strm_kvs* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @STRM_NG, align 4
  store i32 %15, i32* %5, align 4
  br label %36

16:                                               ; preds = %4
  %17 = load i32, i32* @ns_kvs, align 4
  %18 = load %struct.strm_kvs*, %struct.strm_kvs** %10, align 8
  %19 = getelementptr inbounds %struct.strm_kvs, %struct.strm_kvs* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @STRM_PTR_AUX, align 4
  %21 = load %struct.strm_kvs*, %struct.strm_kvs** %10, align 8
  %22 = getelementptr inbounds %struct.strm_kvs, %struct.strm_kvs* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @kvs, align 4
  %24 = call i32 @kh_init(i32 %23)
  %25 = load %struct.strm_kvs*, %struct.strm_kvs** %10, align 8
  %26 = getelementptr inbounds %struct.strm_kvs, %struct.strm_kvs* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.strm_kvs*, %struct.strm_kvs** %10, align 8
  %28 = getelementptr inbounds %struct.strm_kvs, %struct.strm_kvs* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.strm_kvs*, %struct.strm_kvs** %10, align 8
  %30 = getelementptr inbounds %struct.strm_kvs, %struct.strm_kvs* %29, i32 0, i32 1
  %31 = call i32 @pthread_mutex_init(i32* %30, i32* null)
  %32 = load %struct.strm_kvs*, %struct.strm_kvs** %10, align 8
  %33 = call i32 @strm_ptr_value(%struct.strm_kvs* %32)
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @STRM_OK, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %16, %14
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.strm_kvs* @malloc(i32) #1

declare dso_local i32 @kh_init(i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @strm_ptr_value(%struct.strm_kvs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
