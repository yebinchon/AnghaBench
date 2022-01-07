; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_createFilename_fromOutDir.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_fileio.c_FIO_createFilename_fromOutDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"zstd: FIO_createFilename_fromOutDir: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64)* @FIO_createFilename_fromOutDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @FIO_createFilename_fromOutDir(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8 47, i8* %8, align 1
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %8, align 1
  %12 = call i8* @extractFilename(i8* %10, i8 signext %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 1
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %19, %20
  %22 = add i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = call i64 @calloc(i32 1, i32 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @EXM_THROW(i32 30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %3
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32 @memcpy(i8* %33, i8* %34, i32 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* %8, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %32
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @memcpy(i8* %54, i8* %55, i32 %57)
  br label %76

59:                                               ; preds = %32
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = call i32 @memcpy(i8* %64, i8* %8, i32 1)
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = call i32 @memcpy(i8* %71, i8* %72, i32 %74)
  br label %76

76:                                               ; preds = %59, %49
  %77 = load i8*, i8** %9, align 8
  ret i8* %77
}

declare dso_local i8* @extractFilename(i8*, i8 signext) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @EXM_THROW(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
