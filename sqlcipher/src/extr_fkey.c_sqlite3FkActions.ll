; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_fkey.c_sqlite3FkActions.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_fkey.c_sqlite3FkActions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }

@SQLITE_ForeignKeys = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3FkActions(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SQLITE_ForeignKeys, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %6
  %24 = load i32*, i32** %8, align 8
  %25 = call %struct.TYPE_12__* @sqlite3FkReferences(i32* %24)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %13, align 8
  br label %26

26:                                               ; preds = %56, %23
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %26
  %30 = load i32*, i32** %11, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @fkParentIsModified(i32* %33, %struct.TYPE_12__* %34, i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %32, %29
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32* @fkActionTrigger(%struct.TYPE_11__* %40, i32* %41, %struct.TYPE_12__* %42, i32* %43)
  store i32* %44, i32** %14, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @OE_Abort, align 4
  %53 = call i32 @sqlite3CodeRowTriggerDirect(%struct.TYPE_11__* %48, i32* %49, i32* %50, i32 %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %47, %39
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %13, align 8
  br label %26

60:                                               ; preds = %26
  br label %61

61:                                               ; preds = %60, %6
  ret void
}

declare dso_local %struct.TYPE_12__* @sqlite3FkReferences(i32*) #1

declare dso_local i64 @fkParentIsModified(i32*, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32* @fkActionTrigger(%struct.TYPE_11__*, i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @sqlite3CodeRowTriggerDirect(%struct.TYPE_11__*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
