; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_audio.c_jbuf_read.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_audio.c_jbuf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RTPMessage = type { i32 }
%struct.JitterBuffer = type { i32, i32, i32, i64, %struct.RTPMessage** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RTPMessage* (%struct.JitterBuffer*, i32*)* @jbuf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RTPMessage* @jbuf_read(%struct.JitterBuffer* %0, i32* %1) #0 {
  %3 = alloca %struct.RTPMessage*, align 8
  %4 = alloca %struct.JitterBuffer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.RTPMessage*, align 8
  store %struct.JitterBuffer* %0, %struct.JitterBuffer** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %9 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %12 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  store i32 0, i32* %16, align 4
  store %struct.RTPMessage* null, %struct.RTPMessage** %3, align 8
  br label %74

17:                                               ; preds = %2
  %18 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %19 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %22 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = urem i32 %20, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %26 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %25, i32 0, i32 4
  %27 = load %struct.RTPMessage**, %struct.RTPMessage*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.RTPMessage*, %struct.RTPMessage** %27, i64 %29
  %31 = load %struct.RTPMessage*, %struct.RTPMessage** %30, align 8
  %32 = icmp ne %struct.RTPMessage* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %17
  %34 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %35 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %34, i32 0, i32 4
  %36 = load %struct.RTPMessage**, %struct.RTPMessage*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.RTPMessage*, %struct.RTPMessage** %36, i64 %38
  %40 = load %struct.RTPMessage*, %struct.RTPMessage** %39, align 8
  store %struct.RTPMessage* %40, %struct.RTPMessage** %7, align 8
  %41 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %42 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %41, i32 0, i32 4
  %43 = load %struct.RTPMessage**, %struct.RTPMessage*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.RTPMessage*, %struct.RTPMessage** %43, i64 %45
  store %struct.RTPMessage* null, %struct.RTPMessage** %46, align 8
  %47 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %48 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 1, i32* %51, align 4
  %52 = load %struct.RTPMessage*, %struct.RTPMessage** %7, align 8
  store %struct.RTPMessage* %52, %struct.RTPMessage** %3, align 8
  br label %74

53:                                               ; preds = %17
  %54 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %55 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %58 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub i32 %56, %59
  %61 = zext i32 %60 to i64
  %62 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %63 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %53
  %67 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %68 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 2, i32* %71, align 4
  store %struct.RTPMessage* null, %struct.RTPMessage** %3, align 8
  br label %74

72:                                               ; preds = %53
  %73 = load i32*, i32** %5, align 8
  store i32 0, i32* %73, align 4
  store %struct.RTPMessage* null, %struct.RTPMessage** %3, align 8
  br label %74

74:                                               ; preds = %72, %66, %33, %15
  %75 = load %struct.RTPMessage*, %struct.RTPMessage** %3, align 8
  ret %struct.RTPMessage* %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
