; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_audio.c_jbuf_new.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_audio.c_jbuf_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.JitterBuffer = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.JitterBuffer* (i32)* @jbuf_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.JitterBuffer* @jbuf_new(i32 %0) #0 {
  %2 = alloca %struct.JitterBuffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.JitterBuffer*, align 8
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %6

6:                                                ; preds = %11, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = mul nsw i32 %8, 4
  %10 = icmp ule i32 %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i32, i32* %4, align 4
  %13 = mul i32 %12, 2
  store i32 %13, i32* %4, align 4
  br label %6

14:                                               ; preds = %6
  %15 = call i8* @calloc(i32 16, i32 1)
  %16 = bitcast i8* %15 to %struct.JitterBuffer*
  store %struct.JitterBuffer* %16, %struct.JitterBuffer** %5, align 8
  %17 = icmp ne %struct.JitterBuffer* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store %struct.JitterBuffer* null, %struct.JitterBuffer** %2, align 8
  br label %36

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @calloc(i32 8, i32 %20)
  %22 = load %struct.JitterBuffer*, %struct.JitterBuffer** %5, align 8
  %23 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = icmp ne i8* %21, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.JitterBuffer*, %struct.JitterBuffer** %5, align 8
  %27 = call i32 @free(%struct.JitterBuffer* %26)
  store %struct.JitterBuffer* null, %struct.JitterBuffer** %2, align 8
  br label %36

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.JitterBuffer*, %struct.JitterBuffer** %5, align 8
  %31 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.JitterBuffer*, %struct.JitterBuffer** %5, align 8
  %34 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.JitterBuffer*, %struct.JitterBuffer** %5, align 8
  store %struct.JitterBuffer* %35, %struct.JitterBuffer** %2, align 8
  br label %36

36:                                               ; preds = %28, %25, %18
  %37 = load %struct.JitterBuffer*, %struct.JitterBuffer** %2, align 8
  ret %struct.JitterBuffer* %37
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.JitterBuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
