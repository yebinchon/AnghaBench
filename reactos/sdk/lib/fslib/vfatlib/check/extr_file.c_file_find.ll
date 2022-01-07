; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_file.c_file_find.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_file.c_file_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32, i64 }

@DELETED_FLAG = common dso_local global i8 0, align 1
@MSDOS_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__** (%struct.TYPE_4__**, i8*)* @file_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__** @file_find(%struct.TYPE_4__** %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %7 = icmp ne %struct.TYPE_4__** %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %2
  store %struct.TYPE_4__** null, %struct.TYPE_4__*** %3, align 8
  br label %77

13:                                               ; preds = %8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @DELETED_FLAG, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %45, %20
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i64, i64* @MSDOS_NAME, align 8
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @strncmp(i64 %30, i8* %32, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %25
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__** %44, %struct.TYPE_4__*** %3, align 8
  br label %77

45:                                               ; preds = %37, %25
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store %struct.TYPE_4__** %48, %struct.TYPE_4__*** %4, align 8
  br label %21

49:                                               ; preds = %21
  store %struct.TYPE_4__** null, %struct.TYPE_4__*** %3, align 8
  br label %77

50:                                               ; preds = %13
  br label %51

51:                                               ; preds = %72, %50
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* @MSDOS_NAME, align 8
  %62 = call i32 @strncmp(i64 %59, i8* %60, i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %55
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__** %71, %struct.TYPE_4__*** %3, align 8
  br label %77

72:                                               ; preds = %64, %55
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store %struct.TYPE_4__** %75, %struct.TYPE_4__*** %4, align 8
  br label %51

76:                                               ; preds = %51
  store %struct.TYPE_4__** null, %struct.TYPE_4__*** %3, align 8
  br label %77

77:                                               ; preds = %76, %70, %49, %43, %12
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  ret %struct.TYPE_4__** %78
}

declare dso_local i32 @strncmp(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
