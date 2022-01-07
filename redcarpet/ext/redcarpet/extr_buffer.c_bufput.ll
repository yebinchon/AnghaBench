; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_buffer.c_bufput.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_buffer.c_bufput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i64, i64, i64 }

@BUF_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufput(%struct.buf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.buf*, %struct.buf** %4, align 8
  %8 = icmp ne %struct.buf* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load %struct.buf*, %struct.buf** %4, align 8
  %11 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi i1 [ false, %3 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.buf*, %struct.buf** %4, align 8
  %19 = getelementptr inbounds %struct.buf, %struct.buf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %20, %21
  %23 = load %struct.buf*, %struct.buf** %4, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %14
  %28 = load %struct.buf*, %struct.buf** %4, align 8
  %29 = load %struct.buf*, %struct.buf** %4, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %31, %32
  %34 = call i64 @bufgrow(%struct.buf* %28, i64 %33)
  %35 = load i64, i64* @BUF_OK, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %54

38:                                               ; preds = %27, %14
  %39 = load %struct.buf*, %struct.buf** %4, align 8
  %40 = getelementptr inbounds %struct.buf, %struct.buf* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.buf*, %struct.buf** %4, align 8
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @memcpy(i64 %45, i8* %46, i64 %47)
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.buf*, %struct.buf** %4, align 8
  %51 = getelementptr inbounds %struct.buf, %struct.buf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %49
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bufgrow(%struct.buf*, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
