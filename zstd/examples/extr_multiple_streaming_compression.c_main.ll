; ModuleID = '/home/carl/AnghaBench/zstd/examples/extr_multiple_streaming_compression.c_main.c'
source_filename = "/home/carl/AnghaBench/zstd/examples/extr_multiple_streaming_compression.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"wrong arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"usage:\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s FILE(s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".zst\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"compressed %i files \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  store i32 1, i32* %3, align 4
  br label %75

25:                                               ; preds = %2
  store i32 7, i32* %7, align 4
  %26 = call i32 @createResources_orDie(i32 7)
  store i32 %26, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 1, i32* %11, align 4
  br label %27

27:                                               ; preds = %64, %25
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i64 @strlen(i8* %37)
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = add i64 %39, 5
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp ule i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %31
  %45 = load i64, i64* %14, align 8
  %46 = add i64 %45, 16
  store i64 %46, i64* %10, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i64, i64* %10, align 8
  %50 = call i8* @malloc_orDie(i64 %49)
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %44, %31
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @memset(i8* %52, i32 0, i64 %53)
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @strcat(i8* %55, i8* %56)
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @strcat(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* %8, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @compressFile_orDie(i32 %60, i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %27

67:                                               ; preds = %27
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @freeResources(i32 %68)
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i32, i32* %4, align 4
  %73 = sub nsw i32 %72, 1
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %20
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @createResources_orDie(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc_orDie(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @compressFile_orDie(i32, i8*, i8*) #1

declare dso_local i32 @freeResources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
