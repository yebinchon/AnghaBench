; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_directory.c_read_dir_entry.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_directory.c_read_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*)* @read_dir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_dir_entry(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca [2048 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  %11 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @fz_strlcpy(i8* %11, i32 %14, i32 2048)
  %16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %17 = call i32 @fz_strlcat(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 2048)
  %18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @fz_strlcat(i8* %18, i8* %19, i32 2048)
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %23 = call i32* @fz_read_file(i32* %21, i8* %22)
  ret i32* %23
}

declare dso_local i32 @fz_strlcpy(i8*, i32, i32) #1

declare dso_local i32 @fz_strlcat(i8*, i8*, i32) #1

declare dso_local i32* @fz_read_file(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
