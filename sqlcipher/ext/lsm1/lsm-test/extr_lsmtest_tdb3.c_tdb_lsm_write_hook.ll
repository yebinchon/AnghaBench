; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_tdb_lsm_write_hook.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_tdb_lsm_write_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (i8*, i32, i32, i32, i32)*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tdb_lsm_write_hook(i32* %0, void (i8*, i32, i32, i32, i32)* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca void (i8*, i32, i32, i32, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %4, align 8
  store void (i8*, i32, i32, i32, i32)* %1, void (i8*, i32, i32, i32, i32)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @tdb_lsm(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %7, align 8
  %14 = load void (i8*, i32, i32, i32, i32)*, void (i8*, i32, i32, i32, i32)** %5, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store void (i8*, i32, i32, i32, i32)* %14, void (i8*, i32, i32, i32, i32)** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  br label %20

20:                                               ; preds = %11, %3
  ret void
}

declare dso_local i64 @tdb_lsm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
