; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_deltadelta.c_deltadelta_compressed_recv.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_deltadelta.c_deltadelta_compressed_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid recv in deltadelta: bad bool\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deltadelta_compressed_recv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %8, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @pq_getmsgbyte(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @ERROR, align 4
  %19 = call i32 @elog(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %14, %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @pq_getmsgint64(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pq_getmsgint64(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32* @simple8brle_serialized_recv(i32 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* %3, align 4
  %31 = call i32* @simple8brle_serialized_recv(i32 %30)
  store i32* %31, i32** %8, align 8
  br label %32

32:                                               ; preds = %29, %20
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @delta_delta_from_parts(i32 %33, i32 %34, i32* %35, i32* %36)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @PG_RETURN_POINTER(i32* %38)
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @pq_getmsgbyte(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @pq_getmsgint64(i32) #1

declare dso_local i32* @simple8brle_serialized_recv(i32) #1

declare dso_local i32* @delta_delta_from_parts(i32, i32, i32*, i32*) #1

declare dso_local i32 @PG_RETURN_POINTER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
