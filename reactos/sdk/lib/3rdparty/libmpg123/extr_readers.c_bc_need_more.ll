; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_need_more.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_need_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferchain = type { i64, i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"hit end, back to beginning (%li - %li < %li)\00", align 1
@READER_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferchain*)* @bc_need_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bc_need_more(%struct.bufferchain* %0) #0 {
  %2 = alloca %struct.bufferchain*, align 8
  store %struct.bufferchain* %0, %struct.bufferchain** %2, align 8
  %3 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %4 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %7 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %10 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @debug3(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %5, i64 %8, i64 %11)
  %13 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %14 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.bufferchain*, %struct.bufferchain** %2, align 8
  %17 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* @READER_MORE, align 4
  ret i32 %18
}

declare dso_local i32 @debug3(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
