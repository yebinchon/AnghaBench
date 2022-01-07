; ModuleID = '/home/carl/AnghaBench/streem/src/extr_io.c_strm_writeio.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_io.c_strm_writeio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }
%struct.write_data = type { %struct.TYPE_3__*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@strm_consumer = common dso_local global i32 0, align 4
@write_cb = common dso_local global i32 0, align 4
@write_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @strm_writeio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @strm_writeio(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.write_data*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  %9 = call %struct.write_data* @malloc(i32 16)
  store %struct.write_data* %9, %struct.write_data** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i8* @fdopen(i64 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.write_data*, %struct.write_data** %3, align 8
  %15 = getelementptr inbounds %struct.write_data, %struct.write_data* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = load %struct.write_data*, %struct.write_data** %3, align 8
  %18 = getelementptr inbounds %struct.write_data, %struct.write_data* %17, i32 0, i32 0
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %18, align 8
  %19 = load i32, i32* @strm_consumer, align 4
  %20 = load i32, i32* @write_cb, align 4
  %21 = load i32, i32* @write_close, align 4
  %22 = load %struct.write_data*, %struct.write_data** %3, align 8
  %23 = bitcast %struct.write_data* %22 to i8*
  %24 = call i32* @strm_stream_new(i32 %19, i32 %20, i32 %21, i8* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  br label %27

27:                                               ; preds = %8, %1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  ret i32* %30
}

declare dso_local %struct.write_data* @malloc(i32) #1

declare dso_local i8* @fdopen(i64, i8*) #1

declare dso_local i32* @strm_stream_new(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
