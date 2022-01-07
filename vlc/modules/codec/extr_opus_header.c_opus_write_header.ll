; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_opus_header.c_opus_write_header.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_opus_header.c_opus_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"ENCODER=\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"VLC media player\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opus_write_header(i8** %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [100 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8*], align 16
  %13 = alloca [2 x i64], align 16
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %19 = call i32 @opus_header_to_packet(i32* %17, i8* %18, i32 100)
  store i32 %19, i32* %11, align 4
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  store i8* %20, i8** %21, align 16
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  store i64 %23, i64* %24, align 16
  %25 = load i8*, i8** %9, align 8
  %26 = call i8* @comment_init(i64* %14, i8* %25)
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %80

30:                                               ; preds = %4
  %31 = call i64 @comment_add(i8** %15, i64* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %15, align 8
  %35 = call i32 @free(i8* %34)
  store i32 1, i32* %5, align 4
  br label %80

36:                                               ; preds = %30
  %37 = call i64 @comment_pad(i8** %15, i64* %14)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %15, align 8
  %41 = call i32 @free(i8* %40)
  store i32 1, i32* %5, align 4
  br label %80

42:                                               ; preds = %36
  %43 = load i8*, i8** %15, align 8
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 1
  store i8* %43, i8** %44, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  store i64 %45, i64* %46, align 8
  %47 = load i32*, i32** %7, align 8
  store i32 0, i32* %47, align 4
  %48 = load i8**, i8*** %6, align 8
  store i8* null, i8** %48, align 8
  store i32 0, i32* %16, align 4
  br label %49

49:                                               ; preds = %74, %42
  %50 = load i32, i32* %16, align 4
  %51 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %52 = call i32 @ARRAY_SIZE(i8** %51)
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = load i8**, i8*** %6, align 8
  %57 = load i32, i32* %16, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %16, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @xiph_AppendHeaders(i32* %55, i8** %56, i64 %60, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %54
  %68 = load i32*, i32** %7, align 8
  store i32 0, i32* %68, align 4
  %69 = load i8**, i8*** %6, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i8**, i8*** %6, align 8
  store i8* null, i8** %72, align 8
  br label %73

73:                                               ; preds = %67, %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %16, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %16, align 4
  br label %49

77:                                               ; preds = %49
  %78 = load i8*, i8** %15, align 8
  %79 = call i32 @free(i8* %78)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %39, %33, %29
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @opus_header_to_packet(i32*, i8*, i32) #1

declare dso_local i8* @comment_init(i64*, i8*) #1

declare dso_local i64 @comment_add(i8**, i64*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @comment_pad(i8**, i64*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @xiph_AppendHeaders(i32*, i8**, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
