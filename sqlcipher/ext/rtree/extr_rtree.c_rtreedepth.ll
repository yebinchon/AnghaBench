; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreedepth.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreedepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_BLOB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Invalid argument to rtreedepth()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @rtreedepth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtreedepth(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @UNUSED_PARAMETER(i32 %8)
  %10 = load i32**, i32*** %6, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @sqlite3_value_type(i32* %12)
  %14 = load i64, i64* @SQLITE_BLOB, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i32**, i32*** %6, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @sqlite3_value_bytes(i32* %19)
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %3
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @sqlite3_result_error(i32* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %35

25:                                               ; preds = %16
  %26 = load i32**, i32*** %6, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @sqlite3_value_blob(i32* %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @readInt16(i32* %32)
  %34 = call i32 @sqlite3_result_int(i32* %31, i32 %33)
  br label %35

35:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @readInt16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
