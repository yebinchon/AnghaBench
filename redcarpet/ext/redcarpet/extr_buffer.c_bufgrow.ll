; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_buffer.c_bufgrow.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_buffer.c_bufgrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i64, i8* }

@BUFFER_MAX_ALLOC_SIZE = common dso_local global i64 0, align 8
@BUF_ENOMEM = common dso_local global i32 0, align 4
@BUF_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufgrow(%struct.buf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.buf*, %struct.buf** %4, align 8
  %9 = icmp ne %struct.buf* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.buf*, %struct.buf** %4, align 8
  %12 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @BUFFER_MAX_ALLOC_SIZE, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @BUF_ENOMEM, align 4
  store i32 %23, i32* %3, align 4
  br label %68

24:                                               ; preds = %15
  %25 = load %struct.buf*, %struct.buf** %4, align 8
  %26 = getelementptr inbounds %struct.buf, %struct.buf* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @BUF_OK, align 4
  store i32 %31, i32* %3, align 4
  br label %68

32:                                               ; preds = %24
  %33 = load %struct.buf*, %struct.buf** %4, align 8
  %34 = getelementptr inbounds %struct.buf, %struct.buf* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.buf*, %struct.buf** %4, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %44, %32
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.buf*, %struct.buf** %4, align 8
  %46 = getelementptr inbounds %struct.buf, %struct.buf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %6, align 8
  br label %40

50:                                               ; preds = %40
  %51 = load %struct.buf*, %struct.buf** %4, align 8
  %52 = getelementptr inbounds %struct.buf, %struct.buf* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i8* @realloc(i8* %53, i64 %54)
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @BUF_ENOMEM, align 4
  store i32 %59, i32* %3, align 4
  br label %68

60:                                               ; preds = %50
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.buf*, %struct.buf** %4, align 8
  %63 = getelementptr inbounds %struct.buf, %struct.buf* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.buf*, %struct.buf** %4, align 8
  %66 = getelementptr inbounds %struct.buf, %struct.buf* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* @BUF_OK, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %60, %58, %30, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
