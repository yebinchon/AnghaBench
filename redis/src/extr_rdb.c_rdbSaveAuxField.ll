; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveAuxField.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveAuxField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDB_OPCODE_AUX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveAuxField(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* @RDB_OPCODE_AUX, align 4
  %16 = call i32 @rdbSaveType(i32* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %44

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %13, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @rdbSaveRawString(i32* %23, i8* %24, i64 %25)
  store i32 %26, i32* %12, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %44

29:                                               ; preds = %19
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %13, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @rdbSaveRawString(i32* %33, i8* %34, i64 %35)
  store i32 %36, i32* %12, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %44

39:                                               ; preds = %29
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %38, %28, %18
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @rdbSaveType(i32*, i32) #1

declare dso_local i32 @rdbSaveRawString(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
