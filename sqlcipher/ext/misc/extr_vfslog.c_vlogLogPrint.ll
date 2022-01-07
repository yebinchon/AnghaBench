; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogLogPrint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogLogPrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\22%.*w\22\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%lld,%lld,%s,%d,%s,%s,%s,%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i8*, i32, i32, i8*, i32)* @vlogLogPrint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlogLogPrint(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [40 x i8], align 16
  %18 = alloca [40 x i8], align 16
  %19 = alloca [2000 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = icmp eq %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %8
  br label %67

23:                                               ; preds = %8
  %24 = load i32, i32* %13, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i64 0, i64 0
  %28 = load i32, i32* %13, align 4
  %29 = call i32 (i32, i8*, i8*, i32, ...) @sqlite3_snprintf(i32 40, i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %31, align 16
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* %14, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = getelementptr inbounds [40 x i8], [40 x i8]* %18, i64 0, i64 0
  %37 = load i32, i32* %14, align 4
  %38 = call i32 (i32, i8*, i8*, i32, ...) @sqlite3_snprintf(i32 40, i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %41

39:                                               ; preds = %32
  %40 = getelementptr inbounds [40 x i8], [40 x i8]* %18, i64 0, i64 0
  store i8 0, i8* %40, align 16
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i8*, i8** %15, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds [2000 x i8], [2000 x i8]* %19, i64 0, i64 0
  %46 = load i8*, i8** %15, align 8
  %47 = call i32 (i32, i8*, i8*, i32, ...) @sqlite3_snprintf(i32 2000, i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 1996, i8* %46)
  br label %50

48:                                               ; preds = %41
  %49 = getelementptr inbounds [2000 x i8], [2000 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %49, align 16
  br label %50

50:                                               ; preds = %48, %44
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i64 0, i64 0
  %63 = getelementptr inbounds [40 x i8], [40 x i8]* %18, i64 0, i64 0
  %64 = getelementptr inbounds [2000 x i8], [2000 x i8]* %19, i64 0, i64 0
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %55, i8* %56, i32 %61, i8* %62, i8* %63, i8* %64, i32 %65)
  br label %67

67:                                               ; preds = %50, %22
  ret void
}

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i8*, i32, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
