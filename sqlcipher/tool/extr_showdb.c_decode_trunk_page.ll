; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_decode_trunk_page.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_decode_trunk_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [35 x i8] c"Decode of freelist trunk page %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Next freelist trunk page\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Number of entries on this page\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"  %5s %7u\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @decode_trunk_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_trunk_page(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [10 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %12

12:                                               ; preds = %76, %3
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %79

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %21 = call i8* @fileRead(i32 %19, i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @print_decode_line(i8* %24, i32 0, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @print_decode_line(i8* %26, i32 4, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %15
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = call i32 @decodeInt32(i8* %32)
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %58, %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 4, %40
  %42 = add nsw i32 8, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = call i32 @decodeInt32(i8* %44)
  store i32 %45, i32* %10, align 4
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = srem i32 %52, 5
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %38
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %34

61:                                               ; preds = %34
  %62 = load i32, i32* %8, align 4
  %63 = srem i32 %62, 5
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  br label %68

68:                                               ; preds = %67, %15
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %76

72:                                               ; preds = %68
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = call i32 @decodeInt32(i8* %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %71
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @sqlite3_free(i8* %77)
  br label %12

79:                                               ; preds = %12
  ret void
}

declare dso_local i8* @fileRead(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_decode_line(i8*, i32, i32, i8*) #1

declare dso_local i32 @decodeInt32(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
