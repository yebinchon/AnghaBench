; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_linebreak.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_linebreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i8* }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.buf.0*, i32)* }
%struct.buf.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64, i64)* @char_linebreak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @char_linebreak(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %10, align 8
  %13 = icmp ult i64 %12, 2
  br i1 %13, label %26, label %14

14:                                               ; preds = %5
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 32
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 -2
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 32
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14, %5
  store i64 0, i64* %6, align 8
  br label %68

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %48, %27
  %29 = load %struct.buf*, %struct.buf** %7, align 8
  %30 = getelementptr inbounds %struct.buf, %struct.buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load %struct.buf*, %struct.buf** %7, align 8
  %35 = getelementptr inbounds %struct.buf, %struct.buf* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.buf*, %struct.buf** %7, align 8
  %38 = getelementptr inbounds %struct.buf, %struct.buf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %36, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 32
  br label %46

46:                                               ; preds = %33, %28
  %47 = phi i1 [ false, %28 ], [ %45, %33 ]
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = load %struct.buf*, %struct.buf** %7, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  br label %28

53:                                               ; preds = %46
  %54 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %55 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64 (%struct.buf.0*, i32)*, i64 (%struct.buf.0*, i32)** %56, align 8
  %58 = load %struct.buf*, %struct.buf** %7, align 8
  %59 = bitcast %struct.buf* %58 to %struct.buf.0*
  %60 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %61 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 %57(%struct.buf.0* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %53, %26
  %69 = load i64, i64* %6, align 8
  ret i64 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
