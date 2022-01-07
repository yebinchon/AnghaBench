; ModuleID = '/home/carl/AnghaBench/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_freeDDictCollection.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/largeNbDicts/extr_largeNbDicts.c_freeDDictCollection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*)* @freeDDictCollection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeDDictCollection(i64 %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i64, align 8
  %5 = bitcast %struct.TYPE_3__* %3 to { i64, i32* }*
  %6 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %5, i32 0, i32 1
  store i32* %1, i32** %7, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ZSTD_freeDDict(i32 %18)
  br label %20

20:                                               ; preds = %13
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  br label %8

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @free(i32* %25)
  ret void
}

declare dso_local i32 @ZSTD_freeDDict(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
