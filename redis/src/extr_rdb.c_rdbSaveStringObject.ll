; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveStringObject.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveStringObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@OBJ_ENCODING_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveStringObject(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @rdbSaveLongLongAsStringObject(i32* %12, i64 %15)
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = call i32 @sdsEncodedObject(%struct.TYPE_5__* %19)
  %21 = call i32 @serverAssertWithInfo(i32* null, %struct.TYPE_5__* %18, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @sdslen(i64 %28)
  %30 = call i32 @rdbSaveRawString(i32* %22, i64 %25, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %17, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @rdbSaveLongLongAsStringObject(i32*, i64) #1

declare dso_local i32 @serverAssertWithInfo(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @sdsEncodedObject(%struct.TYPE_5__*) #1

declare dso_local i32 @rdbSaveRawString(i32*, i64, i32) #1

declare dso_local i32 @sdslen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
