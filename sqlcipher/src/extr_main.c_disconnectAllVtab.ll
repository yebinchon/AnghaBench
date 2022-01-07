; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_main.c_disconnectAllVtab.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_main.c_disconnectAllVtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @disconnectAllVtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disconnectAllVtab(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_12__* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %51, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %10
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %5, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = icmp ne %struct.TYPE_13__* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %16
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = call i32* @sqliteHashFirst(i32* %29)
  store i32* %30, i32** %4, align 8
  br label %31

31:                                               ; preds = %46, %27
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @sqliteHashData(i32* %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i64 @IsVirtual(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @sqlite3VtabDisconnect(%struct.TYPE_12__* %42, i32* %43)
  br label %45

45:                                               ; preds = %41, %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32*, i32** %4, align 8
  %48 = call i32* @sqliteHashNext(i32* %47)
  store i32* %48, i32** %4, align 8
  br label %31

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49, %16
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %10

54:                                               ; preds = %10
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = call i32* @sqliteHashFirst(i32* %56)
  store i32* %57, i32** %4, align 8
  br label %58

58:                                               ; preds = %76, %54
  %59 = load i32*, i32** %4, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @sqliteHashData(i32* %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %7, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @sqlite3VtabDisconnect(%struct.TYPE_12__* %70, i32* %73)
  br label %75

75:                                               ; preds = %69, %61
  br label %76

76:                                               ; preds = %75
  %77 = load i32*, i32** %4, align 8
  %78 = call i32* @sqliteHashNext(i32* %77)
  store i32* %78, i32** %4, align 8
  br label %58

79:                                               ; preds = %58
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %81 = call i32 @sqlite3VtabUnlockList(%struct.TYPE_12__* %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_12__* %82)
  ret void
}

declare dso_local i32 @sqlite3BtreeEnterAll(%struct.TYPE_12__*) #1

declare dso_local i32* @sqliteHashFirst(i32*) #1

declare dso_local i64 @sqliteHashData(i32*) #1

declare dso_local i64 @IsVirtual(i32*) #1

declare dso_local i32 @sqlite3VtabDisconnect(%struct.TYPE_12__*, i32*) #1

declare dso_local i32* @sqliteHashNext(i32*) #1

declare dso_local i32 @sqlite3VtabUnlockList(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3BtreeLeaveAll(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
