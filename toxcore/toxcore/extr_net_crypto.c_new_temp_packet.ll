; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_new_temp_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_net_crypto.c_new_temp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32* }

@MAX_CRYPTO_PACKET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32)* @new_temp_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_temp_packet(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MAX_CRYPTO_PACKET_SIZE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %4
  store i32 -1, i32* %5, align 4
  br label %57

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.TYPE_3__* @get_crypto_connection(i32* %20, i32 %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %10, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %24 = icmp eq %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %57

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = call i32* @malloc(i32 %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %57

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @free(i32* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memcpy(i32* %43, i32* %44, i32 %45)
  %47 = load i32*, i32** %11, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %42, %31, %25, %18
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_3__* @get_crypto_connection(i32*, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
