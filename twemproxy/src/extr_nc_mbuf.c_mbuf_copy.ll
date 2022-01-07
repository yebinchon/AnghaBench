; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_mbuf.c_mbuf_copy.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_mbuf.c_mbuf_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbuf_copy(%struct.mbuf* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %49

10:                                               ; preds = %3
  %11 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %12 = call i32 @mbuf_full(%struct.mbuf* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %17 = call i64 @mbuf_size(%struct.mbuf* %16)
  %18 = icmp ule i64 %15, %17
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i1 [ false, %10 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ult i32* %23, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp uge i32* %29, %32
  br label %34

34:                                               ; preds = %28, %19
  %35 = phi i1 [ true, %19 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @nc_memcpy(i64 %40, i32* %41, i64 %42)
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %34, %9
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mbuf_full(%struct.mbuf*) #1

declare dso_local i64 @mbuf_size(%struct.mbuf*) #1

declare dso_local i32 @nc_memcpy(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
