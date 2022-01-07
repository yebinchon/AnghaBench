; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_page_usage_freelist.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_page_usage_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"freelist trunk #%d child of %d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"freelist leaf, child %d of trunk page %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @page_usage_freelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @page_usage_freelist(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %8, align 4
  br label %10

10:                                               ; preds = %59, %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 4
  %21 = icmp slt i32 %18, %20
  br label %22

22:                                               ; preds = %17, %13, %10
  %23 = phi i1 [ false, %13 ], [ false, %10 ], [ %21, %17 ]
  br i1 %23, label %24, label %64

24:                                               ; preds = %22
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @page_usage_msg(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 4
  %34 = call i8* @fileRead(i32 %32, i32 %33)
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @decodeInt32(i8* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = call i32 @decodeInt32(i8* %38)
  store i32 %39, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %56, %24
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 %46, 4
  %48 = add nsw i32 %47, 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = call i32 @decodeInt32(i8* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @page_usage_msg(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @sqlite3_free(i8* %60)
  %62 = load i32, i32* %2, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %10

64:                                               ; preds = %22
  ret void
}

declare dso_local i32 @page_usage_msg(i32, i8*, i32, i32) #1

declare dso_local i8* @fileRead(i32, i32) #1

declare dso_local i32 @decodeInt32(i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
