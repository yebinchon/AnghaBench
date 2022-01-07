; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_add_data_to_buffer.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_add_data_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32** }

@CRYPTO_PACKET_BUFFER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i32*)* @add_data_to_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_data_to_buffer(%struct.TYPE_3__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %10, %13
  %15 = load i64, i64* @CRYPTO_PACKET_BUFFER_SIZE, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @CRYPTO_PACKET_BUFFER_SIZE, align 8
  %21 = urem i64 %19, %20
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32**, i32*** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %64

30:                                               ; preds = %18
  %31 = call i32* @malloc(i32 4)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %64

35:                                               ; preds = %30
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @memcpy(i32* %36, i32* %37, i32 4)
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  store i32* %39, i32** %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %45, %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %52, %55
  %57 = icmp uge i64 %49, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %35
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %35
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %34, %29, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
