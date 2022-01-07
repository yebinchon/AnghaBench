; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_callback.c_sqlite3FindCollSeq.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_callback.c_sqlite3FindCollSeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_UTF16LE = common dso_local global i32 0, align 4
@SQLITE_UTF16BE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sqlite3FindCollSeq(%struct.TYPE_4__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32* @findCollSeqEntry(%struct.TYPE_4__* %13, i8* %14, i32 %15)
  store i32* %16, i32** %9, align 8
  br label %21

17:                                               ; preds = %4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* @SQLITE_UTF8, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* @SQLITE_UTF16LE, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @SQLITE_UTF16BE, align 4
  %29 = icmp eq i32 %28, 3
  br label %30

30:                                               ; preds = %27, %24, %21
  %31 = phi i1 [ false, %24 ], [ false, %21 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SQLITE_UTF8, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SQLITE_UTF16BE, align 4
  %40 = icmp sle i32 %38, %39
  br label %41

41:                                               ; preds = %37, %30
  %42 = phi i1 [ false, %30 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32*, i32** %9, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %9, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load i32*, i32** %9, align 8
  ret i32* %54
}

declare dso_local i32* @findCollSeqEntry(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
