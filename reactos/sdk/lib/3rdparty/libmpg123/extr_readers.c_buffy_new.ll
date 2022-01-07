; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_buffy_new.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_buffy_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffy = type { i64, i32*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffy* (i64, i64)* @buffy_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffy* @buffy_new(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.buffy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffy*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i8* @malloc(i32 32)
  %8 = bitcast i8* %7 to %struct.buffy*
  store %struct.buffy* %8, %struct.buffy** %6, align 8
  %9 = load %struct.buffy*, %struct.buffy** %6, align 8
  %10 = icmp eq %struct.buffy* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.buffy* null, %struct.buffy** %3, align 8
  br label %45

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  br label %20

18:                                               ; preds = %12
  %19 = load i64, i64* %5, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  %22 = load %struct.buffy*, %struct.buffy** %6, align 8
  %23 = getelementptr inbounds %struct.buffy, %struct.buffy* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.buffy*, %struct.buffy** %6, align 8
  %25 = getelementptr inbounds %struct.buffy, %struct.buffy* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i8* @malloc(i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.buffy*, %struct.buffy** %6, align 8
  %31 = getelementptr inbounds %struct.buffy, %struct.buffy* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = load %struct.buffy*, %struct.buffy** %6, align 8
  %33 = getelementptr inbounds %struct.buffy, %struct.buffy* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load %struct.buffy*, %struct.buffy** %6, align 8
  %38 = call i32 @free(%struct.buffy* %37)
  store %struct.buffy* null, %struct.buffy** %3, align 8
  br label %45

39:                                               ; preds = %20
  %40 = load %struct.buffy*, %struct.buffy** %6, align 8
  %41 = getelementptr inbounds %struct.buffy, %struct.buffy* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.buffy*, %struct.buffy** %6, align 8
  %43 = getelementptr inbounds %struct.buffy, %struct.buffy* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.buffy*, %struct.buffy** %6, align 8
  store %struct.buffy* %44, %struct.buffy** %3, align 8
  br label %45

45:                                               ; preds = %39, %36, %11
  %46 = load %struct.buffy*, %struct.buffy** %3, align 8
  ret %struct.buffy* %46
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.buffy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
