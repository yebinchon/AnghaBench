; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3OffsetsFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3OffsetsFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"offsets\00", align 1
@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @fts3OffsetsFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts3OffsetsFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @UNUSED_PARAMETER(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32**, i32*** %6, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @fts3FunctionArg(i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %17, i32** %7)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %34

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = ptrtoint i32* %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* @SQLITE_OK, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @fts3CursorSeek(i32* %26, i32* %27)
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @sqlite3Fts3Offsets(i32* %31, i32* %32)
  br label %34

34:                                               ; preds = %20, %30, %21
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fts3FunctionArg(i32*, i8*, i32*, i32**) #1

declare dso_local i64 @fts3CursorSeek(i32*, i32*) #1

declare dso_local i32 @sqlite3Fts3Offsets(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
