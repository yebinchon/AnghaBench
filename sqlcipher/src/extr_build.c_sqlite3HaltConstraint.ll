; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3HaltConstraint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3HaltConstraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_CONSTRAINT = common dso_local global i32 0, align 4
@OE_Abort = common dso_local global i32 0, align 4
@OP_Halt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3HaltConstraint(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32* @sqlite3GetVdbe(i32* %14)
  store i32* %15, i32** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 255
  %18 = load i32, i32* @SQLITE_CONSTRAINT, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @OE_Abort, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @sqlite3MayAbort(i32* %26)
  br label %28

28:                                               ; preds = %25, %6
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* @OP_Halt, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @sqlite3VdbeAddOp4(i32* %29, i32 %30, i32 %31, i32 %32, i32 0, i8* %33, i32 %34)
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @sqlite3VdbeChangeP5(i32* %36, i32 %37)
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3MayAbort(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
