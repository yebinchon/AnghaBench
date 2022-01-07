; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_page_usage_cell.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_page_usage_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"overflow %d from cell %d of page %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8*, i32, i32)* @page_usage_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @page_usage_cell(i8 zeroext %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sle i32 %17, 5
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 4
  store i8* %21, i8** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %19, %4
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 5
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @decodeVarint(i8* %29, i64* %11)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load i64, i64* %11, align 8
  %39 = load i8, i8* %5, align 1
  %40 = call i64 @localPayload(i64 %38, i8 zeroext %39)
  store i64 %40, i64* %13, align 8
  br label %42

41:                                               ; preds = %24
  store i64 0, i64* %13, align 8
  store i64 0, i64* %11, align 8
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i8, i8* %5, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 13
  br i1 %49, label %50, label %60

50:                                               ; preds = %46, %42
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @decodeVarint(i8* %51, i64* %12)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %50, %46
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = call i32 @decodeInt32(i8* %67)
  store i32 %68, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %79, %64
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %76 = icmp slt i32 %73, %75
  br label %77

77:                                               ; preds = %72, %69
  %78 = phi i1 [ false, %69 ], [ %76, %72 ]
  br i1 %78, label %79, label %95

79:                                               ; preds = %77
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @page_usage_msg(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %88 = trunc i64 %87 to i32
  %89 = mul nsw i32 %86, %88
  %90 = call i8* @fileRead(i32 %89, i32 4)
  store i8* %90, i8** %6, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @decodeInt32(i8* %91)
  store i32 %92, i32* %14, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @sqlite3_free(i8* %93)
  br label %69

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95, %60
  ret void
}

declare dso_local i32 @decodeVarint(i8*, i64*) #1

declare dso_local i64 @localPayload(i64, i8 zeroext) #1

declare dso_local i32 @decodeInt32(i8*) #1

declare dso_local i32 @page_usage_msg(i32, i8*, i32, i32, i32) #1

declare dso_local i8* @fileRead(i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
