; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showjournal.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showjournal.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Usage: %s FILENAME\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@db = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@fileSize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"journal file size: %d bytes\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@sectorSize = common dso_local global i32 0, align 4
@pageSize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %22, i64* @db, align 8
  %23 = load i64, i64* @db, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %29, i8* %32)
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %18
  %36 = load i64, i64* @db, align 8
  %37 = load i32, i32* @SEEK_END, align 4
  %38 = call i32 @fseek(i64 %36, i32 0, i32 %37)
  %39 = load i64, i64* @db, align 8
  %40 = call i32 @ftell(i64 %39)
  store i32 %40, i32* @fileSize, align 4
  %41 = load i32, i32* @fileSize, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i64, i64* @db, align 8
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = call i32 @fseek(i64 %43, i32 0, i32 %44)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %83, %35
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @fileSize, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %90

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @decode_journal_header(i32 %51)
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32, i32* @fileSize, align 4
  %58 = load i32, i32* @sectorSize, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* @pageSize, align 4
  %61 = add nsw i32 %60, 8
  %62 = sdiv i32 %59, %61
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %56, %50
  %64 = load i32, i32* @sectorSize, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %76, %63
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @fileSize, align 4
  %73 = icmp slt i32 %71, %72
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i1 [ false, %67 ], [ %73, %70 ]
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @print_page(i32 %77)
  %79 = load i32, i32* @pageSize, align 4
  %80 = add nsw i32 %79, 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %67

83:                                               ; preds = %74
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @sectorSize, align 4
  %86 = sdiv i32 %84, %85
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* @sectorSize, align 4
  %89 = mul nsw i32 %87, %88
  store i32 %89, i32* %8, align 4
  br label %46

90:                                               ; preds = %46
  %91 = load i64, i64* @db, align 8
  %92 = call i32 @fclose(i64 %91)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i64, i32, i32) #1

declare dso_local i32 @ftell(i64) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @decode_journal_header(i32) #1

declare dso_local i32 @print_page(i32) #1

declare dso_local i32 @fclose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
