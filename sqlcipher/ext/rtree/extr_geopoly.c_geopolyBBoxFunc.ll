; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyBBoxFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyBBoxFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @geopolyBBoxFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geopolyBBoxFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32**, i32*** %6, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i64 0
  %11 = load i32*, i32** %10, align 8
  %12 = call %struct.TYPE_4__* @geopolyBBox(i32* %8, i32* %11, i32 0, i32 0)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 8, %22
  %24 = add nsw i32 4, %23
  %25 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %26 = call i32 @sqlite3_result_blob(i32* %16, i32 %19, i32 %24, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = call i32 @sqlite3_free(%struct.TYPE_4__* %27)
  br label %29

29:                                               ; preds = %15, %3
  ret void
}

declare dso_local %struct.TYPE_4__* @geopolyBBox(i32*, i32*, i32, i32) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
