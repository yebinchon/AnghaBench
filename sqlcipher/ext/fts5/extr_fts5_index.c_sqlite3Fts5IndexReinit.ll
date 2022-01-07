; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_sqlite3Fts5IndexReinit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_sqlite3Fts5IndexReinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTS5_AVERAGES_ROWID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5IndexReinit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @fts5StructureInvalidate(i32* %4)
  %6 = call i32 @memset(i32* %3, i32 0, i32 4)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @FTS5_AVERAGES_ROWID, align 4
  %9 = call i32 @fts5DataWrite(i32* %7, i32 %8, i32* bitcast ([1 x i8]* @.str to i32*), i32 0)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @fts5StructureWrite(i32* %10, i32* %3)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @fts5IndexReturn(i32* %12)
  ret i32 %13
}

declare dso_local i32 @fts5StructureInvalidate(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fts5DataWrite(i32*, i32, i32*, i32) #1

declare dso_local i32 @fts5StructureWrite(i32*, i32*) #1

declare dso_local i32 @fts5IndexReturn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
