; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5RollbackToMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5RollbackToMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FTS5_ROLLBACKTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @fts5RollbackToMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5RollbackToMethod(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @UNUSED_PARAM(i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = load i32, i32* @FTS5_ROLLBACKTO, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @fts5CheckTransactionState(%struct.TYPE_4__* %10, i32 %11, i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = call i32 @fts5TripCursors(%struct.TYPE_4__* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sqlite3Fts5StorageRollback(i32 %18)
  ret i32 %19
}

declare dso_local i32 @UNUSED_PARAM(i32) #1

declare dso_local i32 @fts5CheckTransactionState(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @fts5TripCursors(%struct.TYPE_4__*) #1

declare dso_local i32 @sqlite3Fts5StorageRollback(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
