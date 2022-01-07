; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_task_alloc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_task_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@MAXNAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32, i8*, i8*, i32)* @zvol_task_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @zvol_task_alloc(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 36
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %66

18:                                               ; preds = %4
  %19 = load i32, i32* @KM_SLEEP, align 4
  %20 = call %struct.TYPE_4__* @kmem_zalloc(i32 20, i32 %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 47)
  store i8* %28, i8** %11, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %18
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = add nsw i64 %40, 1
  br label %45

42:                                               ; preds = %18
  %43 = load i32, i32* @MAXNAMELEN, align 4
  %44 = sext i32 %43 to i64
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi i64 [ %41, %35 ], [ %44, %42 ]
  %47 = trunc i64 %46 to i32
  %48 = call i32 @strlcpy(i32 %31, i8* %32, i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* @MAXNAMELEN, align 4
  %54 = call i32 @strlcpy(i32 %51, i8* %52, i32 %53)
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @MAXNAMELEN, align 4
  %63 = call i32 @strlcpy(i32 %60, i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %45
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %5, align 8
  br label %66

66:                                               ; preds = %64, %17
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %67
}

declare dso_local %struct.TYPE_4__* @kmem_zalloc(i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
