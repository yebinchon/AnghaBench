; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_escape.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32*, i32, i32, i32, i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32)* }
%struct.buf.0 = type opaque

@char_escape.escape_chars = internal global i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [24 x i8] c"\\`*_{}[]()#+-.!:|&<>^~=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i32*, i64, i64)* @char_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @char_escape(%struct.buf* %0, %struct.sd_markdown* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buf, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = bitcast %struct.buf* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load i64, i64* %11, align 8
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %16, label %53

16:                                               ; preds = %5
  %17 = load i8*, i8** @char_escape.escape_chars, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @strchr(i8* %17, i32 %20)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i64 0, i64* %6, align 8
  br label %64

24:                                               ; preds = %16
  %25 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %26 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32)* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = getelementptr inbounds %struct.buf, %struct.buf* %12, i32 0, i32 1
  store i32* %32, i32** %33, align 8
  %34 = getelementptr inbounds %struct.buf, %struct.buf* %12, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %36 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %37, align 8
  %39 = load %struct.buf*, %struct.buf** %7, align 8
  %40 = bitcast %struct.buf* %39 to %struct.buf.0*
  %41 = bitcast %struct.buf* %12 to %struct.buf.0*
  %42 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %43 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %38(%struct.buf.0* %40, %struct.buf.0* %41, i32 %44)
  br label %52

46:                                               ; preds = %24
  %47 = load %struct.buf*, %struct.buf** %7, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bufputc(%struct.buf* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %30
  br label %63

53:                                               ; preds = %5
  %54 = load i64, i64* %11, align 8
  %55 = icmp eq i64 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.buf*, %struct.buf** %7, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bufputc(%struct.buf* %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  br label %63

63:                                               ; preds = %62, %52
  store i64 2, i64* %6, align 8
  br label %64

64:                                               ; preds = %63, %23
  %65 = load i64, i64* %6, align 8
  ret i64 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @strchr(i8*, i32) #2

declare dso_local i32 @bufputc(%struct.buf*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
