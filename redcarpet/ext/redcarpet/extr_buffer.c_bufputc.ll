; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_buffer.c_bufputc.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_buffer.c_bufputc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i32*, i64 }

@BUF_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufputc(%struct.buf* %0, i32 %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.buf*, %struct.buf** %3, align 8
  %6 = icmp ne %struct.buf* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.buf*, %struct.buf** %3, align 8
  %9 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i1 [ false, %2 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.buf*, %struct.buf** %3, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = load %struct.buf*, %struct.buf** %3, align 8
  %21 = getelementptr inbounds %struct.buf, %struct.buf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %12
  %25 = load %struct.buf*, %struct.buf** %3, align 8
  %26 = load %struct.buf*, %struct.buf** %3, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = call i64 @bufgrow(%struct.buf* %25, i32 %29)
  %31 = load i64, i64* @BUF_OK, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %48

34:                                               ; preds = %24, %12
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.buf*, %struct.buf** %3, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.buf*, %struct.buf** %3, align 8
  %40 = getelementptr inbounds %struct.buf, %struct.buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  store i32 %35, i32* %43, align 4
  %44 = load %struct.buf*, %struct.buf** %3, align 8
  %45 = getelementptr inbounds %struct.buf, %struct.buf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bufgrow(%struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
