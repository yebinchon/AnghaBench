; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_seqaux.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_seqaux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@TSeq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*, %struct.TYPE_11__*, i32)* @seqaux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @seqaux(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @TSeq, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = call i32 @sib1(%struct.TYPE_11__* %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memcpy(i32 %16, %struct.TYPE_11__* %17, i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = call %struct.TYPE_11__* @sib2(%struct.TYPE_11__* %23)
  ret %struct.TYPE_11__* %24
}

declare dso_local i32 @memcpy(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @sib1(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @sib2(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
