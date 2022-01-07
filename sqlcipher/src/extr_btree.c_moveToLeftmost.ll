; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_moveToLeftmost.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_moveToLeftmost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@CURSOR_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @moveToLeftmost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moveToLeftmost(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load i32, i32* @SQLITE_OK, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = call i32 @cursorOwnsBtShared(%struct.TYPE_8__* %7)
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CURSOR_VALID, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SQLITE_OK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %21, %17
  %30 = phi i1 [ false, %17 ], [ %28, %21 ]
  br i1 %30, label %31, label %50

31:                                               ; preds = %29
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @findCell(%struct.TYPE_7__* %41, i64 %44)
  %46 = call i32 @get4byte(i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @moveToChild(%struct.TYPE_8__* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %17

50:                                               ; preds = %29
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cursorOwnsBtShared(%struct.TYPE_8__*) #1

declare dso_local i32 @get4byte(i32) #1

declare dso_local i32 @findCell(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @moveToChild(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
