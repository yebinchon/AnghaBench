; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_pagesig.c_computeSigs.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_pagesig.c_computeSigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot open \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid page size: %02x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%4d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @computeSigs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @computeSigs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [50 x i8], align 16
  %8 = alloca [65536 x i8], align 16
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @stderr, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  br label %77

17:                                               ; preds = %1
  %18 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @fread(i8* %18, i32 1, i32 50, i32* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 50
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %74

24:                                               ; preds = %17
  %25 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 16
  %26 = load i8, i8* %25, align 16
  %27 = zext i8 %26 to i32
  %28 = mul nsw i32 %27, 256
  %29 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 17
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 65536, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sub i32 %38, 1
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* @stderr, align 4
  %44 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 16
  %45 = load i8, i8* %44, align 16
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 17
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %49)
  br label %74

51:                                               ; preds = %36
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @rewind(i32* %52)
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %70, %51
  %55 = getelementptr inbounds [65536 x i8], [65536 x i8]* %8, i64 0, i64 0
  %56 = load i32, i32* %4, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @fread(i8* %55, i32 1, i32 %56, i32* %57)
  store i64 %58, i64* %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %54
  %63 = getelementptr inbounds [65536 x i8], [65536 x i8]* %8, i64 0, i64 0
  %64 = load i32, i32* %4, align 4
  %65 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %66 = call i32 @vlogSignature(i8* %63, i32 %64, i8* %65)
  %67 = load i32, i32* %6, align 4
  %68 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %69 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %67, i8* %68)
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %54

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73, %42, %23
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @fclose(i32* %75)
  br label %77

77:                                               ; preds = %74, %13
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @vlogSignature(i8*, i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
