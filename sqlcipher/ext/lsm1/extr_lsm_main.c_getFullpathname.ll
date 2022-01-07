; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_getFullpathname.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_getFullpathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i8*, i8*, i32*)* }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8**)* @getFullpathname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getFullpathname(%struct.TYPE_6__* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %37, %3
  %12 = load i32, i32* %9, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_6__*, i8*, i8*, i32*)*, i32 (%struct.TYPE_6__*, i8*, i8*, i32*)** %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 %15(%struct.TYPE_6__* %16, i8* %17, i8* %18, i32* %9)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %11
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @lsmReallocOrFreeRc(%struct.TYPE_6__* %24, i8* %25, i32 %26, i32* %10)
  store i8* %27, i8** %8, align 8
  br label %28

28:                                               ; preds = %23, %11
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @LSM_OK, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %11, label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @LSM_OK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @lsmFree(%struct.TYPE_6__* %44, i8* %45)
  store i8* null, i8** %8, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i8*, i8** %8, align 8
  %49 = load i8**, i8*** %6, align 8
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %10, align 4
  ret i32 %50
}

declare dso_local i8* @lsmReallocOrFreeRc(%struct.TYPE_6__*, i8*, i32, i32*) #1

declare dso_local i32 @lsmFree(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
