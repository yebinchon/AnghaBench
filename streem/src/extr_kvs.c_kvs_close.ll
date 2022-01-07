; ModuleID = '/home/carl/AnghaBench/streem/src/extr_kvs.c_kvs_close.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_kvs.c_kvs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"no kvs given\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@kvs = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @kvs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvs_close(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = call %struct.TYPE_3__* @get_kvs(i32 %11, i32* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %10, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @strm_raise(i32* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @STRM_NG, align 4
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %4
  %21 = load i32, i32* @kvs, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kh_destroy(i32 %21, i32 %24)
  %26 = load i32, i32* @STRM_OK, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %16
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.TYPE_3__* @get_kvs(i32, i32*) #1

declare dso_local i32 @strm_raise(i32*, i8*) #1

declare dso_local i32 @kh_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
