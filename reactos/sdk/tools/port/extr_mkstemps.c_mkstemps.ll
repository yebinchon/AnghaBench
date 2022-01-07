; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/port/extr_mkstemps.c_mkstemps.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/port/extr_mkstemps.c_mkstemps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mkstemps.letters = internal constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 16
@mkstemps.value = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"XXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"wrong parameter\0A\00", align 1
@TMP_MAX = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mkstemps(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 6, %15
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %20, 6
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 %21, %23
  %25 = getelementptr inbounds i8, i8* %19, i64 %24
  %26 = call i64 @strncmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18, %2
  %29 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %121

30:                                               ; preds = %18
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 %32, 6
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %33, %35
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  store i8* %37, i8** %6, align 8
  %38 = call i32 (...) @getpid()
  %39 = load i32, i32* @mkstemps.value, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* @mkstemps.value, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %115, %30
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @TMP_MAX, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %118

45:                                               ; preds = %41
  %46 = load i32, i32* @mkstemps.value, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = srem i32 %47, 62
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 %51, i8* %53, align 1
  %54 = load i32, i32* %9, align 4
  %55 = sdiv i32 %54, 62
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = srem i32 %56, 62
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8 %60, i8* %62, align 1
  %63 = load i32, i32* %9, align 4
  %64 = sdiv i32 %63, 62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = srem i32 %65, 62
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  store i8 %69, i8* %71, align 1
  %72 = load i32, i32* %9, align 4
  %73 = sdiv i32 %72, 62
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = srem i32 %74, 62
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  store i8 %78, i8* %80, align 1
  %81 = load i32, i32* %9, align 4
  %82 = sdiv i32 %81, 62
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = srem i32 %83, 62
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 4
  store i8 %87, i8* %89, align 1
  %90 = load i32, i32* %9, align 4
  %91 = sdiv i32 %90, 62
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = srem i32 %92, 62
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 5
  store i8 %96, i8* %98, align 1
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* @O_RDWR, align 4
  %101 = load i32, i32* @O_CREAT, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @O_EXCL, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @O_BINARY, align 4
  %106 = or i32 %104, %105
  %107 = call i32 (i8*, i32, i32, ...) @open(i8* %99, i32 %106, i32 384)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %45
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %121

112:                                              ; preds = %45
  %113 = load i32, i32* @mkstemps.value, align 4
  %114 = add nsw i32 %113, 7777
  store i32 %114, i32* @mkstemps.value, align 4
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %41

118:                                              ; preds = %41
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 0, i8* %120, align 1
  store i32 -1, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %110, %28
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @open(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
