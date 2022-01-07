; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_snippetOffsetText.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_snippetOffsetText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.snippetMatch* }
%struct.snippetMatch = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @snippetOffsetText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snippetOffsetText(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [200 x i8], align 16
  %7 = alloca %struct.snippetMatch*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %61

13:                                               ; preds = %1
  %14 = call i32 @initStringBuffer(i32* %5)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %51, %13
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load %struct.snippetMatch*, %struct.snippetMatch** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %24, i64 %26
  store %struct.snippetMatch* %27, %struct.snippetMatch** %7, align 8
  %28 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  store i8 32, i8* %28, align 16
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 %32
  %34 = load %struct.snippetMatch*, %struct.snippetMatch** %7, align 8
  %35 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.snippetMatch*, %struct.snippetMatch** %7, align 8
  %38 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snippetMatch*, %struct.snippetMatch** %7, align 8
  %41 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snippetMatch*, %struct.snippetMatch** %7, align 8
  %44 = getelementptr inbounds %struct.snippetMatch, %struct.snippetMatch* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sqlite3_snprintf(i32 199, i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i32 %45)
  %47 = getelementptr inbounds [200 x i8], [200 x i8]* %6, i64 0, i64 0
  %48 = call i32 @append(i32* %5, i8* %47)
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %21
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %15

54:                                               ; preds = %15
  %55 = call i32 @stringBufferData(i32* %5)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = call i32 @stringBufferLength(i32* %5)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %12
  ret void
}

declare dso_local i32 @initStringBuffer(i32*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @append(i32*, i8*) #1

declare dso_local i32 @stringBufferData(i32*) #1

declare dso_local i32 @stringBufferLength(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
