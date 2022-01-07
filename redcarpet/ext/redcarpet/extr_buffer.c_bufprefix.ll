; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_buffer.c_bufprefix.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_buffer.c_bufprefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufprefix(%struct.buf* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.buf*, %struct.buf** %4, align 8
  %8 = icmp ne %struct.buf* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.buf*, %struct.buf** %4, align 8
  %11 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ false, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %61, %14
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.buf*, %struct.buf** %4, align 8
  %21 = getelementptr inbounds %struct.buf, %struct.buf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %65

32:                                               ; preds = %24
  %33 = load %struct.buf*, %struct.buf** %4, align 8
  %34 = getelementptr inbounds %struct.buf, %struct.buf* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %39, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %32
  %47 = load %struct.buf*, %struct.buf** %4, align 8
  %48 = getelementptr inbounds %struct.buf, %struct.buf* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %53, %58
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %32
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %6, align 8
  br label %18

64:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %46, %31
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
