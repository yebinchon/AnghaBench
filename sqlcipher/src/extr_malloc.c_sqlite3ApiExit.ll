; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_malloc.c_sqlite3ApiExit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_malloc.c_sqlite3ApiExit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@SQLITE_IOERR_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3ApiExit(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @sqlite3_mutex_held(i32 %12)
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SQLITE_IOERR_NOMEM, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = call i32 @apiOomError(%struct.TYPE_4__* %24)
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %27, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @apiOomError(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
