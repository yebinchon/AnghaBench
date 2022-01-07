; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_callStatGet.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_callStatGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_Function0 = common dso_local global i32 0, align 4
@statGetFuncdef = common dso_local global i32 0, align 4
@P4_FUNCDEF = common dso_local global i32 0, align 4
@IsStat34 = common dso_local global i64 0, align 8
@OP_Integer = common dso_local global i32 0, align 4
@STAT_GET_STAT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @callStatGet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callStatGet(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = icmp ne i32 %13, %15
  br label %17

17:                                               ; preds = %12, %4
  %18 = phi i1 [ false, %4 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @UNUSED_PARAMETER(i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @OP_Function0, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @P4_FUNCDEF, align 4
  %28 = call i32 @sqlite3VdbeAddOp4(i32* %23, i32 %24, i32 0, i32 %25, i32 %26, i8* bitcast (i32* @statGetFuncdef to i8*), i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* @IsStat34, align 8
  %31 = add nsw i64 1, %30
  %32 = call i32 @sqlite3VdbeChangeP5(i32* %29, i64 %31)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
