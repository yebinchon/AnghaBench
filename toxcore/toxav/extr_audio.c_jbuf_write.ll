; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_audio.c_jbuf_write.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_audio.c_jbuf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.JitterBuffer = type { i32, i32, i32, i32, %struct.RTPMessage** }
%struct.RTPMessage = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Clearing filled jitter buffer: %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.JitterBuffer*, %struct.RTPMessage*)* @jbuf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbuf_write(%struct.JitterBuffer* %0, %struct.RTPMessage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.JitterBuffer*, align 8
  %5 = alloca %struct.RTPMessage*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.JitterBuffer* %0, %struct.JitterBuffer** %4, align 8
  store %struct.RTPMessage* %1, %struct.RTPMessage** %5, align 8
  %8 = load %struct.RTPMessage*, %struct.RTPMessage** %5, align 8
  %9 = getelementptr inbounds %struct.RTPMessage, %struct.RTPMessage* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %14 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = srem i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %19 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %23 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %2
  %27 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %28 = call i32 @LOGGER_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.JitterBuffer* %27)
  %29 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %30 = call i32 @jbuf_clear(%struct.JitterBuffer* %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %33 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  %36 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %37 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.RTPMessage*, %struct.RTPMessage** %5, align 8
  %39 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %40 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %39, i32 0, i32 4
  %41 = load %struct.RTPMessage**, %struct.RTPMessage*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.RTPMessage*, %struct.RTPMessage** %41, i64 %43
  store %struct.RTPMessage* %38, %struct.RTPMessage** %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %48 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %86

49:                                               ; preds = %2
  %50 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %51 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %50, i32 0, i32 4
  %52 = load %struct.RTPMessage**, %struct.RTPMessage*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.RTPMessage*, %struct.RTPMessage** %52, i64 %54
  %56 = load %struct.RTPMessage*, %struct.RTPMessage** %55, align 8
  %57 = icmp ne %struct.RTPMessage* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %86

59:                                               ; preds = %49
  %60 = load %struct.RTPMessage*, %struct.RTPMessage** %5, align 8
  %61 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %62 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %61, i32 0, i32 4
  %63 = load %struct.RTPMessage**, %struct.RTPMessage*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.RTPMessage*, %struct.RTPMessage** %63, i64 %65
  store %struct.RTPMessage* %60, %struct.RTPMessage** %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %69 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %73 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %76 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  %79 = icmp sge i32 %71, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %59
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  %83 = load %struct.JitterBuffer*, %struct.JitterBuffer** %4, align 8
  %84 = getelementptr inbounds %struct.JitterBuffer, %struct.JitterBuffer* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %80, %59
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %58, %26
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @LOGGER_DEBUG(i8*, %struct.JitterBuffer*) #1

declare dso_local i32 @jbuf_clear(%struct.JitterBuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
