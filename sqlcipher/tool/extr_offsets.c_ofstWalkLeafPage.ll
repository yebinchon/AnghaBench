; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_offsets.c_ofstWalkLeafPage.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_offsets.c_ofstWalkLeafPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"# overflow rowid %lld\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"rowid %12lld size %5d offset %8d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @ofstWalkLeafPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofstWalkLeafPage(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [200 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = call i32 @ofst2byte(%struct.TYPE_6__* %14, i32 3)
  store i32 %15, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %83, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %86

20:                                               ; preds = %16
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %22, 2
  %24 = add nsw i32 8, %23
  %25 = call i32 @ofst2byte(%struct.TYPE_6__* %21, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = call i8* @ofstVarint(%struct.TYPE_6__* %26, i32* %5)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = call i8* @ofstVarint(%struct.TYPE_6__* %29, i32* %5)
  store i8* %30, i8** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 35
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %20
  %38 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 (i32, i8*, i8*, i8*, ...) @sqlite3_snprintf(i32 200, i8* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %42 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %83

43:                                               ; preds = %20
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = call i8* @ofstVarint(%struct.TYPE_6__* %45, i32* %5)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %65, %43
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = call i8* @ofstVarint(%struct.TYPE_6__* %58, i32* %5)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @ofstSerialSize(i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %51

68:                                               ; preds = %51
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = call i8* @ofstVarint(%struct.TYPE_6__* %69, i32* %5)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ofstSerialSize(i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @ofstInFile(%struct.TYPE_6__* %77, i32 %78)
  %80 = call i32 (i32, i8*, i8*, i8*, ...) @sqlite3_snprintf(i32 200, i8* %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %75, i32 %76, i32 %79)
  %81 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %82 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %68, %37
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %16

86:                                               ; preds = %16
  ret void
}

declare dso_local i32 @ofst2byte(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @ofstVarint(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @ofstSerialSize(i32) #1

declare dso_local i32 @ofstInFile(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
