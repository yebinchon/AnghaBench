; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_buffer.c_bufcstr.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_buffer.c_bufcstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, i64*, i64 }

@BUF_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bufcstr(%struct.buf* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %3, align 8
  %4 = load %struct.buf*, %struct.buf** %3, align 8
  %5 = icmp ne %struct.buf* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.buf*, %struct.buf** %3, align 8
  %8 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ false, %1 ], [ %10, %6 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.buf*, %struct.buf** %3, align 8
  %16 = getelementptr inbounds %struct.buf, %struct.buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.buf*, %struct.buf** %3, align 8
  %19 = getelementptr inbounds %struct.buf, %struct.buf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %11
  %23 = load %struct.buf*, %struct.buf** %3, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.buf*, %struct.buf** %3, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %25, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.buf*, %struct.buf** %3, align 8
  %35 = getelementptr inbounds %struct.buf, %struct.buf* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = bitcast i64* %36 to i8*
  store i8* %37, i8** %2, align 8
  br label %70

38:                                               ; preds = %22, %11
  %39 = load %struct.buf*, %struct.buf** %3, align 8
  %40 = getelementptr inbounds %struct.buf, %struct.buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = load %struct.buf*, %struct.buf** %3, align 8
  %44 = getelementptr inbounds %struct.buf, %struct.buf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %42, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %38
  %48 = load %struct.buf*, %struct.buf** %3, align 8
  %49 = load %struct.buf*, %struct.buf** %3, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = call i64 @bufgrow(%struct.buf* %48, i32 %52)
  %54 = load i64, i64* @BUF_OK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %47, %38
  %57 = load %struct.buf*, %struct.buf** %3, align 8
  %58 = getelementptr inbounds %struct.buf, %struct.buf* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load %struct.buf*, %struct.buf** %3, align 8
  %61 = getelementptr inbounds %struct.buf, %struct.buf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %59, i64 %63
  store i64 0, i64* %64, align 8
  %65 = load %struct.buf*, %struct.buf** %3, align 8
  %66 = getelementptr inbounds %struct.buf, %struct.buf* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = bitcast i64* %67 to i8*
  store i8* %68, i8** %2, align 8
  br label %70

69:                                               ; preds = %47
  store i8* null, i8** %2, align 8
  br label %70

70:                                               ; preds = %69, %56, %33
  %71 = load i8*, i8** %2, align 8
  ret i8* %71
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bufgrow(%struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
