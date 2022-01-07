; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamDecodeID.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamDecodeID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @streamDecodeID(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca [2 x i32], align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @memcpy(i32* %6, i8* %7, i32 8)
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @ntohu64(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @ntohu64(i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i8* @ntohu64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
