; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_sqlite3Fts5Tokenize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_sqlite3Fts5Tokenize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i8*, i32, i8*, i32, i32 (i8*, i32, i8*, i32, i32, i32)*)* }

@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5Tokenize(%struct.TYPE_5__* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 (i8*, i32, i8*, i32, i32, i32)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, i32, i8*, i32, i32, i32)*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 (i8*, i32, i8*, i32, i32, i32)* %5, i32 (i8*, i32, i8*, i32, i32, i32)** %13, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = load i32, i32* @SQLITE_OK, align 4
  store i32 %17, i32* %7, align 4
  br label %33

18:                                               ; preds = %6
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (i32, i8*, i32, i8*, i32, i32 (i8*, i32, i8*, i32, i32, i32)*)*, i32 (i32, i8*, i32, i8*, i32, i32 (i8*, i32, i8*, i32, i32, i32)*)** %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32 (i8*, i32, i8*, i32, i32, i32)*, i32 (i8*, i32, i8*, i32, i32, i32)** %13, align 8
  %32 = call i32 %23(i32 %26, i8* %27, i32 %28, i8* %29, i32 %30, i32 (i8*, i32, i8*, i32, i32, i32)* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %18, %16
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
