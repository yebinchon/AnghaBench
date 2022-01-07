; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtablog.c_vtablogOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtablog.c_vtablogOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"vtablogOpen(tab=%d, cursor=%d)\0A\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @vtablogOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtablogOpen(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16)
  %18 = call %struct.TYPE_6__* @sqlite3_malloc(i32 8)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = call i32 @memset(%struct.TYPE_6__* %24, i32 0, i32 8)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32**, i32*** %5, align 8
  store i32* %32, i32** %33, align 8
  %34 = load i32, i32* @SQLITE_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %23, %21
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
