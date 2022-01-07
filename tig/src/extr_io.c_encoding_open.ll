; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_encoding_open.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_encoding_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoding = type { i64, %struct.encoding*, i32 }

@encodings = common dso_local global %struct.encoding* null, align 8
@ENCODING_UTF8 = common dso_local global i32 0, align 4
@ICONV_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.encoding* @encoding_open(i8* %0) #0 {
  %2 = alloca %struct.encoding*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.encoding*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.encoding* null, %struct.encoding** %2, align 8
  br label %61

12:                                               ; preds = %1
  %13 = load %struct.encoding*, %struct.encoding** @encodings, align 8
  store %struct.encoding* %13, %struct.encoding** %4, align 8
  br label %14

14:                                               ; preds = %27, %12
  %15 = load %struct.encoding*, %struct.encoding** %4, align 8
  %16 = icmp ne %struct.encoding* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.encoding*, %struct.encoding** %4, align 8
  %19 = getelementptr inbounds %struct.encoding, %struct.encoding* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strcasecmp(i32 %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load %struct.encoding*, %struct.encoding** %4, align 8
  store %struct.encoding* %25, %struct.encoding** %2, align 8
  br label %61

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.encoding*, %struct.encoding** %4, align 8
  %29 = getelementptr inbounds %struct.encoding, %struct.encoding* %28, i32 0, i32 1
  %30 = load %struct.encoding*, %struct.encoding** %29, align 8
  store %struct.encoding* %30, %struct.encoding** %4, align 8
  br label %14

31:                                               ; preds = %14
  %32 = load i64, i64* %5, align 8
  %33 = add i64 24, %32
  %34 = trunc i64 %33 to i32
  %35 = call %struct.encoding* @calloc(i32 1, i32 %34)
  store %struct.encoding* %35, %struct.encoding** %4, align 8
  %36 = load %struct.encoding*, %struct.encoding** %4, align 8
  %37 = getelementptr inbounds %struct.encoding, %struct.encoding* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @strncpy(i32 %38, i8* %39, i64 %40)
  %42 = load i32, i32* @ENCODING_UTF8, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @iconv_open(i32 %42, i8* %43)
  %45 = load %struct.encoding*, %struct.encoding** %4, align 8
  %46 = getelementptr inbounds %struct.encoding, %struct.encoding* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.encoding*, %struct.encoding** %4, align 8
  %48 = getelementptr inbounds %struct.encoding, %struct.encoding* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ICONV_NONE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load %struct.encoding*, %struct.encoding** %4, align 8
  %54 = call i32 @free(%struct.encoding* %53)
  store %struct.encoding* null, %struct.encoding** %2, align 8
  br label %61

55:                                               ; preds = %31
  %56 = load %struct.encoding*, %struct.encoding** @encodings, align 8
  %57 = load %struct.encoding*, %struct.encoding** %4, align 8
  %58 = getelementptr inbounds %struct.encoding, %struct.encoding* %57, i32 0, i32 1
  store %struct.encoding* %56, %struct.encoding** %58, align 8
  %59 = load %struct.encoding*, %struct.encoding** %4, align 8
  store %struct.encoding* %59, %struct.encoding** @encodings, align 8
  %60 = load %struct.encoding*, %struct.encoding** %4, align 8
  store %struct.encoding* %60, %struct.encoding** %2, align 8
  br label %61

61:                                               ; preds = %55, %52, %24, %11
  %62 = load %struct.encoding*, %struct.encoding** %2, align 8
  ret %struct.encoding* %62
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local %struct.encoding* @calloc(i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i64 @iconv_open(i32, i8*) #1

declare dso_local i32 @free(%struct.encoding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
